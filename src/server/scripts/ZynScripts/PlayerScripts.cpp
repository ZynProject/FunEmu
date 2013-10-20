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

        }

        void OnPlayerKilledByCreature(Creature* killer, Player* killed)
        {

        }

        void OnLevelChanged(Player* player, uint8 newLevel)
        {

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
                    plr->SetPower(POWER_MANA, winner->GetMaxPower(POWER_MANA));

                plr->RemoveArenaSpellCooldowns();
                plr->SetHealth(looser->GetMaxHealth());
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
