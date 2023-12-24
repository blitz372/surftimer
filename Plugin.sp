#include <sourcemod>
 
public Plugin myinfo =
{
	name = "My First Plugin",
	author = "Jack Maysuik",
	description = "My first plugin ever",
	version = "1.0",
	url = "http://www.sourcemod.net/"
};

 
public void OnPluginStart()
{
	RegAdminCmd("sm_myslap", Command_MySlap, ADMFLAG_SLAY);
}

public Action Command_MySlap(int client, int args)
{
    PrintToServer("Hello world");
    return Plugin_Handled;
}

public Action OnPlayerRunCmd(int client, int &buttons, int &impulse, float vel[3], float angles[3], int &weapon, int &subtype, int &cmdnum, int &tickcount, int &seed, int mouse[2])
{
    PrintToConsole(client, "Hey there!");
    return Plugin_Continue;
}