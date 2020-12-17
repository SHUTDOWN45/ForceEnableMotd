#include <sourcemod>

#define PLUGIN_AUTHOR "SHUTDOWN"
#define PLUGIN_VERSION "1.0.0"

public Plugin:myinfo =
{
	name = "Force Enable Motd",
	author = PLUGIN_AUTHOR,
	description = "Forces all players to activate motd on the server, except admins",
	version = PLUGIN_VERSION,
	url = "https://github.com/SHUTDOWN45/ForceEnableMotd"
}

public OnClientPostAdminCheck(client)
{
	if(GetUserAdmin(client) != INVALID_ADMIN_ID)
	{
 		ClientCommand(client, "cl_disablehtmlmotd 1"); // ADMIN
	}
	else
	{
 		ClientCommand(client, "cl_disablehtmlmotd 0"); // PLAYERS
	} 
}