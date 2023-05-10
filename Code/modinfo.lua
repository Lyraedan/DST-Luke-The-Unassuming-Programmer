-- This information tells other players more about the mod
name = "Luke"
description = "Stats\nHealth: 150\nHunger: 150\nSanity: 120\nFear:100\n\nPerks\n*Unintimidating to animals (especially birds) unless feared\n*Used to eating in a dark, moldy flat\n*Dislikes bugs, sleeping and the sea"
author = "Matilde, ItsLuke"
version = "1.1.0" -- This is the version of the template. Change it to your own number.

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = ""

-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true

-- Not compatible with Don't Starve
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

-- Character mods are required by all clients
all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

priority = 3

-- The mod's tags displayed on the server list
server_filter_tags = {
"character",
}

configuration_options =
{	
	{
		name = "luke_playfeargainsfx",
		label = "Play sound on fear gain",
		options =	{
						{description = "Off", data = "default"},
						{description = "On", data = "on"},
					},

		default = "on",
	
	},

}
