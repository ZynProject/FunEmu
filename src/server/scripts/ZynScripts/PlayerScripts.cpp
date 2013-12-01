#include "ObjectMgr.h"
#include "Creature.h"
#include "World.h"
#include "Guild.h"

class ZynPlayerScripts: public PlayerScript
{
    public:
        ZynPlayerScripts() : PlayerScript("ZynPlayerScripts") { }
        /*
        void OnLogin(Player* player)
        {

        }

        void OnLogout(Player* player)
        {

        }

        void OnPVPKill(Player* killer, Player* killed)
        {

        }
        void OnCreatureKill(Player* killer, Creature* killed)
        {
        }
        void OnPlayerKilledByCreature(Creature* killer, Player* killed)
        {

        }
        */
        void OnLevelChanged(Player* player, uint8 newLevel)
        {
            if (sWorld->getBoolConfig(CONFIG_AUTO_SPELL_LEARN_ENABLE))
            {
                AutoLearnSpellList spellList = sObjectMgr->GetSpellList(player->getClass(), newLevel);
                AutoLearnSpellList::const_iterator itr;

                for (itr = spellList.begin(); itr != spellList.end(); ++itr)
                    player->learnSpell((*itr), false);
            }
        }
        /*
        void OnFreeTalentPointsChanged(Player* player, uint32 points)
        {

        }

        void OnTalentsReset(Player* player, bool no_cost)
        {

        }
        
        void OnMoneyChanged(Player* player, int32& amount)
        {
            if (amount > 0)
            {
                if (sWorld->getBoolConfig(CONFIG_GUILD_LEVELING_ENABLE))
                {
                    Guild* guild = player->GetGuild();
                    if (guild->GetLevel() < 3) 
                        return;
                    uint64 gain = ceil(amount*sWorld->getFloatConfig(CONFIG_GUILD_MONEYMODIFIER));
                    guild->HandleMemberDepositMoney(player->GetSession(), gain);
                }
            }
        }
        */
        void OnGiveXP(Player* player, uint32& amount, Unit* victim)
        {
            if (!sWorld->getBoolConfig(CONFIG_GUILD_LEVELING_ENABLE)) 
                return;
            Guild* guild = player->GetGuild();
            if (!guild)
                return;
            uint32 _amount = ceil((amount * sWorld->getFloatConfig(CONFIG_GUILD_XPMODIFIER)));
            guild->GainXP(_amount, player);
        }

        /*
        void OnReputationChange(Player* player, uint32 factionID, int32& standing, bool incremental)
        {
            
        }
        
        
        void OnDuelRequest(Player* target, Player* challenger)
        {

        }

        void OnDuelStart(Player* player1, Player* player2)
        {

        }
        */
        void OnDuelEnd(Player* winner, Player* loser, DuelCompleteType type)
        {
            if (type != DUEL_WON)
                return;

            Player* plr = winner;
            for (uint8 i = 0; i < 2; i++)
            {
                if (plr->getPowerType() == POWER_MANA)
                    plr->SetPower(POWER_MANA, plr->GetMaxPower(POWER_MANA));

                plr->RemoveArenaSpellCooldowns();
                plr->SetHealth(plr->GetMaxHealth());
                plr = loser;
            }
        }
        /*
        //Say / Yell
        void OnChat(Player* player, uint32 type, uint32 lang, std::string msg)
        {

        }

        //Whisper
        void OnChat(Player* player, uint32 type, uint32 lang, std::string msg, Player* receiver)
        {

        }

        //Gruppe
        void OnChat(Player* player, uint32 type, uint32 lang, std::string msg, Group* group)
        {

        }

        //Gilde
        void OnChat(Player* player, uint32 type, uint32 lang, std::string msg, Guild* guild)
        {

        }

        //Channel
        void OnChat(Player* player, uint32 type, uint32 lang, std::string msg, Channel* channel)
        {

        }*/
};

void AddSC_ZynPlayerScripts()
{
    new ZynPlayerScripts();
}
