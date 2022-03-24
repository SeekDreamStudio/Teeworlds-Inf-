/* (c) Magnus Auvinen. See licence.txt in the root of the distribution for more information. */
/* If you are missing that file, acquire a complete release at teeworlds.com.                */
#include "infplus.h"

#include <cstdio>

#include <engine/shared/config.h>
#include <engine/shared/protocol.h>
#include <game/server/gamecontext.h>

CGameControllerMOD::CGameControllerMOD(class CGameContext *pGameServer)
: IGameController(pGameServer)
{
	m_pGameType = "Inf++";
	m_LastZombie = 1;
}

void CGameControllerMOD::Tick()
{
	IGameController::Tick();
}

void CGameControllerMOD::OnCharacterSpawn(CCharacter *pChr) {
    pChr->IncreaseHealth(10);
    pChr->GiveWeapon(WEAPON_HAMMER, -1);
    if (pChr->GetPlayer()->Infected())
        pChr->SetWeapon(WEAPON_HAMMER);
    else
        pChr->GiveWeapon(WEAPON_GUN, 10);
}

void CGameControllerMOD::PostReset()
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
