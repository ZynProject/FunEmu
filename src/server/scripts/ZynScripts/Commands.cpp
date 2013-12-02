#include "ScriptMgr.h"
#include "ObjectMgr.h"
#include "MapManager.h"
#include "Chat.h"
#include "Group.h"
#include "RBAC.h"
#include "Language.h"
#include "Guild.h"
#include "AccountMgr.h"
#include "World.h"
#include "Player.h"
#include "Opcodes.h"
#include "Creature.h"
#include "ObjectAccessor.h"


class ZynCommandScripts : public CommandScript
{
public:
    ZynCommandScripts() : CommandScript("ZynCommands"){}
    ChatCommand* GetCommands() const
    {
        static ChatCommand DonatorCommandTable[] =
        {
            { "port", rbac::RBAC_PERM_COMMAND_DONATOR_PORT, false, &HandleDonatorPortCommand, "", NULL },
            { "craftbonus", rbac::RBAC_PERM_COMMAND_DONATOR_CRAFTBONUS, false, &HandleDonatorCraftBonusCommand, "", NULL },
            { NULL, 0, false, NULL, "", NULL }
        };

        static ChatCommand GuildCommandTable[] =
        {
            { "info", rbac::RBAC_PERM_COMMAND_GXP_INFO, false, &HandleGuildInfoCommand, "", NULL },
            { "mobil", rbac::RBAC_PERM_COMMAND_GXP_MOBIL, false, &HandleGuildMobilCommand, "", NULL },
            { "buff", rbac::RBAC_PERM_COMMAND_GXP_BUFF, false, &HandleGuildBuffCommand, "", NULL },
            { "summon", rbac::RBAC_PERM_COMMAND_GXP_SUMMON, false, &HandleGuildSummonCommand, "", NULL },
            { "rezz", rbac::RBAC_PERM_COMMAND_GXP_REZZ, false, &HandleGuildRezzCommand, "", NULL },
            { "cooldown", rbac::RBAC_PERM_COMMAND_GXP_COOLDOWN, false, &HandleGuildCooldownCommand, "", NULL },
            { "respawn", rbac::RBAC_PERM_COMMAND_GXP_RESPAWN, false, &HandleGuildRespawnCommand, "", NULL },
            { NULL, 0, false, NULL, "", NULL }
        };

        static ChatCommand ZynCommandTable[] =
        {
            { "donator", rbac::RBAC_PERM_COMMAND_DONATOR, true, NULL, "", DonatorCommandTable },
            { "gxp", rbac::RBAC_PERM_COMMAND_GXP, true, NULL, "", GuildCommandTable },
            { NULL, 0, false, NULL, "", NULL }
        };
        return ZynCommandTable;
    }

    static bool HandleDonatorPortCommand(ChatHandler* handler, const char* args)
    {   
        Player* me = handler->GetSession()->GetPlayer();
        DonatorPortTPL const* tele = handler->extractDonatorPortFromLink((char*)args);
        //Check if command was typed correctly
        if (!tele)
        {
            handler->SendSysMessage(LANG_COMMAND_TELE_NOTFOUND);
            handler->SetSentErrorMessage(true);
            return false;
        }
        MapEntry const* map = sMapStore.LookupEntry(tele->mapId);
      
        //Command unuseable in Combat       
        if (me->IsInCombat())
        {
            handler->PSendSysMessage(LANG_YOU_IN_COMBAT);
            handler->SetSentErrorMessage(true);
            return false;
        }
        //Command unuseable in BG/Arena
        if (me->GetMap()->IsBattlegroundOrArena())
        {
            handler->PSendSysMessage("You can't use this in BG/Arena");
            return false;
        }
        //Killing Flight
        if (me->IsInFlight())
        {
            me->GetMotionMaster()->MovementExpired();
            me->CleanupAfterTaxiFlight();
        }
        //Cannot teleport into BG/Arena
        if (!map || map->IsBattlegroundOrArena())
        {
            handler->SendSysMessage(LANG_CANNOT_TELE_TO_BG);
            handler->SetSentErrorMessage(true);
            return false;
        }
        //Command unuseable while dead
        if (!me->IsAlive()){
            //handler->PSendSysMessage("You can't do this while being dead.");
            return false;
        }
        //saved player
        
        me->SaveRecallPosition();
        me->TeleportTo(tele->mapId, tele->position_x, tele->position_y, tele->position_z, tele->orientation);
        return true;
    }

    static bool HandleDonatorCraftBonusCommand(ChatHandler* handler,const char* args)
    {
        Player* me = handler->GetSession()->GetPlayer();
        uint32 newSkill = 0;
        for (uint32 i = 1; i < sSkillLineStore.GetNumRows(); ++i)
        {
            SkillLineEntry const *SkillInfo = sSkillLineStore.LookupEntry(i);
            if (!SkillInfo)
                continue;

            if (SkillInfo->categoryId == SKILL_CATEGORY_SECONDARY)
                continue;

            if ((SkillInfo->categoryId != SKILL_CATEGORY_PROFESSION) || !SkillInfo->canLink)
                continue;

            const uint32 skillID = SkillInfo->id;
            if (me->HasSkill(skillID))
            {
                newSkill = me->GetPureSkillValue(skillID) + 50;
                if (newSkill > me->GetPureMaxSkillValue(skillID)){ newSkill = me->GetPureMaxSkillValue(skillID); }
                me->SetSkill(skillID, me->GetSkillStep(skillID), newSkill, me->GetPureMaxSkillValue(skillID));
            }
                
        }
        me->GetSession()->GetRBACData()->RevokePermission(rbac::RBAC_PERM_COMMAND_DONATOR_CRAFTBONUS, -1);
        return true;
    }

    static bool HandleGuildInfoCommand(ChatHandler* handler, const char* args)
    {
        Player* me = handler->GetSession()->GetPlayer();
        Guild* guild = me->GetGuild();
        if (!guild)
        {
            handler->SendSysMessage("Sie sind in keiner Gilde.");
            return false;
        }    
        GuildLevelNeededXPContainer container = sObjectMgr->GetGuildLevelNeededXP();
        uint8 level = guild->GetLevel();
        uint32 Xp = guild->GetXp();
        uint32 neededXP = container[level];
        float percent = neededXP*10 / Xp;
        uint32 out = ceil(percent);
        handler->SendSysMessage("==============");
        handler->PSendSysMessage("Das Gildenlevel ist %u.",level);
        handler->PSendSysMessage("Die Gilde hat %u/%u ( %u Prozent) Erfahrungspunkte.", Xp, neededXP, out);
        handler->SendSysMessage("==============");
        return true;
    }

    static bool HandleGuildMobilCommand(ChatHandler* handler, const char* args)
    {
        if (!sWorld->getBoolConfig(CONFIG_GUILD_LEVELING_ENABLE))
            return false;
        Player* me = handler->GetSession()->GetPlayer();
        Guild* guild = me->GetGuild();
        if (!guild)
        {
            handler->SendSysMessage("Sie sind in keiner Gilde.");
            return false;
        }
        if (guild->GetLevel() < 5)
        {
            handler->SendSysMessage("Ihr Gilde hat nicht das benötigte Level.");
            return false;
        }
        GameObject* vault = me->SummonGameObject(187299,me->GetPositionX(),me->GetPositionY()+1,me->GetPositionZ(),0,0,0,0,0,180); 
        vault->SetOwnerGUID(me->GetGUID());
        return true;
    }

    static bool HandleGuildBuffCommand(ChatHandler* handler, const char* args)
    {
        if (!sWorld->getBoolConfig(CONFIG_GUILD_LEVELING_ENABLE))
            return false;
        Player* me = handler->GetSession()->GetPlayer();
        Guild* guild = me->GetGuild();
        if (!guild)
        {
            handler->SendSysMessage("Sie sind in keiner Gilde.");
            return false;
        }
        if (guild->GetLevel() < 5)
        {
            handler->SendSysMessage("Ihr Gilde hat nicht das benötigte Level.");
            return false;
        }
        Group* group = me->GetGroup();
        if (!group)
        {
            handler->SendSysMessage("Ihr seid in keiner Gruppe.");
            return false;
        }
        if (me->GetGUID() != group->GetLeaderGUID()){
            handler->SendSysMessage("Ihr seid nicht der Gruppenleiter.");
            return false;
        }
        GroupReference* target = group->GetFirstMember(); 
        while (target)
        {
            me = target->GetSource();
            //INSERT BUFFLIST HERE:
            me->CastSpell(me, 48469);   //Mark of the Wild
            me->CastSpell(me, 58054);   //Blessing of Kings
            me->CastSpell(me, 58921);   //Machtwort - Seelenstärke
            me->CastSpell(me, 48073);   //Machtwort - Willensstärke
            me->CastSpell(me, 42999);   //Arcane Intelligence
            me->CastSpell(me, 48102);   //Scroll of Stamina
            me->CastSpell(me, 48104);   //Scroll of Spirit
            me->CastSpell(me, 58451);   //Scroll of Agility
            me->CastSpell(me, 58499);   //Scroll of Strength
            me->CastSpell(me, 48100);   //Scroll of Intelligence
            //END BUFFLIST
            target = target->next();
        }
        return true;
    }

    static bool HandleGuildSummonCommand(ChatHandler* handler, const char* args)
    {
        if (!sWorld->getBoolConfig(CONFIG_GUILD_LEVELING_ENABLE))
            return false;
        Player* me = handler->GetSession()->GetPlayer();
        Guild* guild = me->GetGuild();
        if (!guild)
        {
            handler->SendSysMessage("Sie sind in keiner Gilde.");
            return false;
        }
        if (guild->GetLevel() < 4)
        {
            handler->SendSysMessage("Ihr Gilde hat nicht das benötigte Level.");
            return false;
        }
        Group* group = me->GetGroup();
        if (!group)
        {
            handler->SendSysMessage("Ihr seid in keiner Gruppe.");
            return false;
        }
        if (me->GetGUID() != group->GetLeaderGUID()){
            handler->SendSysMessage("Ihr seid nicht der Gruppenleiter.");
            return false;
        }
        GroupReference* target = group->GetFirstMember();
        WorldLocation summon = WorldLocation(me->GetMapId(), me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
        while (target)
        {
            me = target->GetSource();
            me->TeleportTo(summon);
            target = target->next();
        }
        return true;
    }

    static bool HandleGuildRezzCommand(ChatHandler* handler, const char* args)
    {
        if (!sWorld->getBoolConfig(CONFIG_GUILD_LEVELING_ENABLE))
            return false;
        Player* me = handler->GetSession()->GetPlayer();
        Guild* guild = me->GetGuild();
        if (!guild)
        {
            handler->SendSysMessage("Sie sind in keiner Gilde.");
            return false;
        }
        if (guild->GetLevel() < 6)
        {
            handler->SendSysMessage("Ihr Gilde hat nicht das benötigte Level.");
            return false;
        }
        Group* group = me->GetGroup();
        if (!group)
        {
            handler->SendSysMessage("Ihr seid in keiner Gruppe.");
            return false;
        }
        if (me->GetGUID() != group->GetLeaderGUID()){
            handler->SendSysMessage("Ihr seid nicht der Gruppenleiter.");
            return false;
        }
        GroupReference* target = group->GetFirstMember();
        WorldLocation summon = WorldLocation(me->GetMapId(), me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
        bool allDead = false;
        while (target)
        {
            me = target->GetSource();
            allDead = me->isDead();
        }
        if (!allDead)
        {
            handler->SendSysMessage("Ihr habt noch Überlebende.");
            return false;
        }
        target = group->GetFirstMember();
        while (target)
        {
            me = target->GetSource();
            me->TeleportTo(summon);
            target = target->next();
        }
        target = group->GetFirstMember();
        while (target)
        {
            me = target->GetSource();
            me->setResurrectRequestData(me->GetGUID(), me->GetMapId(), me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetMaxHealth(), me->GetMaxPower(POWER_MANA));
            target = target->next();
        }
        return true;
    }

    static bool HandleGuildCooldownCommand(ChatHandler* handler, const char* args)
    {
        if (!sWorld->getBoolConfig(CONFIG_GUILD_LEVELING_ENABLE))
            return false;
        Player* me = handler->GetSession()->GetPlayer();
        Guild* guild = me->GetGuild();
        if (!guild)
        {
            handler->SendSysMessage("Sie sind in keiner Gilde.");
            return false;
        }
        if (guild->GetLevel() < 7)
        {
            handler->SendSysMessage("Ihr Gilde hat nicht das benötigte Level.");
            return false;
        }
        Group* group = me->GetGroup();
        if (!group)
        {
            handler->SendSysMessage("Ihr seid in keiner Gruppe.");
            return false;
        }
        if (me->GetGUID() != group->GetLeaderGUID()){
            handler->SendSysMessage("Ihr seid nicht der Gruppenleiter.");
            return false;
        }
        InstanceGroupBind* ID = group->GetBoundInstance(me->GetMap());
        if (ID->cooldown == 0)
        {
            handler->SendSysMessage("Ihr habt bereits alle Cooldown Möglichkeiten verbraucht.");
            return false;
        }
        ID->cooldown--;
        GroupReference* target = group->GetFirstMember();
        while (target)
        {
            me = target->GetSource();
            me->RemoveArenaSpellCooldowns();
        }
        return true;
    }

    static bool HandleGuildRespawnCommand(ChatHandler* handler, const char* args)
    {
        if (!sWorld->getBoolConfig(CONFIG_GUILD_LEVELING_ENABLE))
            return false;
        Player* me = handler->GetSession()->GetPlayer();
        Guild* guild = me->GetGuild();
        if (!guild)
        {
            handler->SendSysMessage("Sie sind in keiner Gilde.");
            return false;
        }
        if (guild->GetLevel() < 7)
        {
            handler->SendSysMessage("Ihr Gilde hat nicht das benötigte Level.");
            return false;
        }
        Group* group = me->GetGroup();
        if (!group)
        {
            handler->SendSysMessage("Ihr seid in keiner Gruppe.");
            return false;
        }
        if (me->GetGUID() != group->GetLeaderGUID()){
            handler->SendSysMessage("Ihr seid nicht der Gruppenleiter.");
            return false;
        }
        InstanceGroupBind* ID = group->GetBoundInstance(me->GetMap());
        if (ID->respawn == 0)
        {
            handler->SendSysMessage("Ihr habt bereits alle Respawn Möglichkeiten verbraucht.");
            return false;
        }
        Creature* target = ObjectAccessor::FindUnit(me->GetTarget())->ToCreature();
        if (!target)
        {
            handler->SendSysMessage("Ihr habt kein Ziel ausgewählt.");
            return false;
        }
        target->Respawn();
        return true;
    }
};

void AddSC_ZynCommandScripts()
{
    new ZynCommandScripts();
}