local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("luke_none", {
	assets = {
		Asset( "ANIM", "anim/luke_none.zip" ),
		Asset( "ANIM", "anim/ghost_luke_none.zip" ),
	},
	skins = {
		normal_skin = "luke_none",
		ghost_skin = "ghost_luke_none",
	},
	
	base_prefab = "luke",
	build_name_override = "luke_none",

	type = "base",
	rarity = "Character",

	skin_tags = {"LUKE", "CHARACTER", "BASE"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_luke_summervibes", {
	assets = {
		Asset( "ANIM", "anim/ms_luke_summervibes.zip" ),
		Asset( "ANIM", "anim/ms_ghost_luke_summervibes.zip" ),
	},
	skins = {
		normal_skin = "ms_luke_summervibes",
		ghost_skin = "ms_ghost_luke_summervibes",
	},
	
	base_prefab = "luke",
	build_name_override = "ms_luke_summervibes",

	type = "base",
	rarity = "ModMade",

	skin_tags = {"LUKE", "CHARACTER", "BASE", "SUMMERVIBES"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_luke_egg", {
	assets = {
		Asset( "ANIM", "anim/ms_luke_egg.zip" ),
		Asset( "ANIM", "anim/ghost_luke_none.zip" ),
	},
	skins = {
		normal_skin = "ms_luke_egg",
		ghost_skin = "ghost_luke_none",
	},
	
	base_prefab = "luke",
	build_name_override = "ms_luke_egg",

	type = "base",
	rarity = "ModMade",

	skin_tags = {"LUKE", "CHARACTER", "BASE", "EGG", "BALD"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_luke_hatless", {
	assets = {
		Asset( "ANIM", "anim/ms_luke_hatless.zip" ),
		Asset( "ANIM", "anim/ghost_luke_none.zip" ),
	},
	skins = {
		normal_skin = "ms_luke_hatless",
		ghost_skin = "ghost_luke_none",
	},
	
	base_prefab = "luke",
	build_name_override = "ms_luke_hatless",

	type = "base",
	rarity = "ModMade",

	skin_tags = {"LUKE", "CHARACTER", "BASE", "HATLESS"},
}))

return unpack(prefabs);