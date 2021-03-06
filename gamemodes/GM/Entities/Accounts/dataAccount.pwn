#if defined DATA_ACCOUNT_INCLUDED
	#endinput
#endif

#define DATA_ACCOUNT_INCLUDED

// =============================

#include <a_samp>
#include <YSI\y_hooks>

// =============================

enum E_ACCOUNT_INFOS {
	accSqlID,
	accNickname[MAX_PLAYER_NAME],
	accPassword[VERY_LONG_STR],
	accMail[254],
	accLogged,
	accSpawned,
	accIp[VERY_VERY_SHORT_STR]
}

// =============================

new gAccInfos[MAX_PLAYERS][E_ACCOUNT_INFOS];

// =============================

hook OnGameModeInit()
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		gAccInfos[i][accSqlID] = -1;
		/*gAccInfos[i][accNickname] = "";
		gAccInfos[i][accPassword] = "";
		gAccInfos[i][accMail] = "";*/
	}
}

hook OnPlayerConnect(playerid)
{
	ResetAccountVars(playerid);
}

// =============================

ResetAccountVars(playerid)
{
	gAccInfos[playerid][accSqlID] = -1;
	/*gAccInfos[playerid][accNickname] = "";
	gAccInfos[playerid][accPassword] = "";
	gAccInfos[playerid][accMail] = "";*/
}