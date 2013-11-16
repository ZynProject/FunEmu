#include "ScriptMgr.h"
#include "ObjectMgr.h"
#include "MapManager.h"
#include "Chat.h"
#include "Group.h"
#include "RBAC.h"
#include "Language.h"

class ZynCommandScripts : public CommandScript
{
public:
    ZynCommandScripts() : CommandScript("ZynCommands"){}
    ChatCommand* GetCommands() const
    {
        static ChatCommand DonatorCommandTable[] =
        {
            { "port", rbac::RBAC_PERM_COMMAND_DONATOR_PORT, false, &HandleZynPortCommand, "", NULL },
            { "craftbonus", rbac::RBAC_PERM_COMMAND_DONATOR_CRAFTBONUS, false, &HandleZynCraftBonusCommand, "", NULL },
            { NULL, 0, false, NULL, "", NULL }
        };
        static ChatCommand ZynCommandTable[] =
        {
            { "donator", rbac::RBAC_PERM_COMMAND_DONATOR, true, NULL, "", DonatorCommandTable },
            { NULL, 0, false, NULL, "", NULL }
        };
        return ZynCommandTable;
    }

    static bool HandleZynPortCommand(ChatHandler* handler, const char* args)
    {   
        Player* me = handler->GetSession()->GetPlayer();
        DonatorPortTPL const* tele = handler->extractDonatorPortFromLink((char*)args);
        MapEntry const* map = sMapStore.LookupEntry(tele->mapId);
       
        //Check if command was typed correctly
        if (!tele)
        {
            handler->SendSysMessage(LANG_COMMAND_TELE_NOTFOUND);
            handler->SetSentErrorMessage(true);
            return false;
        }

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
        if (me->isDead()){
            handler->PSendSysMessage("You can't do this while being dead.");
            return false;
        }
        //saved player
        
        me->SaveRecallPosition();
        me->TeleportTo(tele->mapId, tele->position_x, tele->position_y, tele->position_z, tele->orientation);
        return true;
    }
    static bool HandleZynCraftBonusCommand(ChatHandler* handler,const char* args)
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
};

void AddSC_ZynCommandScripts()
{
    new ZynCommandScripts();
}