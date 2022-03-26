/* (c) Magnus Auvinen. See licence.txt in the root of the distribution for more information. */
/* If you are missing that file, acquire a complete release at teeworlds.com.                */
#include "infplus.h"

#include <cstdio>

#include <engine/shared/config.h>
#include <engine/shared/protocol.h>
#include <game/server/gamecontext.h>

CGameControllerInfPP::CGameControllerInfPP(class CGameContext *pGameServer)
: IGameController(pGameServer)
{
	m_pGameType = "InfPlus+64Catch";
	m_LastZombie = 1;
}

void CGameControllerInfPP::Tick()
{
	IGameController::Tick();
	// Tick run this fuction

	int Humans = 0, Zombies = 0;
    for (int i = 0; i < MAX_CLIENTS; i ++) {
        CPlayer *pPlayer = GameServer()->m_apPlayers[i];
        if (!pPlayer)
            continue;

        if (pPlayer->GetTeam() == TEAM_SPECTATORS)
            return;

        if (pPlayer->IsZombie())
            Zombies ++;
        else
            Humans ++;
    }

    if (Humans + Zombies < 2) {
        m_SuddenDeath = true;
		DoWarmup(g_Config.m_InfInfectionDelay);
		if(m_GameOverTick != -1)StartRound();
		if(Server()->Tick() % 100 == 0)
		{
        	GameServer()->SendBroadcast("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAt least 2 players required to start playing", -1);
			GameServer()->m_Airstrikes = false;
		}
		return;
    } else if (m_SuddenDeath) {
        StartRound();
		CureAll();
		// Clear Broadcast
        GameServer()->SendBroadcast("", -1);
        return;
    }

	m_InfTick++;
	//FunEvent
	if(m_InfTick %3000 == 0 && m_GameOverTick == -1)
	{
		GameServer()->FunEvent();
	}
	//Airstrikes
	if(m_InfTick %10 == 0 && GameServer()->m_Airstrikes)
	{
		GameServer()->CreateAirstrikes();
	}
}

void CGameControllerInfPP::OnCharacterSpawn(CCharacter *pChr) {
    pChr->IncreaseHealth(10);
    pChr->GiveWeapon(WEAPON_HAMMER, -1);
    if (pChr->GetPlayer()->IsZombie())
        pChr->SetWeapon(WEAPON_HAMMER);
    else
        pChr->GiveWeapon(WEAPON_GUN, 10);
}

void CGameControllerInfPP::PostReset()
{
	for(int i = 0; i < MAX_CLIENTS; i++)
	{
		if(GameServer()->m_apPlayers[i])
		{
			GameServer()->m_apPlayers[i]->Respawn();
			GameServer()->m_apPlayers[i]->m_RespawnTick = Server()->Tick()+Server()->TickSpeed()/2;
		}
	}
}
