#include "ObjectMgr.h"
#include "Creature.h"
#include "World.h"

class ZynPlayerScripts: public PlayerScript
{
    public:
        ZynPlayerScripts() : PlayerScript("ZynPlayerScripts") { }

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
            CreatureSpecialRewards reward = sObjectMgr->GetSpecialReward(killed->GetEntry());
            if (reward.type >= CSR_TYPE_TITLE && reward.type <= CSR_TYPE_ARENA)
            {
                switch (reward.type)
                {
                    case CSR_TYPE_TITLE:
                    {
                        CharTitlesEntry const* title = sCharTitlesStore.LookupEntry(reward.param1);

                        if (!killer->HasTitle(title))
                            killer->SetTitle(title);

                        break;
                    }

                    case CSR_TYPE_ITEM:
                        killer->AddItem(reward.param1, reward.param2);
                        break;

                    case CSR_TYPE_HONOR:
                        killer->SetHonorPoints(killer->GetHonorPoints() + reward.param1);
                        break;

                    case CSR_TYPE_ARENA:
                        killer->SetArenaPoints(killer->GetArenaPoints() + reward.param1);
                        break;
                }
            }
        }

        void OnPlayerKilledByCreature(Creature* killer, Player* killed)
        {

        }

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

        void OnFreeTalentPointsChanged(Player* player, uint32 points)
        {

        }

        void OnTalentsReset(Player* player, bool no_cost)
        {

        }

        void OnMoneyChanged(Player* player, int64& amount)
        {

        }

        void OnGiveXP(Player* player, uint32& amount, Unit* victim)
        {

        }

        void OnReputationChange(Player* player, uint32 factionID, int32& standing, bool incremental)
        {

        }

        void OnDuelRequest(Player* target, Player* challenger)
        {

        }

        void OnDuelStart(Player* player1, Player* player2)
        {

        }

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

        }
};

void AddSC_ZynPlayerScripts()
{
    new ZynPlayerScripts();
}
