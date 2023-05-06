--[[
	--- This is Luke's speech file for Don't Starve Together ---
	Write your character's lines here.
	If you want to use another speech file as a base, or use a more up-to-date version, get them from data\databundles\scripts.zip\scripts\
	
	If you want to use quotation marks in a quote, put a \ before it.
	Example:
	"Like \"this\"."
]]
return {
	ACTIONFAIL =
	{
        APPRAISE =
        {
            NOTNOW = "I can't do that.",
        },
        REPAIR =
        {
            WRONGPIECE = "Why won't it work?",
        },
        BUILD =
        {
            MOUNTED = "Gotta get off this first.",
            HASPET = "I can't look after you too.",
			TICOON = "I'm too invested in my own Ticoon to follow another one.",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "Terrible idea.",
			GENERIC = "I can't shave that.",
			NOBITS = "Done.",
            REFUSE = "I refuse to shave",
            SOMEONEELSESBEEFALO = "I'm too lazy to shave someone else's beefalo.",
		},
		STORE =
		{
			GENERIC = "It's full.",
			NOTALLOWED = "That can't go in there.",
			INUSE = "Oi!",
            NOTMASTERCHEF = "My ability to cook is... lacklustre",
		},
        CONSTRUCT =
        {
            INUSE = "Someone beat me to it.",
            NOTALLOWED = "It won't fit... or will it?",
            EMPTY = "What I'm expected to build with nothing?",
            MISMATCH = "I'm stupid these are wrong.",
        },
		RUMMAGE =
		{
			GENERIC = "I can't do that.",
			INUSE = "Oi!",
            NOTMASTERCHEF = "My ability to cook is... lacklustre",
		},
		UNLOCK =
        {
        	WRONGKEY = "I can't do that.",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "It doesn't work... why?",
        	KLAUS = "AAAAHHHHH!",
			QUAGMIRE_WRONGKEY = "Why won't it fit?!",
        },
		ACTIVATE =
		{
			LOCKED_GATE = "The gate is locked.",
            HOSTBUSY = "Oi!",
            CARNIVAL_HOST_HERE = "I know that bastard's around here somewhere.",
            NOCARNIVAL = "Good riddence, those birds flew off.",
			EMPTY_CATCOONDEN = "It's empty.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDERS = "Dude, we need more players.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDING_SPOTS = "You may as well hide under a box.",
			KITCOON_HIDEANDSEEK_ONE_GAME_PER_DAY = "I'm too lazy for more then one game a day.",
		},
		OPEN_CRAFTING =
		{
            PROFESSIONALCHEF = "My ability to cook is... lacklustre",
			SHADOWMAGIC = "Seems safe, and by safe I mean not really.",
		},
        COOK =
        {
            GENERIC = "I am incapable of cooking",
            INUSE = "Oi!",
            TOOFAR = "Yes, I'll cook from over here...",
        },
        START_CARRAT_RACE =
        {
            NO_RACERS = "I'd like to thank you all for coming.",
        },

		DISMANTLE =
		{
			COOKING = "Who the bloody hell is cooking?",
			INUSE = "Oi!",
			NOTEMPTY = "It's full of crap!",
        },
        FISH_OCEAN =
		{
			TOODEEP = "This rod is shit.",
		},
        OCEAN_FISHING_POND =
		{
			WRONGGEAR = "I'd have better luck fishing with a paper bag.",
		},
        --wickerbottom specific action
        READ =
        {
            GENERIC = "only_used_by_waxwell_and_wicker",
            NOBIRDS = "only_used_by_waxwell_and_wicker",
            NOWATERNEARBY = "only_used_by_waxwell_and_wicker",
            TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
            WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
            NOFIRES =       "only_used_by_waxwell_and_wicker",
            NOSILVICULTURE = "only_used_by_waxwell_and_wicker",
            NOHORTICULTURE = "only_used_by_waxwell_and_wicker",
            NOTENTACLEGROUND = "only_used_by_waxwell_and_wicker",
            NOSLEEPTARGETS = "only_used_by_waxwell_and_wicker",
            TOOMANYBEES = "only_used_by_waxwell_and_wicker",
            NOMOONINCAVES = "only_used_by_waxwell_and_wicker",
            ALREADYFULLMOON = "only_used_by_waxwell_and_wicker",
        },

        GIVE =
        {
            GENERIC = "Guess I'll keep it then.",
            DEAD = "You won't be needing that anymore...",
            SLEEPING = "Wake up lieutenant!",
            BUSY = "Oi!",
            ABIGAILHEART = "I wonder if I can eat it instead?",
            GHOSTHEART = "Oooooo spooky ghost.",
            NOTGEM = "I am being retarded, this isn't a gem.",
            WRONGGEM = "I must be colour blind this isn't the right gem.",
            NOTSTAFF = "Maybe if I tape a rock on a stick and use my imagination it'll become a staff?",
            MUSHROOMFARM_NEEDSSHROOM = "I NEED SHROOOOOMS!!!",
            MUSHROOMFARM_NEEDSLOG = "Maybe I should give it one of my logs.",
            MUSHROOMFARM_NOMOONALLOWED = "I was never any good at botany...",
            SLOTFULL = "It's full what do you want me to do?",
            FOODFULL = "There's already a meal there. Perhaps I can eat it instead?",
            NOTDISH = "It won't eat that... I will if it won't.",
            DUPLICATE = "How did this happen? I'm smarter then this!",
            NOTSCULPTABLE = "Who do you think I am Bob Ross?",
            NOTATRIUMKEY = "Maybe I should learn how to lockpick...",
            CANTSHADOWREVIVE = "I GIVE YE LIFE!",
            WRONGSHADOWFORM = "Who built this?... Why?",
            NOMOON = "I can't see the moon... Probably for the best.",
			PIGKINGGAME_MESSY = "Ugh, I need to clean up.",
			PIGKINGGAME_DANGER = "No thanks, I choose life.",
			PIGKINGGAME_TOOLATE = "What's the point? It's too late.",
			CARNIVALGAME_INVALID_ITEM = "I should consider taping abit of rope onto a token",
			CARNIVALGAME_ALREADY_PLAYING = "Hurry the fuck up, I want to have a go.",
            SPIDERNOHAT = "I'm a dude, why are my pockets so small?",
            TERRARIUM_REFUSE = "Come on now you've played Terraria.",
            TERRARIUM_COOLDOWN = "This reminds me of the last time I played Terraria years ago.",
            NOTAMONKEY = "Sorry I don't speak Italian.",
            QUEENBUSY = "I don't like bees!",
        },
        GIVETOPLAYER =
        {
            FULL = "I bestow upon ye, garbage.",
            DEAD = "They won't be needing this anymore...",
            SLEEPING = "Wake up lieutenant!",
            BUSY = "Oi!",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "I bestow upon ye, multiple garbage.",
            DEAD = "They won't be needing this anymore...",
            SLEEPING = "Wake up lieutenant!",
            BUSY = "Oi!",
        },
        WRITE =
        {
            GENERIC = "Thank god I'm not Tiborn.",
            INUSE = "Hurry up!",
        },
        DRAW =
        {
            NOIMAGE = "Maybe I can draw a penis instead?",
        },
        CHANGEIN =
        {
            GENERIC = "I'm comfy as I am right now.",
            BURNING = "I maybe on fire, but at least I'll look good doing it.",
            INUSE = "Why can't multiple people use a waldrobe?",
            NOTENOUGHHAIR = "Oh no my receeding hairline has caught up to me.",
            NOOCCUPANT = "No one is using it.",
        },
        ATTUNE =
        {
            NOHEALTH = "Do you accept master card?",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "En garde!",
            INUSE = "Outta the way scrub!",
			SLEEPING = "Wake up you lazy fuck!",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "En garde!",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "How did this happen? I'm smarter then this!",
            CANTLEARN = "I am incapable of knowing this knowledge.",

            --MapRecorder/MapExplorer
            WRONGWORLD = "It must be some sort of Elvish, I can't read it.",

			--MapSpotRevealer/messagebottle
			MESSAGEBOTTLEMANAGER_NOT_FOUND = "Mate I can't see a thing.",--Likely trying to read messagebottle treasure map in caves

            STASH_MAP_NOT_FOUND = "Oh, East! I thought you said Weast.",-- Likely trying to read stash map  in world without stash
        },
        WRAPBUNDLE =
        {
            EMPTY = "It needs a wrap!",
        },
        PICKUP =
        {
			RESTRICTION = "I don't know how to use that.",
			INUSE = "Oi! My turn!",
            NOTMINE_SPIDER = "only_used_by_webber",
            NOTMINE_YOTC =
            {
                "OW, bastard bit me!",
            },
			NO_HEAVY_LIFTING = "only_used_by_wanda",
            FULL_OF_CURSES = "Are you mad!",
        },
        SLAUGHTER =
        {
            TOOFAR = "NO! Come back!",
        },
        REPLATE =
        {
            MISMATCH = "Wrong food...",
            SAMEDISH = "Wait... there's suppose to be only one.",
        },
        SAIL =
        {
        	REPAIR = "Holy shit! It works.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "Why did I attempt to row!",
            BAD_TIMING1 = "AAAAHHHH!",
            BAD_TIMING2 = "Why do I do this to myself?!",
        },
        LOWER_SAIL_FAIL =
        {
            "Argh!",
            "HELP!",
            "AAAAAHHHH!",
        },
        BATHBOMB =
        {
            GLASSED = "Do you not see the covering?",
            ALREADY_BOMBED = "What a waste it would be.",
        },
		GIVE_TACKLESKETCH =
		{
			DUPLICATE = "Already done this one.",
		},
		COMPARE_WEIGHABLE =
		{
            FISH_TOO_SMALL = "That would look stupid.",
            OVERSIZEDVEGGIES_TOO_SMALL = "That would look stupid.",
		},
        BEGIN_QUEST =
        {
            ONEGHOST = "only_used_by_wendy",
        },
		TELLSTORY =
		{
			GENERIC = "only_used_by_walter",
			NOT_NIGHT = "only_used_by_walter",
			NO_FIRE = "only_used_by_walter",
		},
        SING_FAIL =
        {
            SAMESONG = "only_used_by_wathgrithr",
        },
        PLANTREGISTRY_RESEARCH_FAIL =
        {
            GENERIC = "How did this happen? I'm smarter then this.",
            FERTILIZER = "I don't want to know.",
        },
        FILL_OCEAN =
        {
            UNSUITABLE_FOR_PLANTS = "Sure would be great if I knew anything about plants.",
        },
        POUR_WATER =
        {
            OUT_OF_WATER = "Out of water.",
        },
        POUR_WATER_GROUNDTILE =
        {
            OUT_OF_WATER = "Out of water.",
        },
        USEITEMON =
        {
            --GENERIC = "I can't use this on that!",

            --construction is PREFABNAME_REASON
            BEEF_BELL_INVALID_TARGET = "I can't.",
            BEEF_BELL_ALREADY_USED = "Who the hell stole my beefalo?",
            BEEF_BELL_HAS_BEEF_ALREADY = "I'd love a herd but it'd be unfair.'",
        },
        HITCHUP =
        {
            NEEDBEEF = "If I had a bell I could get a beefalo.",
            NEEDBEEF_CLOSER = "Dude, I gotta move closer",
            BEEF_HITCHED = "Bish bash, he's ready to smash!",
            INMOOD = "If experience has taught me anything its to come back later.",
        },
        MARK =
        {
            ALREADY_MARKED = "I've already chosen.",
            NOT_PARTICIPANT = "I don't care.",
        },
        YOTB_STARTCONTEST =
        {
            DOESNTWORK = "Whatever.",
            ALREADYACTIVE = "Guess he is busy.",
        },
        YOTB_UNLOCKSKIN =
        {
            ALREADYKNOWN = "I know this already!",
        },
        CARNIVALGAME_FEED =
        {
            TOO_LATE = "I'm too late!",
        },
        HERD_FOLLOWERS =
        {
            WEBBERONLY = "Listen to me!",
        },
        BEDAZZLE =
        {
            BURNING = "only_used_by_webber",
            BURNT = "only_used_by_webber",
            FROZEN = "only_used_by_webber",
            ALREADY_BEDAZZLED = "only_used_by_webber",
        },
        UPGRADE =
        {
            BEDAZZLED = "only_used_by_webber",
        },
		CAST_POCKETWATCH =
		{
			GENERIC = "only_used_by_wanda",
			REVIVE_FAILED = "only_used_by_wanda",
			WARP_NO_POINTS_LEFT = "only_used_by_wanda",
			SHARD_UNAVAILABLE = "only_used_by_wanda",
		},
        DISMANTLE_POCKETWATCH =
        {
            ONCOOLDOWN = "only_used_by_wanda",
        },

        ENTER_GYM =
        {
            NOWEIGHT = "only_used_by_wolfang",
            UNBALANCED = "only_used_by_wolfang",
            ONFIRE = "only_used_by_wolfang",
            SMOULDER = "only_used_by_wolfang",
            HUNGRY = "only_used_by_wolfang",
            FULL = "only_used_by_wolfang",
        },

        APPLYMODULE =
        {
            COOLDOWN = "only_used_by_wx78",
            NOTENOUGHSLOTS = "only_used_by_wx78",
        },
        REMOVEMODULES =
        {
            NO_MODULES = "only_used_by_wx78",
        },
        CHARGE_FROM =
        {
            NOT_ENOUGH_CHARGE = "only_used_by_wx78",
            CHARGE_FULL = "only_used_by_wx78",
        },

        HARVEST =
        {
            DOER_ISNT_MODULE_OWNER = "It doesn't care.",
        },

        -- Shipwrecked actions
        REPAIRBOAT = 
		{
			GENERIC = "It's floating just fine right now.",
		},
		EMBARK = 
		{
			INUSE = "I have been abandoned!",
		},
		INSPECTBOAT = 
		{
			INUSE = "It is in use right now."
		},
		OPEN_CRAFTING  = 
		{
			FLOODED = "It's flooded!",
		},
		FISH_FLOTSAM = {
			TOOFAR = "My arms aren't that long!",
		},
    },

	ANNOUNCE_CANNOT_BUILD =
	{
		NO_INGREDIENTS = "I need more garbage.",
		NO_TECH = "I don't know how to do this.",
		NO_STATION = "I need to get home first.",
	},

	ACTIONFAIL_GENERIC = "Why can't I do that.",
	ANNOUNCE_BOAT_LEAK = "Oh fuck!",
	ANNOUNCE_BOAT_SINK = "AAAAHHHH!",
	ANNOUNCE_DIG_DISEASE_WARNING = "It looks better already.", --removed
	ANNOUNCE_PICK_DISEASE_WARNING = "Uh, is it supposed to smell like that?", --removed
	ANNOUNCE_ADVENTUREFAIL = "That went terribly",
    ANNOUNCE_MOUNT_LOWHEALTH = "Oh no... Anyway.",

    --waxwell and wickerbottom specific strings
    ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_NOWATERNEARBY = "only_used_by_waxwell_and_wicker",

    --wolfgang specific
    ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
    ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
    ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_EXITGYM = {
        MIGHTY = "only_used_by_wolfang",
        NORMAL = "only_used_by_wolfang",
        WIMPY = "only_used_by_wolfang",
    },

	ANNOUNCE_BEES = "AGHHHH BEES!!!",
	ANNOUNCE_BOOMERANG = "Haha boomerang",
	ANNOUNCE_CHARLIE = "I have a sense of impending doom.",
	ANNOUNCE_CHARLIE_ATTACK = "UwU",
	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific
	ANNOUNCE_COLD = "Bloody hell it's freezing!",
	ANNOUNCE_HOT = "I am perishing in the heat.",
	ANNOUNCE_CRAFTING_FAIL = "How did it come to this.",
	ANNOUNCE_DEERCLOPS = "COME. GET. SOME.",
	ANNOUNCE_CAVEIN = "That's not a bolder, it's a rock.",
	ANNOUNCE_ANTLION_SINKHOLE =
	{
		"Duck and cover!",
		"AAAAAHHHH!",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "Take this and don't break our stuff.",
        "Have this.",
	},
	ANNOUNCE_SACREDCHEST_YES = "I guess I'm worthy.",
	ANNOUNCE_SACREDCHEST_NO = "It didn't like that.",
    ANNOUNCE_DUSK = "Hello darkness my old friend.",

    --wx-78 specific
    ANNOUNCE_CHARGE = "only_used_by_wx78",
	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

	ANNOUNCE_EAT =
	{
		GENERIC = "Delicious.",
		PAINFUL = "I've had better.",
		SPOILED = "Eh good enough.",
		STALE = "Crunchy.",
		INVALID = "I can't eat that.",
        YUCKY = "Not even I'll eat that.",

        --Warly specific ANNOUNCE_EAT strings
		COOKED = "only_used_by_warly",
		DRIED = "only_used_by_warly",
        PREPARED = "only_used_by_warly",
        RAW = "only_used_by_warly",
		SAME_OLD_1 = "only_used_by_warly",
		SAME_OLD_2 = "only_used_by_warly",
		SAME_OLD_3 = "only_used_by_warly",
		SAME_OLD_4 = "only_used_by_warly",
        SAME_OLD_5 = "only_used_by_warly",
		TASTY = "only_used_by_warly",
    },

    ANNOUNCE_ENCUMBERED =
    {
        "Huff... Pant...",
        "Argh!",
        "Just... like... the gym...",
        "Hngh...!",
        "Pant... Pant...",
        "This is... heavy...",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING =
    {
		"Uh oh.",
		"What's that?!",
	},
    ANNOUNCE_RUINS_RESET = "Hello again monsters, want to appeal to my sadistic side again?",
    ANNOUNCE_SNARED = "Sharp, but not as sharp as my knife",
    ANNOUNCE_SNARED_IVY = "Never thought I'd be beaten up by a plant!",
    ANNOUNCE_REPELLED = "Can't you see it's shielded!",
	ANNOUNCE_ENTER_DARK = "I once again, can't see. This is not unusual.",
	ANNOUNCE_ENTER_LIGHT = "Don't go towards the light!... Wait.",
	ANNOUNCE_FREEDOM = "AMERICA, FUCK YEAH!",
	ANNOUNCE_HIGHRESEARCH = "This'll be helpful.",
	ANNOUNCE_HOUNDS = "Dogs.",
	ANNOUNCE_WORMS = "That doesn't feel good.",
	ANNOUNCE_HUNGRY = "As per usual I am hungry.",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Come out and let me murder you!",
	ANNOUNCE_HUNT_LOST_TRAIL = "Dammit I'm not Norman Reedus.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "I fucking hate the rain man.",
	ANNOUNCE_INV_FULL = "I need more pockets...",
	ANNOUNCE_KNOCKEDOUT = "I got bonked!!!",
	ANNOUNCE_LOWRESEARCH = "I nat one'd",
	ANNOUNCE_MOSQUITOS = "Aaah! Bugs!",
    ANNOUNCE_NOWARDROBEONFIRE = "It appears to be on fire.",
    ANNOUNCE_NODANGERGIFT = "Hold up gotta murder this monster first.",
    ANNOUNCE_NOMOUNTEDGIFT = "If I was polite I'd get off my beefalo first.",
	ANNOUNCE_NODANGERSLEEP = "As much as I want to die. Now is not the time.",
	ANNOUNCE_NODAYSLEEP = "Dude I have insomnia why am I trying to sleep?",
	ANNOUNCE_NODAYSLEEP_CAVE = "Dude I have insomnia why would I be tired?",
	ANNOUNCE_NOHUNGERSLEEP = "Dude I have insomnia why am I trying to sleep?",
	ANNOUNCE_NOSLEEPONFIRE = "Dude I have insomnia why am I trying to sleep?",
    ANNOUNCE_NOSLEEPHASPERMANENTLIGHT = "only_used_by_wx78",
	ANNOUNCE_NODANGERSIESTA = "As much as I want to die. Now is not the time.",
	ANNOUNCE_NONIGHTSIESTA = "Dude I have insomnia why would I be tired?",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "Why the hell would I relax here?",
	ANNOUNCE_NOHUNGERSIESTA = "Why am I bothering with this?",
	ANNOUNCE_NO_TRAP = "Well, that was easy.",
	ANNOUNCE_PECKED = "Ow!",
	ANNOUNCE_QUAKE = "I conclude that, that was a quake.",
	ANNOUNCE_RESEARCH = "Pog!",
	ANNOUNCE_SHELTER = "This makes me wish I was back in the UK.",
	ANNOUNCE_THORNS = "Ow, fucking thorns!",
	ANNOUNCE_BURNT = "It appears I have spontaneously combusted.",
	ANNOUNCE_TORCH_OUT = "I guess I'll die now.",
	ANNOUNCE_THURIBLE_OUT = "It's out. Probably for the best",
	ANNOUNCE_FAN_OUT = "What a pile of garbage that was.",
    ANNOUNCE_COMPASS_OUT = "Hey look I'm Jack Sparrow now.",
	ANNOUNCE_TRAP_WENT_OFF = "Oops.",
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.",
	ANNOUNCE_WORMHOLE = "Was that gay?",
	ANNOUNCE_TOWNPORTALTELEPORT = "Nice.",
	ANNOUNCE_CANFIX = "\nI think I can fix this.",
	ANNOUNCE_ACCOMPLISHMENT = "Ha Ha!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "I did it!",
	ANNOUNCE_INSUFFICIENTFERTILIZER = "How are you still hungry? Why?!",
	ANNOUNCE_TOOL_SLIP = "Argh!",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "No becoming The Flash for me today.",
	ANNOUNCE_TOADESCAPING = "The frog is escaping!",
	ANNOUNCE_TOADESCAPED = "The frog got away.",


	ANNOUNCE_DAMP = "I guess you could say I'm \"moist.\"",
	ANNOUNCE_WET = "I'm getting all wet out here.",
	ANNOUNCE_WETTER = "Urgh.",
	ANNOUNCE_SOAKED = "I'm soaked!",

	ANNOUNCE_WASHED_ASHORE = "Dang, I lived.",

    ANNOUNCE_DESPAWN = "Adios!",
	ANNOUNCE_BECOMEGHOST = "Even in death I can not escape.",
	ANNOUNCE_GHOSTDRAIN = "Slipping away...",
	ANNOUNCE_PETRIFED_TREES = "Treebeard is that you?",
	ANNOUNCE_KLAUS_ENRAGE = "Uh oh!",
	ANNOUNCE_KLAUS_UNCHAINED = "Oh god!",
	ANNOUNCE_KLAUS_CALLFORHELP = "More?!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "There's something trapped inside.",
		GLASS_LOW = "I've almost got it out.",
		GLASS_REVEAL = "You're free!",
		IDOL_MED = "There's something trapped inside.",
		IDOL_LOW = "I've almost got it out.",
		IDOL_REVEAL = "You're free!",
		SEED_MED = "There's something trapped inside.",
		SEED_LOW = "I've almost got it out.",
		SEED_REVEAL = "You're free!",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "What the fuck was that?!",
	ANNOUNCE_BRAVERY_POTION = "Oh yeah trees?!",
	ANNOUNCE_MOONPOTION_FAILED = "Did I burn it?",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "There might be enough here to just about clench my hunger.",
	ANNOUNCE_WINTERS_FEAST_BUFF = "I'm ready!",
	ANNOUNCE_IS_FEASTING = "Happy Winter's Feast!",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "The holiday goes by so fast...",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "I'll help you.",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "Good as new!",
    ANNOUNCE_REVIVED_FROM_CORPSE = "Thank you.",

    ANNOUNCE_FLARE_SEEN = "Who used that flare?",
    ANNOUNCE_MEGA_FLARE_SEEN = "That'll attract attention.",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Oh would you look at that, Sea monsters!",

    --willow specific
	ANNOUNCE_LIGHTFIRE =
	{
		"only_used_by_willow",
    },

    --winona specific
    ANNOUNCE_HUNGRY_SLOWBUILD =
    {
	    "only_used_by_winona",
    },
    ANNOUNCE_HUNGRY_FASTBUILD =
    {
	    "only_used_by_winona",
    },

    --wormwood specific
    ANNOUNCE_KILLEDPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_GROWPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_BLOOMING =
    {
        "only_used_by_wormwood",
    },

    --wortox specfic
    ANNOUNCE_SOUL_EMPTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD =
    {
        "only_used_by_wortox",
    },

    --walter specfic
	ANNOUNCE_SLINGHSOT_OUT_OF_AMMO =
	{
		"only_used_by_walter",
		"only_used_by_walter",
	},
	ANNOUNCE_STORYTELLING_ABORT_FIREWENTOUT =
	{
        "only_used_by_walter",
	},
	ANNOUNCE_STORYTELLING_ABORT_NOT_NIGHT =
	{
        "only_used_by_walter",
	},

    -- wx specific
    ANNOUNCE_WX_SCANNER_NEW_FOUND = "only_used_by_wx78",
    ANNOUNCE_WX_SCANNER_FOUND_NO_DATA = "only_used_by_wx78",

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "I don't know what I'm doing!",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "I burnt it.",
    QUAGMIRE_ANNOUNCE_LOSE = "I have a bad feeling about this.",
    QUAGMIRE_ANNOUNCE_WIN = "Quick!",

    ANNOUNCE_ROYALTY =
    {
        "King.",
        "Queen.",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "I feel zappy!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "I'll murder them!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "I dare you to try and kill me!",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "I'm ready to work!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "This'll keep me dry!",
    ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "I'll never get tired again!... wait I have insomnia.",

    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "The motivation has gone.",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "Back to basics.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "It was nice while it lasted.",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "I'm getting bored.",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "The water's coming back.",
    ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "I once again remind you I have insomnia.",

	ANNOUNCE_OCEANFISHING_LINESNAP = "Argh!",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "Gotta pull it in.",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "It got away.",
	ANNOUNCE_OCEANFISHING_BADCAST = "You saw nothing.",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE =
	{
		"How do I fish?",
		"Come on you bastard",
		"I thought there were supposed to be plenty of fish in the sea!",
		"I could be doing anything else...",
	},

	ANNOUNCE_WEIGHT = "Weight: {weight}",
	ANNOUNCE_WEIGHT_HEAVY  = "Weight: {weight}\nI'm good at this.",

	ANNOUNCE_WINCH_CLAW_MISS = "I think I missed.",
	ANNOUNCE_WINCH_CLAW_NO_ITEM = "Urgh.",

    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "only_used_by_wurt",
    ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK =
    {
        BOOK_SLEEP = "only_used_by_wurt",
        BOOK_BIRDS = "only_used_by_wurt",
        BOOK_TENTACLES =  "only_used_by_wurt",
        BOOK_BRIMSTONE = "only_used_by_wurt",
        BOOK_GARDENING = "only_used_by_wurt",
		BOOK_SILVICULTURE = "only_used_by_wurt",
		BOOK_HORTICULTURE = "only_used_by_wurt",

        BOOK_FISH = "only_used_by_wurt",
        BOOK_FIRE = "only_used_by_wurt",
        BOOK_WEB = "only_used_by_wurt",
        BOOK_TEMPERATURE = "only_used_by_wurt",
        BOOK_LIGHT = "only_used_by_wurt",
        BOOK_RAIN = "only_used_by_wurt",

        BOOK_HORTICULTURE_UPGRADED = "only_used_by_wurt",
        BOOK_RESEARCH_STATION = "only_used_by_wurt",
        BOOK_LIGHT_UPGRADED = "only_used_by_wurt",
    },
    ANNOUNCE_WEAK_RAT = "I'm supposed to train this thing?",

    ANNOUNCE_CARRAT_START_RACE = "3, 2, Sike, 1, GO!",

    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        "It appears I am going the wrong way!",
        "Turn around!",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "Don't you dare! We have a race to win!",
    ANNOUNCE_CARRAT_ERROR_WALKING = "Don't walk, RUN!",
    ANNOUNCE_CARRAT_ERROR_STUNNED = "Get up! GO GO!",

    ANNOUNCE_GHOST_QUEST = "only_used_by_wendy",
    ANNOUNCE_GHOST_HINT = "only_used_by_wendy",
    ANNOUNCE_GHOST_TOY_NEAR = {
        "only_used_by_wendy",
    },
	ANNOUNCE_SISTURN_FULL = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_DEATH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_RETRIEVE = "only_used_by_wendy",
	ANNOUNCE_ABIGAIL_LOW_HEALTH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_SUMMON =
	{
		LEVEL1 = "only_used_by_wendy",
		LEVEL2 = "only_used_by_wendy",
		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_GHOSTLYBOND_LEVELUP =
	{
		LEVEL2 = "only_used_by_wendy",
		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_NOINSPIRATION = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_TAUNT_BUFF = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_PANIC_BUFF = "only_used_by_wathgrithr",

    ANNOUNCE_WANDA_YOUNGTONORMAL = "only_used_by_wanda",
    ANNOUNCE_WANDA_NORMALTOOLD = "only_used_by_wanda",
    ANNOUNCE_WANDA_OLDTONORMAL = "only_used_by_wanda",
    ANNOUNCE_WANDA_NORMALTOYOUNG = "only_used_by_wanda",

	ANNOUNCE_POCKETWATCH_PORTAL = "Did I make it?",

	ANNOUNCE_POCKETWATCH_MARK = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_RECALL = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_OPEN_PORTAL = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_OPEN_PORTAL_DIFFERENTSHARD = "only_used_by_wanda",

    ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "Ooh!",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "I already knew that.",
    ANNOUNCE_ARCHIVE_NO_POWER = "Maybe it needs more power.",

    ANNOUNCE_PLANT_RESEARCHED =
    {
        "So that's how plants work!",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "So I planted a seed.",

    ANNOUNCE_FERTILIZER_RESEARCHED = "I've done worse.",

	ANNOUNCE_FIRENETTLE_TOXIN =
	{
		"AAAAHHHH! Hot!",
		"Ow!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "That hurt.",

	ANNOUNCE_TALK_TO_PLANTS =
	{
        "Grow you bitch",
        "Come on... do something.",
		"If you don't grow I'll light you on fire.",
        "Grow I'm starving.",
        "I can't wait to harvest you and let you become rot.",
	},

	ANNOUNCE_KITCOON_HIDEANDSEEK_START = "3, 2, 1... Ready or not, here I come!",
	ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = "They're playing hide and seek?",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND =
	{
		"Found you!",
		"There you are.",
		"I knew you'd be hiding there!",
		"I see you!",
	},
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_ONE_MORE = "Now where's that last one hiding?",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE = "I found the last one!",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE_TEAM = "{name} found the last one!",
	ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = "I'm running out of time.",
	ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = "I guess they don't want to play any more...",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = "They wouldn't hide this far away, would they?",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = "They should be here somewhere.",
	ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = "I thought I saw something hiding over here!",

	ANNOUNCE_TICOON_START_TRACKING	= "He's caught the scent!",
	ANNOUNCE_TICOON_NOTHING_TO_TRACK = "He couldn't find anything.",
	ANNOUNCE_TICOON_WAITING_FOR_LEADER = "I should follow him!",
	ANNOUNCE_TICOON_GET_LEADER_ATTENTION = "He wants me to follow him.",
	ANNOUNCE_TICOON_NEAR_KITCOON = "He probably found something!",
	ANNOUNCE_TICOON_LOST_KITCOON = "Maybe someone else found what he was looking for.",
	ANNOUNCE_TICOON_ABANDONED = "I'll find them on my own.",
	ANNOUNCE_TICOON_DEAD = "RIP... Anyway.",

    -- YOTB
    ANNOUNCE_CALL_BEEF = "Get over here!",
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = "The judge won't be able to see my beefalo from here.",
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN =  "That's an idea.",

    -- AE4AE
    ANNOUNCE_EYEOFTERROR_ARRIVE = "Oh god! It's the Eye Of Terror",
    ANNOUNCE_EYEOFTERROR_FLYBACK = "It's back!",
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Get back here!",

    -- PIRATES
    ANNOUNCE_CANT_ESCAPE_CURSE = "What?",
    ANNOUNCE_MONKEY_CURSE_1 = "This isn't good...",
    ANNOUNCE_MONKEY_CURSE_CHANGE = "What's happening to me?!",
    ANNOUNCE_MONKEY_CURSE_CHANGEBACK = "Thank god!",

    ANNOUNCE_PIRATES_ARRIVE = "Pirates?!",

    ANNOUNCE_BOOK_MOON_DAYTIME = "only_used_by_waxwell_and_wicker",

    -- Shipwrecked announcements
    ANNOUNCE_MAGIC_FAIL = "Magic won't work here.",

	ANNOUNCE_SHARX = "That's a shark... I'm going to die.",

	ANNOUNCE_TREASURE = "It's a map... Shame I can't read it.",
	ANNOUNCE_TREASURE_DISCOVER = "Gonna rob me some treasure!",
	ANNOUNCE_MORETREASURE = "More crap for me to find.",
	ANNOUNCE_OTHER_WORLD_TREASURE = "If I could read this map I'm sure it'll tell me I'm in the wrong place.",
	ANNOUNCE_OTHER_WORLD_PLANT = "I don't know anything about plants but this soil looks weird.",

	ANNOUNCE_IA_MESSAGEBOTTLE =
	{
		"It reads... nothing",
	},
	ANNOUNCE_VOLCANO_ERUPT = "Oh fuck the volcano erupted!",
	ANNOUNCE_MAPWRAP_WARN = "Oh boy more monsters for me to kill!",
	ANNOUNCE_MAPWRAP_LOSECONTROL = "I am not a fortune teller...",
	ANNOUNCE_MAPWRAP_RETURN = "First hearing things, then seeing things now feeling things!",
	ANNOUNCE_CRAB_ESCAPE = "Mr Krabs come back!",
	ANNOUNCE_TRAWL_FULL = "Well damn, my net is full!",
	ANNOUNCE_BOAT_DAMAGED = "We have leak. I am going to die!",
	ANNOUNCE_BOAT_SINKING = "I have come to the conclusion we are sinking.",
	ANNOUNCE_BOAT_SINKING_IMMINENT = "We are sinking faster then the Titanic.",
	ANNOUNCE_WAVE_BOOST = "This is making my sea sickness worse!",

	ANNOUNCE_WHALE_HUNT_BEAST_NEARBY = "Follow those bubbles!",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL = "Fuck I lost it.",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL_SPRING = "This water has fucked me over.",

	BATTLECRY =
	{
		GENERIC = "En garde!",
		PIG = "Come back bacon!",
		PREY = "Piss off!",
		SPIDER = "AGGGGHHHH!",
		SPIDER_WARRIOR = "AGGGGHHHH!",
		DEER = "Sieze your existance!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "Dammit, I wanted to kill it.",
		PIG = "Dammit, I wanted to kill it.",
		PREY = "He zoomed away like Sonic.",
		SPIDER = "Dammit, I wanted to kill it.",
		SPIDER_WARRIOR = "Dammit, I wanted to kill it.",
	},

	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "This is beyond my comprehension.",
        MULTIPLAYER_PORTAL_MOONROCK = "This is beyond my comprehension.",
        MOONROCKIDOL = "I am a man of Science!",
        CONSTRUCTION_PLANS = "Yeah! Science!",

        ANTLION =
        {
            GENERIC = "It wants something from me.",
            VERYHAPPY = "I think we're on good terms.",
            UNHAPPY = "It looks mad.",
        },
        ANTLIONTRINKET = "Someone might be interested in this.",
        SANDSPIKE = "I could've been skewered!",
        SANDBLOCK = "It's so gritty!",
        GLASSSPIKE = "Memories of the time I wasn't skewered.",
        GLASSBLOCK = "That's science for you.",
        ABIGAIL_FLOWER =
        {
            GENERIC ="It's hauntingly beautiful.",
			LEVEL1 = "Do you need some alone time?",
			LEVEL2 = "I think she's starting to open up to us.",
			LEVEL3 = "Looks like someone's feeling especially spirited today!",

			-- deprecated
            LONG = "It hurts my soul to look at that thing.",
            MEDIUM = "It's giving me the creeps.",
            SOON = "Something is up with that flower!",
            HAUNTED_POCKET = "I don't think I should hang on to this.",
            HAUNTED_GROUND = "I'd die to find out what it does.",
        },

        BALLOONS_EMPTY = "It looks like clown currency.",
        BALLOON = "How are they floating?",
		BALLOONPARTY = "How did he get the smaller balloons inside?",
		BALLOONSPEED =
        {
            DEFLATED = "Now it's just another balloon.",
            GENERIC = "The hole in the center makes it more aerodynamic, that's just physics!",
        },
		BALLOONVEST = "If the bright colors don't attract some horrible creature, the squeaking will.",
		BALLOONHAT = "The static does terrible things to my hair.",

        BERNIE_INACTIVE =
        {
            BROKEN = "It finally fell apart.",
            GENERIC = "It's all scorched.",
        },

        BERNIE_ACTIVE = "If I could sleep that would be a different case of nightmare fuel.",
        BERNIE_BIG = "I like that I'm fine with this but bugs terrify me.",

		BOOKSTATION =
		{
			GENERIC = "I'm too lazy to read.",
			BURNT = "Good now I don't have to read.",
		},
        BOOK_BIRDS = "I'm too lazy to read.",
        BOOK_TENTACLES = "I'm too lazy to read.",
        BOOK_GARDENING = "I'm too lazy to read.",
		BOOK_SILVICULTURE = "I'm too lazy to read.",
		BOOK_HORTICULTURE = "I'm too lazy to read.",
        BOOK_SLEEP = "I'm too lazy to read.",
        BOOK_BRIMSTONE = "I'm too lazy to read.",

        BOOK_FISH = "I'm too lazy to read.",
        BOOK_FIRE = "I'm too lazy to read.",
        BOOK_WEB = "I'm too lazy to read.",
        BOOK_TEMPERATURE = "I'm too lazy to read.",
        BOOK_LIGHT = "I'm too lazy to read.",
        BOOK_RAIN = "I'm too lazy to read.",
        BOOK_MOON = "I'm too lazy to read.",
        BOOK_BEES = "I'm too lazy to read.",
        
        BOOK_HORTICULTURE_UPGRADED = "I'm too lazy to read.",
        BOOK_RESEARCH_STATION = "I'm too lazy to read.",
        BOOK_LIGHT_UPGRADED = "I'm too lazy to read.",

        FIREPEN = "It's a firepen.",

        PLAYER =
        {
            GENERIC = "Bonjour, %s!",
            ATTACKER = "%s looks shady...",
            MURDERER = "No I'm suppose to be the murderer!",
            REVIVER = "%s, is playing with forces they don't understand.",
            GHOST = "AGHHHHHHHHH it's %s",
            FIRESTARTER = "Hey %s next time let me start that fire.",
        },
        WILSON =
        {
            GENERIC = "Stars and atoms! Are you my doppelganger?",
            ATTACKER = "Yeesh. Do I always look that creepy?",
            MURDERER = "Your existence is an affront to the laws of science, %s!",
            REVIVER = "%s has expertly put our theories into practice.",
            GHOST = "Best concoct a revival device. Can't leave another man of science floating.",
            FIRESTARTER = "Burning that wasn't very scientific, %s.",
        },
        WOLFGANG =
        {
            GENERIC = "It's good to see you, %s!",
            ATTACKER = "Let's not start a fight with the strongman...",
            MURDERER = "Murderer! I can take you!",
            REVIVER = "%s is just a big teddy bear.",
            GHOST = "I told you you couldn't deadlift that boulder. The numbers were all wrong.",
            FIRESTARTER = "You can't actually \"fight\" fire, %s!",
        },
        WAXWELL =
        {
            GENERIC = "Decent day to you, %s!",
            ATTACKER = "Seems you've gone from \"dapper\" to \"slapper\".",
            MURDERER = "I'll show you Logic and Reason... those're my fists!",
            REVIVER = "%s is using his powers for good.",
            GHOST = "Don't look at me like that, %s! I'm working on it!",
            FIRESTARTER = "%s's just asking to get roasted.",
        },
        WX78 =
        {
            GENERIC = "Good day to you, %s!",
            ATTACKER = "I think we need to tweak your primary directive, %s...",
            MURDERER = "%s! You've violated the first law!",
            REVIVER = "I guess %s got that empathy module up and running.",
            GHOST = "I always thought %s could use a heart. Now I'm certain!",
            FIRESTARTER = "You look like you're gonna melt, %s. What happened?",
        },
        WILLOW =
        {
            GENERIC = "Good day to you, %s!",
            ATTACKER = "%s is holding that lighter pretty tightly...",
            MURDERER = "Murderer! Arsonist!",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "I bet you're just burning for a heart, %s.",
            FIRESTARTER = "Again?",
        },
        WENDY =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s doesn't have any sharp objects, does she?",
            MURDERER = "Murderer!",
            REVIVER = "%s treats ghosts like family.",
            GHOST = "I'm seeing double! I'd better concoct a heart for %s.",
            FIRESTARTER = "I know you set those flames, %s.",
        },
        WOODIE =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s has been a bit of a sap lately...",
            MURDERER = "Murderer! Bring me an axe and let's get in the swing of things!",
            REVIVER = "%s saved everyone's backbacon.",
            GHOST = "Does \"universal\" coverage include the void, %s?",
            BEAVER = "%s's gone on a wood chucking rampage!",
            BEAVERGHOST = "Will you bea-very mad if I don't revive you, %s?",
            MOOSE = "Gad-zooks, that's a moose!",
            MOOSEGHOST = "That moose'nt be very comfortable.",
            GOOSE = "Take a gander at that!",
            GOOSEGHOST = "Be more careful, you silly goose!",
            FIRESTARTER = "Don't burn yourself out, %s.",
        },
        WICKERBOTTOM =
        {
            GENERIC = "Good day, %s!",
            ATTACKER = "I think %s's planning to throw the book at me.",
            MURDERER = "Here comes my peer review!",
            REVIVER = "I have deep respect for %s's practical theorems.",
            GHOST = "This doesn't seem very scientific, does it, %s?",
            FIRESTARTER = "I'm sure you had a very clever reason for that fire.",
        },
        WES =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s is silent, but deadly...",
            MURDERER = "Mime this!",
            REVIVER = "%s thinks outside the invisible box.",
            GHOST = "How do you say \"I'll get a revival device\" in mime?",
            FIRESTARTER = "Wait, don't tell me. You lit a fire.",
        },
        WEBBER =
        {
            GENERIC = "Good day, %s!",
            ATTACKER = "I'm gonna roll up a papyrus newspaper, just in case.",
            MURDERER = "Murderer! I'll squash you, %s!",
            REVIVER = "%s is playing well with others.",
            GHOST = "%s is really buggin' me for a heart.",
            FIRESTARTER = "We need to have a group meeting about fire safety.",
        },
        WATHGRITHR =
        {
            GENERIC = "Good day, %s!",
            ATTACKER = "I'd like to avoid a punch from %s, if possible.",
            MURDERER = "%s's gone berserk!",
            REVIVER = "%s has full command of spirits.",
            GHOST = "Nice try. You're not escaping to Valhalla yet, %s.",
            FIRESTARTER = "%s is really heating things up today.",
        },
        WINONA =
        {
            GENERIC = "Good day to you, %s!",
            ATTACKER = "%s is a safety hazard.",
            MURDERER = "It ends here, %s!",
            REVIVER = "You're pretty handy to have around, %s.",
            GHOST = "Looks like someone threw a wrench into your plans.",
            FIRESTARTER = "Things are burning up at the factory.",
        },
        WORTOX =
        {
            GENERIC = "Greetings to you, %s!",
            ATTACKER = "I knew %s couldn't be trusted!",
            MURDERER = "Time to grab the imp by the horns!",
            REVIVER = "Thanks for lending a helping claw, %s.",
            GHOST = "I reject the reality of ghosts and imps.",
            FIRESTARTER = "%s is becoming a survival liability.",
        },
        WORMWOOD =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s seems pricklier than usual today.",
            MURDERER = "Prepare to get weed whacked, %s!",
            REVIVER = "%s never gives up on his friends.",
            GHOST = "You need some help, lil guy?",
            FIRESTARTER = "I thought you hated fire, %s.",
        },
        WARLY =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "Well, this is a recipe for disaster.",
            MURDERER = "I hope you don't have any half-baked plans to murder me!",
            REVIVER = "Always rely on %s to cook up a plan.",
            GHOST = "Maybe he was cooking with ghost peppers.",
            FIRESTARTER = "He's gonna flambé the place right down!",
        },

        WURT =
        {
            GENERIC = "Good day, %s!",
            ATTACKER = "%s is looking especially monstrous today...",
            MURDERER = "You're just another murderous merm!",
            REVIVER = "Why thank you, %s!",
            GHOST = "%s is looking greener around the gills than usual.",
            FIRESTARTER = "Didn't anyone teach you not to play with fire?!",
        },

        WALTER =
        {
            GENERIC = "Good day, %s!",
            ATTACKER = "Is that how a Pinetree Pioneer is meant to behave?",
            MURDERER = "Did you run out of material for your stories, %s?",
            REVIVER = "I can always count on %s.",
            GHOST = "I know you're having fun, but we'd best find a heart.",
            FIRESTARTER = "That doesn't look like a campfire, %s.",
        },

        WANDA =
        {
            GENERIC = "Good day, %s!",
            ATTACKER = "This really isn't the time or place for that, %s!",
            MURDERER = "Murderer! You won't get any second chances from me!",
            REVIVER = "If it wasn't for %s, I'd be history!",
            GHOST = "I'd better hurry up and find a heart.",
            FIRESTARTER = "Let me guess, this has something to do with \"preserving the timeline\"?",
        },

        WONKEY =
        {
            GENERIC = "It's a monkey.",
            ATTACKER = "Hey, stop monkeying around!",
            MURDERER = "They've gone ape!",
            REVIVER = "My life has been saved... by a monkey?",
            GHOST = "That's one spooky monkey.",
            FIRESTARTER = "I wonder if this is how the dinosaurs felt.",
        },

        MIGRATION_PORTAL =
        {
        --    GENERIC = "If I had any friends, this could take me to them.",
        --    OPEN = "If I step through, will I still be me?",
        --    FULL = "It seems to be popular over there.",
        },
        GLOMMER =
        {
            GENERIC = "AGHHHHHHHHHH big bug!",
            SLEEPING = "It's driving me fucking insane!",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "Ughhhh a flower.",
            DEAD = "It's for the best.",
        },
        GLOMMERWINGS = "Ughhhh",
        GLOMMERFUEL = "Ughhhh",
        BELL = "Bing bong, I'm now the invisible boy from that game I like.",
        STATUEGLOMMER =
        {
            GENERIC = "It's a horrible looking statue.",
            EMPTY = "I broke it... on purpose.",
        },

        LAVA_POND_ROCK = "As gneiss a place as any.",

		WEBBERSKULL = "Fuck you and your spiders.",
		WORMLIGHT = "Looks delicious.",
		WORMLIGHT_LESSER = "Kinda wrinkled.",
		WORM =
		{
		    PLANT = "Seems safe to me.",
		    DIRT = "It's dirt.",
		    WORM = "It's a worm!",
		},
        WORMLIGHT_PLANT = "Seems safe to me.",
		MOLE =
		{
			HELD = "Gottcha!",
			UNDERGROUND = "There's a mole about.",
			ABOVEGROUND = "There it is! Kill it!",
		},
		MOLEHILL = "There's a hole here I should dig it up.",
		MOLEHAT = "Bravo six going dark",

		EEL = "This will make a delicious meal.",
		EEL_COOKED = "Smells great!",
		UNAGI = "I hope this doesn't make anyone eel!",
		EYETURRET = "Gun go burrrr.",
		EYETURRET_ITEM = "I guess its recharging.",
		MINOTAURHORN = "Wow! I'm glad that didn't gore me!",
		MINOTAURCHEST = "It may contain a bigger something fantastic! Or horrible.",
		THULECITE_PIECES = "It's some smaller chunks of Thulecite.",
		POND_ALGAE = "Some algae by a pond.",
		GREENSTAFF = "This will come in handy.",
		GIFT = "Is that for me?",
        GIFTWRAP = "That's a wrap!",
		POTTEDFERN = "A fern in a pot.",
        SUCCULENT_POTTED = "A succulent in a pot.",
		SUCCULENT_PLANT = "Aloe there.",
		SUCCULENT_PICKED = "I could eat that, but I'd rather not.",
		SENTRYWARD = "That's an entirely scientific mapping tool.",
        TOWNPORTAL =
        {
			GENERIC = "This pyramid controls the sands.",
			ACTIVE = "Ready for departiculation.",
		},
        TOWNPORTALTALISMAN =
        {
			GENERIC = "A mini departiculator.",
			ACTIVE = "A more sane person would walk.",
		},
        WETPAPER = "It's wet paper.",
        WETPOUCH = "This package is barely holding together.",
        MOONROCK_PIECES = "I could probably break that.",
        MOONBASE =
        {
            GENERIC = "There's a hole UwU.",
            BROKEN = "It's all smashed up.",
            STAFFED = "Now what?",
            WRONGSTAFF = "I have a distinct feeling this isn't right.",
            MOONSTAFF = "The stone lit it up somehow.",
        },
        MOONDIAL =
        {
			GENERIC = "Water amplifies the science, allowing us to measure the moon.",
			NIGHT_NEW = "It's a new moon.",
			NIGHT_WAX = "The moon is waxing.",
			NIGHT_FULL = "It's a full moon.",
			NIGHT_WANE = "The moon is waning.",
			CAVE = "There's no moon down here to measure.",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
			GLASSED = "I have the strangest feeling I'm being watched.",
        },
		THULECITE = "I wonder where this is from?",
		ARMORRUINS = "It's oddly light.",
		ARMORSKELETON = "No bones about it.",
		SKELETONHAT = "It's a skeleton and its a hat.",
		RUINS_BAT = "It has quite a heft to it.",
		RUINSHAT = "How's my hat?",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "All is well.",
            WARN = "I have a sense of impending doom.",
            WAXING = "It's doing something!",
            STEADY = "It seems to be staying steady.",
            WANING = "Feels like it's receding.",
            DAWN = "The nightmare is almost gone!",
            NOMAGIC = "There's no magic around here.",
		},
		BISHOP_NIGHTMARE = "Huh, a bishop.",
		ROOK_NIGHTMARE = "Huh, a rook!",
		KNIGHT_NIGHTMARE = "Ayyy look at that a knight.",
		MINOTAUR = "You are one ugly motherfucker.",
		SPIDER_DROPPER = "Fuckin hate spiders.",
		NIGHTMARELIGHT = "It is a light of nightmares.",
		NIGHTSTICK = "It's a stick of night!",
		GREENGEM = "It's a green gem.",
		MULTITOOL_AXE_PICKAXE = "If only it could kill things effectively!",
		ORANGESTAFF = "Not as good as my knife.",
		YELLOWAMULET = "Warm to the touch.",
		GREENAMULET = "No base should be without one!",
		SLURPERPELT = "Doesn't look all that much different dead.",

		SLURPER = "It's so hairy!",
		SLURPER_PELT = "Doesn't look all that much different dead.",
		ARMORSLURPER = "A soggy, sustaining, succulent suit.",
		ORANGEAMULET = "Teleportation can be so useful.",
		YELLOWSTAFF = "A genius invention... a gem on a stick.",
		YELLOWGEM = "This gem is yellow.",
		ORANGEGEM = "It's an orange gem.",
        OPALSTAFF = "It's a rock taped to the top of a stick.",
        OPALPRECIOUSGEM = "This gem seems special.",
        TELEBASE =
		{
			VALID = "It's ready to go.",
			GEMS = "It needs more purple gems.",
		},
		GEMSOCKET =
		{
			VALID = "I think it's ready.",
			GEMS = "It needs a gem.",
		},
		STAFFLIGHT = "That seems really dangerous... Cool!",
        STAFFCOLDLIGHT = "Bloody hell its cold.",

        ANCIENT_ALTAR = "An ancient and mysterious structure.",

        ANCIENT_ALTAR_BROKEN = "This seems to be broken.",

        ANCIENT_STATUE = "It's a statue.",

        LICHEN = "I don't know what this is.",
		CUTLICHEN = "Narly!",

		CAVE_BANANA = "It's a moldy banana.",
		CAVE_BANANA_COOKED = "Eh!",
		CAVE_BANANA_TREE = "It's a tree that grows banana's... in caves?",
		ROCKY = "It's a rock with claws!",

		COMPASS =
		{
			GENERIC="Which way am I facing?",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "Weast.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northweast.",
			SW = "Southweast.",
		},

        HOUNDSTOOTH = "Got this killing one of them pesky dogs.",
        ARMORSNURTLESHELL = "Haha I'm a koopa",
        BAT = "Why do I have this?",
        BATBAT = "It's a bat made out of bats... Ironic.",
        BATWING = "I ripped this from a bats body.",
        BATWING_COOKED = "Crunchy.",
        BATCAVE = "I'm Batman.",
        BEDROLL_FURRY = "Dude, I have insomnia.",
        BUNNYMAN = "Yikes.",
        FLOWER_CAVE = "My knowledge of flowers tells me this is a flower.",
        GUANO = "AGHHHHH It's like bird shit.",
        LANTERN = "Ahhhhh modern day technology.",
        LIGHTBULB = "It's a lightbulb.",
        MANRABBIT_TAIL = "Why do I have this?",
        MUSHROOMHAT = "Ahhhh yes the \"I want to look like a hipster\" hat.",
        MUSHROOM_LIGHT2 =
        {
            ON = "Blue light is blue.",
            OFF = "It's off now.",
            BURNT = "Oh it's gone now.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "I bestow upon ye... Light!",
            OFF = "It's off now.",
            BURNT = "Oh it's gone now.",
        },
        SLEEPBOMB = "It's a less lethal grenade.",
        MUSHROOMBOMB = "It's basically a stink bomb.",
        SHROOM_SKIN = "I hate this.",
        TOADSTOOL_CAP =
        {
            EMPTY = "Just a hole in the ground.",
            INGROUND = "There's something poking out.",
            GENERIC = "That toadstool's just asking to be cut down.",
        },
        TOADSTOOL =
        {
            GENERIC = "Yeesh! I'm not kissing that!",
            RAGE = "He's hopping mad now!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "It's a sprout.",
            BURNT = "How im-morel!",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "That mushroom got too big for its own good.",
            BLOOM = "You can't tell from far away, but it's quite smelly.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "It's a mushroom.",
            BLOOM = "I'm mildly offended by this.",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "A magic mushroom?",
            BLOOM = "It's trying to reproduce.",
        },
        MUSHTREE_TALL_WEBBED = "The spiders thought this one was important.",
        SPORE_TALL =
        {
            GENERIC = "It's just drifting around.",
            HELD = "I'll keep a little light in my pocket.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "Hasn't a care in the world.",
            HELD = "I'll keep a little light in my pocket.",
        },
        SPORE_SMALL =
        {
            GENERIC = "That's a sight for spore eyes.",
            HELD = "I'll keep a little light in my pocket.",
        },
        RABBITHOUSE =
        {
            GENERIC = "That's not a real carrot.",
            BURNT = "That's not a real roasted carrot.",
        },
        SLURTLE = "Ew. Just ew.",
        SLURTLE_SHELLPIECES = "A puzzle with no solution.",
        SLURTLEHAT = "I'll wear this ontop of my hat.",
        SLURTLEHOLE = "A den of \"ew\".",
        SLURTLESLIME = "Slimy...",
        SNURTLE = "He's less gross, but still gross.",
        SPIDER_HIDER = "I fucking hate spiders...",
        SPIDER_SPITTER = "I hate spiders even more!",
        SPIDERHOLE = "It's encrusted with old webbing.",
        SPIDERHOLE_ROCK = "It's encrusted with old webbing.",
        STALAGMITE = "Looks like a rock to me.",
        STALAGMITE_TALL = "Rocks, rocks, rocks, rocks...",

        TURF_CARPETFLOOR = "It's surprisingly scratchy.",
        TURF_CHECKERFLOOR = "These are pretty snazzy.",
        TURF_DIRT = "A chunk of ground.",
        TURF_FOREST = "A chunk of ground.",
        TURF_GRASS = "A chunk of ground.",
        TURF_MARSH = "A chunk of ground.",
        TURF_METEOR = "A chunk of moon ground.",
        TURF_PEBBLEBEACH = "A chunk of beach.",
        TURF_ROAD = "Hastily cobbled stones.",
        TURF_ROCKY = "A chunk of ground.",
        TURF_SAVANNA = "A chunk of ground.",
        TURF_WOODFLOOR = "These are floorboards.",

		TURF_CAVE="Yet another ground type.",
		TURF_FUNGUS="Yet another ground type.",
		TURF_FUNGUS_MOON = "Yet another ground type.",
		TURF_ARCHIVE = "Yet another ground type.",
		TURF_SINKHOLE="Yet another ground type.",
		TURF_UNDERROCK="Yet another ground type.",
		TURF_MUD="Yet another ground type.",

		TURF_DECIDUOUS = "Yet another ground type.",
		TURF_SANDY = "Yet another ground type.",
		TURF_BADLANDS = "Yet another ground type.",
		TURF_DESERTDIRT = "A chunk of ground.",
		TURF_FUNGUS_GREEN = "A chunk of ground.",
		TURF_FUNGUS_RED = "A chunk of ground.",
		TURF_DRAGONFLY = "Do you want proof that it's fireproof?",

        TURF_SHELLBEACH = "A chunk of beach.",

        TURF_MONKEY_GROUND = "A chunk of sand.",

		POWCAKE = "Mmmmmm, cake",
        CAVE_ENTRANCE = "Obvious cave entrance is obvious.",
        CAVE_ENTRANCE_RUINS = "That looks ominous.",

       	CAVE_ENTRANCE_OPEN =
        {
            GENERIC = "I knew it!",
            OPEN = "There's nothing down there but death.",
            FULL = "The fuck do you mean it's full?",
        },
        CAVE_EXIT =
        {
            GENERIC = "Well I'm fucked...",
            OPEN = "Retreat!",
            FULL = "Help I'm dying!",
        },

		MAXWELLPHONOGRAPH = "I must be tripping.",--single player
		BOOMERANG = "Fly!",
		PIGGUARD = "He looks harder to murder then the others.",
		ABIGAIL =
		{
            LEVEL1 =
            {
                "AGHHHH GHOST!",
                "AGHHHH GHOST!",
            },
            LEVEL2 =
            {
                "AGHHHH GHOST!",
                "AGHHHH GHOST!",
            },
            LEVEL3 =
            {
                "AGHHHH GHOST!",
                "AGHHHH GHOST!",
            },
		},
		ADVENTURE_PORTAL = "No thanks, I choose life.",
		AMULET = "I feel so safe when I get to wear it.",
		ANIMAL_TRACK = "I am not a skilled tracker...",
		ARMORGRASS = "Hopefully there aren't any bugs in it.",
		ARMORMARBLE = "That looks really heavy.",
		ARMORWOOD = "That is a perfectly reasonable piece of clothing.",
		ARMOR_SANITY = "Wearing that makes me feel safe and insecure.",
		ASH =
		{
			GENERIC = "Blow away in the wind.",
			REMAINS_GLOMMERFLOWER = "Good riddence.",
			REMAINS_EYE_BONE = "Chester NOOOOOOOOO!",
			REMAINS_THINGIE = "Eh.",
		},
		AXE = "An axe that can be used for murder... I... I mean cutting trees.",
		BABYBEEFALO =
		{
			GENERIC = "It's going to grow into a killing machine.",
		    SLEEPING = "Now would be a prime time to kill it.",
        },
        BUNDLE = "Our supplies are in there!",
        BUNDLEWRAP = "Wrapping things up should make them easier to carry.",
		BACKPACK = "Ahhhh a trusty backpack.",
		BACONEGGS = "Gotta love egg and bacon.",
		BANDAGE = "Heal my wounds!",
		BASALT = "That's too strong to break through!", --removed
		BEARDHAIR = "Ew, beard hair.",
		BEARGER = "I reckon I could kill that.",
		BEARGERVEST = "Comfy!",
		ICEPACK = "It'll make my food last longer.",
		BEARGER_FUR = "Christ that's alot of fur.",
		BEDROLL_STRAW = "Dude, I have insomnia.",
		BEEQUEEN = "AGHHHHHHHHHH BIG BEE!!!!",
		BEEQUEENHIVE =
		{
			GENERIC = "I'm staying the hell away from that without a bee hat.",
			GROWING = "I'm staying the hell away from that without a bee hat.",
		},
        BEEQUEENHIVEGROWN = "I'm staying the hell away from that without a bee hat.",
        BEEGUARD = "That's an angry looking bee, best keep my distance.",
        HIVEHAT = "Ahhhh, I feel safer against insects with this.",
        MINISIGN =
        {
            GENERIC = "Haha I can't draw",
            UNDRAWN = "I should draw a penis on it.",
        },
        MINISIGN_ITEM = "Dude, signs go in the ground.",
		BEE =
		{
			GENERIC = "I'm staying the hell away from that without a bee hat.",
			HELD = "Why am I holding this!!!!",
		},
		BEEBOX =
		{
			READY = "It's full of honey.",
			FULLHONEY = "It's full of honey.",
			GENERIC = "Ughhh bees!",
			NOHONEY = "It's empty.",
			SOMEHONEY = "Need to wait a bit.",
			BURNT = "How did it get burned?!!",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "That's a lot of mushrooms!",
			LOTS = "The mushrooms have really taken to the log.",
			SOME = "It should keep growing now.",
			EMPTY = "It could use a spore. Or a mushroom transplant.",
			ROTTEN = "The log is dead. We should replace it with a live one.",
			BURNT = "The power of science compelled it.",
			SNOWCOVERED = "I don't think it can grow in this cold.",
		},
		BEEFALO =
		{
			FOLLOWER = "I'm being followed by a beefalo?",
			GENERIC = "That's a beefalo!",
			NAKED = "HAHA your fur was stolen!",
			SLEEPING = "I'd probably die if I tried to kill it now.",
            --Domesticated states:
            DOMESTICATED = "Seems domesticated but how would I know.",
            ORNERY = "It looks pissed off.",
            RIDER = "I think I can ride this one.",
            PUDGY = "You fat fuck.",
            MYPARTNER = "I think this one belongs to me",
		},

		BEEFALOHAT = "A killing machine that I can wear on my head.",
		BEEFALOWOOL = "Not much use to me like this",
		BEEHAT = "This will protect me from insects.",
        BEESWAX = "What do I do with this?",
		BEEHIVE = "I'm staying the hell away from that without a bee hat.",
		BEEMINE = "It's a bomb... I guess?",
		BEEMINE_MAXWELL = "Bottled mosquito rage!",--removed
		BERRIES = "Eh berries.",
		BERRIES_COOKED = "The berries are cooked.",
        BERRIES_JUICY = "Ok, juicy berries.",
        BERRIES_JUICY_COOKED = "These berries are nice.",
		BERRYBUSH =
		{
			BARREN = "I think it needs to be fertilized.",
			WITHERED = "Nothing will grow in this heat.",
			GENERIC = "I think those are the edible kind.",
			PICKED = "Maybe they'll grow back?",
			DISEASED = "It looks pretty sick.",--removed
			DISEASING = "Err, something's not right.",--removed
			BURNING = "It's very much on fire.",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It won't make any berries in this state.",
			WITHERED = "The heat even dehydrated the juicy berries!",
			GENERIC = "I should leave them there until it's time to eat.",
			PICKED = "The bush is working hard on the next batch.",
			DISEASED = "It looks pretty sick.",--removed
			DISEASING = "Err, something's not right.",--removed
			BURNING = "It's very much on fire.",
		},
		BIGFOOT = "That is one biiig foot.",--removed
		BIRDCAGE =
		{
			GENERIC = "It's an empty birdcage. Pretty useless.",
			OCCUPIED = "Got you, you bastard.",
			SLEEPING = "Awww it's sleeping... lets kill it!",
			HUNGRY = "What's that? You're hungry?",
			STARVING = "Yes! Starve!",
			DEAD = "The bird appears to have died.",
			SKELETON = "A fine addition to my collection.",
		},
		BIRDTRAP = "It's a bird trap.",
		CAVE_BANANA_BURNT = "This banana seems burnt!",
		BIRD_EGG = "Egg.",
		BIRD_EGG_COOKED = "Egg.",
		BISHOP = "That's a bishop.",
		BLOWDART_FIRE = "Now I can fulfil my pyromaniac fantasies.",
		BLOWDART_SLEEP = "I can put others to sleep but not myself.",
		BLOWDART_PIPE = "En garde from a distance.",
		BLOWDART_YELLOW = "Pew!",
		BLUEAMULET = "Cool as ice!",
		BLUEGEM = "It sparkles with cold energy.",
		BLUEPRINT =
		{
            COMMON = "Hey neat! A blueprint.",
            RARE = "Is this one special?",
        },
        SKETCH = "A picture of a sculpture. We'll need somewhere to make it.",
		BLUE_CAP = "It's weird and gooey.",
		BLUE_CAP_COOKED = "It's different now...",
		BLUE_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		BOARDS = "Boards.",
		BONESHARD = "Bits of bone.",
		BONESTEW = "A stew to put some meat on your bones.",
		BUGNET = "For catching bugs.",
		BUSHHAT = "Will this let me hide in bushes?",
		BUTTER = "Fools gold!",
		BUTTERFLY =
		{
			GENERIC = "I'm staying the hell away from that without protection.",
			HELD = "Why am I holding this?!",
		},
		BUTTERFLYMUFFIN = "Narly.",
		BUTTERFLYWINGS = "Better dead then alive!",
		BUZZARD = "What a bizarre buzzard!",

		SHADOWDIGGER = "I wonder if these things can fuck eachother.",

		CACTUS =
		{
			GENERIC = "Sharp but delicious.",
			PICKED = "Deflated, but still spiny.",
		},
		CACTUS_MEAT_COOKED = "Grilled fruit of the desert.",
		CACTUS_MEAT = "Painful to eat but delicious.",
		CACTUS_FLOWER = "A pretty flower from a prickly plant.",

		COLDFIRE =
		{
			EMBERS = "That fire needs more fuel or it's going to go out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "Well, that's over.",
		},
		CAMPFIRE =
		{
			EMBERS = "That fire needs more fuel or it's going to go out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "Well, that's over.",
		},
		CANE = "Technically walking is just controlled falling.",
		CATCOON = "A playful little thing.",
		CATCOONDEN =
		{
			GENERIC = "It's a den in a stump.",
			EMPTY = "Its owner ran out of lives.",
		},
		CATCOONHAT = "Ears hat!",
		COONTAIL = "I think it's still swishing.",
		CARROT = "Yuck. This vegetable came out of the dirt.",
		CARROT_COOKED = "Mushy.",
		CARROT_PLANTED = "The earth is making plantbabies.",
		CARROT_SEEDS = "It's a seed.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "Now I can show everyone what I found!",
			BURNING = "So much for that.",
			BURNT = "Nothing but ash now.",
		},
		WATERMELON_SEEDS = "It's a seed.",
		CAVE_FERN = "It's a fern.",
		CHARCOAL = "It's small, dark, and smells like burnt wood.",
        CHESSPIECE_PAWN = "I can relate.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "It's even heavier than it looks.",
            STRUGGLE = "The chess pieces are moving themselves!",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "It's a horse, of course.",
            STRUGGLE = "The chess pieces are moving themselves!",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "It's a stone bishop.",
            STRUGGLE = "The chess pieces are moving themselves!",
        },
        CHESSPIECE_MUSE = "Hmm... Looks familiar.",
        CHESSPIECE_FORMAL = "Doesn't seem very \"kingly\" to me.",
        CHESSPIECE_HORNUCOPIA = "Makes my stomach rumble just looking at it.",
        CHESSPIECE_PIPE = "That was never really my thing.",
        CHESSPIECE_DEERCLOPS = "It feels like its eye follows you.",
        CHESSPIECE_BEARGER = "It was a lot bigger up close.",
        CHESSPIECE_MOOSEGOOSE =
        {
            "Eurgh. It's so lifelike.",
        },
        CHESSPIECE_DRAGONFLY = "Ah, that brings back memories. Bad ones.",
		CHESSPIECE_MINOTAUR = "Now you're the one scared stiff!",
        CHESSPIECE_BUTTERFLY = "It looks nice, doesn't it?",
        CHESSPIECE_ANCHOR = "It's as heavy as it looks.",
        CHESSPIECE_MOON = "I've been feeling pretty inspired lately.",
        CHESSPIECE_CARRAT = "We have a winner!",
        CHESSPIECE_MALBATROSS = "It's not so bad when it isn't trying to kill you.",
        CHESSPIECE_CRABKING = "Still not as crabby as Maxwell.",
        CHESSPIECE_TOADSTOOL = "Not really a great stool though, is it?",
        CHESSPIECE_STALKER = "Exactly as stationary as a skeleton should be.",
        CHESSPIECE_KLAUS = "Can I invoke the \"no holiday decorations\" Klaus?",
        CHESSPIECE_BEEQUEEN = "Very statuesque.",
        CHESSPIECE_ANTLION = "A stagn-antlion.",
        CHESSPIECE_BEEFALO = "This sculpture is pretty beefy.",
		CHESSPIECE_KITCOON = "These ones are much easier to find.",
		CHESSPIECE_CATCOON = "It would probably make a great scratching post.",
        CHESSPIECE_GUARDIANPHASE3 = "I much prefer it this way.",
        CHESSPIECE_EYEOFTERROR = "It's giving me a stony stare.",
        CHESSPIECE_TWINSOFTERROR = "That was a terrible night of very uncomfortable eye contact.",

        CHESSJUNK1 = "A pile of broken chess pieces.",
        CHESSJUNK2 = "Another pile of broken chess pieces.",
        CHESSJUNK3 = "Even more broken chess pieces.",
		CHESTER = "Otto von Chesterfield, Esq.",
		CHESTER_EYEBONE =
		{
			GENERIC = "It's looking at me.",
			WAITING = "It went to sleep.",
		},
		COOKEDMANDRAKE = "Good riddence.",
		COOKEDMEAT = "Cooked to perfection.",
		COOKEDMONSTERMEAT = "I think I can eat this.",
		COOKEDSMALLMEAT = "Not very filling but still good.",
		COOKPOT =
		{
			COOKING_LONG = "Fuck me why did I cook this?",
			COOKING_SHORT = "Neat it's almost done.",
			DONE = "Is it safe to eat?",
			EMPTY = "It's empty.",
			BURNT = "You're not suppose to cook the pot.",
		},
		CORN = "It's corn.",
		CORN_COOKED = "It's cooked corn.",
		CORN_SEEDS = "It's a seed.",
        CANARY =
		{
			GENERIC = "Some sort of yellow creature made of science.",
			HELD = "I'm not squishing you, am I?",
		},
        CANARY_POISONED = "It's probably fine.",

		CRITTERLAB = "Is there something in there?",
        CRITTER_GLOMLING = "The fuck is this?",
        CRITTER_DRAGONLING = "It's wyrmed its way into my heart.",
		CRITTER_LAMB = "Much less mucusy than its momma.",
        CRITTER_PUPPY = "Pretty cute for a lil monster!",
        CRITTER_KITTEN = "You'd make a good lab assistant.",
        CRITTER_PERDLING = "My feathered friend.",
		CRITTER_LUNARMOTHLING = "I keep her around because she's good at mothematics.",

		CROW =
		{
			GENERIC = "Better then a pigeon!",
			HELD = "He's not very happy in there.",
		},
		CUTGRASS = "Cut grass, ready for arts and crafts.",
		CUTREEDS = "Cut reeds, ready for crafting and hobbying.",
		CUTSTONE = "Seductively smooth.",
		DEADLYFEAST = "A most potent dish.", --unimplemented
		DEER =
		{
			GENERIC = "Is it staring at me? ...No, I guess not.",
			ANTLER = "What an impressive antler!",
		},
        DEER_ANTLER = "Was that supposed to come off?",
        DEER_GEMMED = "It's being controlled by that beast!",
		DEERCLOPS = "I bet I can kill that!",
		DEERCLOPS_EYEBALL = "This is really gross.",
		EYEBRELLAHAT =	"It watches over the wearer.",
		DEPLETED_GRASS =
		{
			GENERIC = "It's probably a tuft of grass.",
		},
        GOGGLESHAT = "What a stylish pair of goggles.",
        DESERTHAT = "Quality eye protection.",
		DEVTOOL = "It smells of bacon!",
		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "It's a pile of dirt... or IS it?",
		DIVININGROD =
		{
			COLD = "The signal is very faint.", --singleplayer
			GENERIC = "It's some kind of homing device.", --singleplayer
			HOT = "This thing's going crazy!", --singleplayer
			WARM = "I'm headed in the right direction.", --singleplayer
			WARMER = "Must be getting pretty close.", --singleplayer
		},
		DIVININGRODBASE =
		{
			GENERIC = "I wonder what it does.", --singleplayer
			READY = "It looks like it needs a large key.", --singleplayer
			UNLOCKED = "Now the machine can work!", --singleplayer
		},
		DIVININGRODSTART = "That rod looks useful!", --singleplayer
		DRAGONFLY = "Holy fuck that's a dragonfly!",
		ARMORDRAGONFLY = "Hot mail!",
		DRAGON_SCALES = "They're still warm.",
		DRAGONFLYCHEST = "Next best thing to a lockbox!",
		DRAGONFLYFURNACE =
		{
			HAMMERED = "I don't think it's supposed to look like that.",
			GENERIC = "Produces a lot of heat, but not much light.", --no gems
			NORMAL = "Is it winking at me?", --one gem
			HIGH = "It's scalding!", --two gems
		},

        HUTCH = "Hutch Danglefish, P.I.",
        HUTCH_FISHBOWL =
        {
            GENERIC = "I always wanted one of these.",
            WAITING = "Now what?",
        },
		LAVASPIT =
		{
			HOT = "Hot spit!",
			COOL = "Cool spit!",
		},
		LAVA_POND = "That's lava!",
		LAVAE = "Too hot to handle.",
		LAVAE_COCOON = "Cooled off and chilled out.",
		LAVAE_PET =
		{
			STARVING = "It appears to be starving.",
			HUNGRY = "it appears to be hungry.",
			CONTENT = "It seems happy.",
			GENERIC = "Aww. Who's a good monster?",
		},
		LAVAE_EGG =
		{
			GENERIC = "There's a faint warmth coming from inside.",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "I don't think that egg is warm enough.",
			COMFY = "I never thought I would see a happy egg.",
		},
		LAVAE_TOOTH = "It's an egg tooth!",

		DRAGONFRUIT = "What a weird fruit.",
		DRAGONFRUIT_COOKED = "The fruit's still weird.",
		DRAGONFRUIT_SEEDS = "It's a seed.",
		DRAGONPIE = "The dragonfruit is very filling.",
		DRUMSTICK = "Ready for gobbling.",
		DRUMSTICK_COOKED = "Even better for gobbling!",
		DUG_BERRYBUSH = "Now it can be taken anywhere.",
		DUG_BERRYBUSH_JUICY = "This could be replanted closer to home.",
		DUG_GRASS = "It can be planted anywhere now.",
		DUG_MARSH_BUSH = "This needs to be planted.",
		DUG_SAPLING = "This needs to be planted.",
		DURIAN = "Oh, it smells!",
		DURIAN_COOKED = "Now it smells even worse!",
		DURIAN_SEEDS = "It's a seed.",
		EARMUFFSHAT = "Makes you warm and fuzzy inside. Outside, too.",
		EGGPLANT = "It doesn't look like an egg.",
		EGGPLANT_COOKED = "It's even less eggy.",
		EGGPLANT_SEEDS = "It's a seed.",

		ENDTABLE =
		{
			BURNT = "A burnt vase on a burnt table.",
			GENERIC = "A flower in a vase on a table.",
			EMPTY = "I should put something in there.",
			WILTED = "Not looking too fresh.",
			FRESHLIGHT = "It's nice to have a little light.",
			OLDLIGHT = "Did we remember to pick up new bulbs?", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			POISON = "It looks unhappy about me stealing those birchnuts!",
			GENERIC = "It's all leafy. Most of the time.",
		},
		ACORN = "There's definitely something inside there.",
        ACORN_SAPLING = "It'll be a tree soon!",
		ACORN_COOKED = "Roasted to perfection.",
		BIRCHNUTDRAKE = "A mad little nut.",
		EVERGREEN =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "It's all piney.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "This sad tree has no cones.",
		},
		TWIGGYTREE =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "It's all stick-y.",
			DISEASED = "It looks sick. More so than usual.", --unimplemented
		},
		TWIGGY_NUT_SAPLING = "It doesn't need any help to grow.",
        TWIGGY_OLD = "That tree looks pretty wimpy.",
		TWIGGY_NUT = "There's a stick-y tree inside it that wants to get out.",
		EYEPLANT = "I think I'm being watched.",
		INSPECTSELF = "Am I still in one piece?",
		FARMPLOT =
		{
			GENERIC = "I don't know anything about farming...",
			GROWING = "I guess its growing!",
			NEEDSFERTILIZER = "Maybe I should smeer poo on it?",
			BURNT = "Pretty sure plants can't grow when burnt...",
		},
		FEATHERHAT = "BECOME THE BIRD!",
		FEATHER_CROW = "A feather from a black bird.",
		FEATHER_ROBIN = "A redbird feather.",
		FEATHER_ROBIN_WINTER = "A snowbird feather.",
		FEATHER_CANARY = "A canary feather.",
		FEATHERPENCIL = "It's a pencil made from a feather.",
        COOKBOOK = "I've always been hungry for knowledge.",
		FEM_PUPPET = "She's trapped!", --single player
		FIREFLIES =
		{
			GENERIC = "These bugs are ok.",
			HELD = "They make my pocket glow!",
		},
		FIREHOUND = "That one is glowy.",
		FIREPIT =
		{
			EMBERS = "It's dying.",
			GENERIC = "Ahhhh a trusty firepit.",
			HIGH = "Yes BURN!",
			LOW = "It's slowly dying.",
			NORMAL = "Nice and comfy.",
			OUT = "Does anyone have any boards?",
		},
		COLDFIREPIT =
		{
			EMBERS = "It's dying.",
			GENERIC = "Ahhhh a trusty firepit but cold.",
			HIGH = "Yes BURN!... does this burn?",
			LOW = "It's slowly dying.",
			NORMAL = "Nice and comfy.",
			OUT = "Does anyone have any boards?",
		},
		FIRESTAFF = "I don't want to set the world on fire.",
		FIRESUPPRESSOR =
		{
			ON = "Fling on!",
			OFF = "All quiet on the flinging front.",
			LOWFUEL = "The fuel tank is getting a bit low.",
		},

		FISH = "Now I shall eat for a day.",
		FISHINGROD = "Hook, line and stick!",
		FISHSTICKS = "Sticks to your ribs.",
		FISHTACOS = "Crunchy and delicious!",
		FISH_COOKED = "Grilled to perfection.",
		FLINT = "It's a very sharp rock.",
		FLOWER =
		{
            GENERIC = "It's pretty, but it smells like a common laborer.",
            ROSE = "To match my rosy cheeks.",
        },
        FLOWER_WITHERED = "I don't think it got enough sun.",
		FLOWERHAT = "It smells like prettiness.",
		FLOWER_EVIL = "Augh! It's so evil!",
		FOLIAGE = "Some leafy greens.",
		FOOTBALLHAT = "I don't like sports.",
        FOSSIL_PIECE = "Yep, those are bones.",
        FOSSIL_STALKER =
        {
			GENERIC = "Still missing some pieces.",
			FUNNY = "Dude what the fuck am I doing?",
			COMPLETE = "It's alive! Oh wait, no, it's not.",
        },
        STALKER = "The skeleton fused with the shadows!",
        STALKER_ATRIUM = "Why'd it have to be so big?",
        STALKER_MINION = "Anklebiters!",
        THURIBLE = "It smells like chemicals.",
        ATRIUM_OVERGROWTH = "I don't recognize any of these symbols.",
		FROG =
		{
			DEAD = "The frog has perished.",
			GENERIC = "Ew it looks creepy.",
			SLEEPING = "I should kill it whilst I have the chance.",
		},
		FROGGLEBUNWICH = "Not the nicest sandwich.",
		FROGLEGS = "Narly.",
		FROGLEGS_COOKED = "These taste funky.",
		FRUITMEDLEY = "Fruity.",
		FURTUFT = "Black and white fur.",
		GEARS = "Gears thankfully not of war.",
		GHOST = "AAAAAGGGGGHHHHH GHOSTS!",
		GOLDENAXE = "That's one fancy axe. Prime for killing.",
		GOLDENPICKAXE = "Hey, isn't gold really soft?",
		GOLDENPITCHFORK = "Why did I even make a pitchfork this fancy?",
		GOLDENSHOVEL = "I can't wait to dig holes.",
		GOLDNUGGET = "I can't eat it, but it sure is shiny.",
		GRASS =
		{
			BARREN = "It needs poop.",
			WITHERED = "It's not going to grow back while it's so hot.",
			BURNING = "That's burning fast!",
			GENERIC = "It's a tuft of grass.",
			PICKED = "It was cut down in the prime of its life.",
			DISEASED = "It looks pretty sick.", --unimplemented
			DISEASING = "Err, something's not right.", --unimplemented
		},
		GRASSGEKKO =
		{
			GENERIC = "It's an extra leafy lizard.",
			DISEASED = "It looks really sick.", --unimplemented
		},
		GREEN_CAP = "It seems pretty normal.",
		GREEN_CAP_COOKED = "It's different now...",
		GREEN_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		GUNPOWDER = "It looks like pepper.",
		HAMBAT = "This seems unsanitary.",
		HAMMER = "Stop! It's time! To hammer things!",
		HEALINGSALVE = "The stinging means that it's working.",
		HEATROCK =
		{
			FROZEN = "It's colder than ice.",
			COLD = "That's a cold stone.",
			GENERIC = "I could manipulate its temperature.",
			WARM = "It's quite warm and cuddly... for a rock!",
			HOT = "Nice and toasty hot!",
		},
		HOME = "FBI OPEN UP!",
		HOMESIGN =
		{
			GENERIC = "It says \"You are here\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		HONEY = "Looks delicious!",
		HONEYCOMB = "Bees used to live in this.",
		HONEYHAM = "Sweet and savory.",
		HONEYNUGGETS = "Tastes like chicken, but I don't think it is.",
		HORN = "It sounds like a beefalo field in there.",
		HOUND = "So you have chosen death!",
		HOUNDCORPSE =
		{
			GENERIC = "The smell is not the most pleasant.",
			BURNING = "I think we're safe now.",
			REVIVING = "We'll be fine.",
		},
		HOUNDBONE = "Creepy.",
		HOUNDMOUND = "I've got no bones to pick with the owner. Really.",
		ICEBOX = "I have harnessed the power of cold!",
		ICEHAT = "Stay cool, boy.",
		ICEHOUND = "Are there hounds for every season?",
		INSANITYROCK =
		{
			ACTIVE = "TAKE THAT, SANE SELF!",
			INACTIVE = "It's more of a pyramid than an obelisk.",
		},
		JAMMYPRESERVES = "Probably should have made a jar.",

		KABOBS = "Lunch on a stick.",
		KILLERBEE =
		{
			GENERIC = "Oh no! It's a killer bee!",
			HELD = "This seems dangerous.",
		},
		KNIGHT = "Check it out!",
		KOALEFANT_SUMMER = "Adorably delicious.",
		KOALEFANT_WINTER = "It looks warm and full of meat.",
		KRAMPUS = "He's going after my stuff!",
		KRAMPUS_SACK = "Ew. It has Krampus slime all over it.",
		LEIF = "He's huge!",
		LEIF_SPARSE = "He's huge!",
		LIGHTER  = "It's her lucky lighter.",
		LIGHTNING_ROD =
		{
			CHARGED = "Saved my life.",
			GENERIC = "So I don't get struck by lightning...",
		},
		LIGHTNINGGOAT =
		{
			GENERIC = "\"Baaaah\" yourself!",
			CHARGED = "I don't think it liked being struck by lightning.",
		},
		LIGHTNINGGOATHORN = "It's like a miniature lightning rod.",
		GOATMILK = "It's buzzing with tastiness!",
		LITTLE_WALRUS = "He won't be cute and cuddly forever.",
		LIVINGLOG = "It looks worried.",
		LOG =
		{
			BURNING = "That's some hot wood!",
			GENERIC = "It's big, it's heavy, and it's wood.",
		},
		LUCY = "That's a prettier axe than I'm used to.",
		LUREPLANT = "It's so alluring.",
		LUREPLANTBULB = "Now I can start my very own meat farm.",
		MALE_PUPPET = "He's trapped!", --single player

		MANDRAKE_ACTIVE = "Cut it out!",
		MANDRAKE_PLANTED = "I've heard strange things about those plants.",
		MANDRAKE = "The thing looks funky.",

        MANDRAKESOUP = "Well, he won't be waking up again.",
        MANDRAKE_COOKED = "It doesn't seem so strange anymore.",
        MAPSCROLL = "A blank map. Doesn't seem very useful.",
        MARBLE = "Fancy!",
        MARBLEBEAN = "I traded the old family cow for it.",
        MARBLEBEAN_SAPLING = "It looks carved.",
        MARBLESHRUB = "Makes sense to me.",
        MARBLEPILLAR = "I think I could use that.",
        MARBLETREE = "I don't think an axe will cut it.",
        MARSH_BUSH =
        {
			BURNT = "One less thorn patch to worry about.",
            BURNING = "That's burning fast!",
            GENERIC = "It looks thorny.",
            PICKED = "Ouch.",
        },
        BURNT_MARSH_BUSH = "It's all burnt up.",
        MARSH_PLANT = "It's a plant.",
        MARSH_TREE =
        {
            BURNING = "Spikes and fire!",
            BURNT = "Now it's burnt and spiky.",
            CHOPPED = "Not so spiky now!",
            GENERIC = "Those spikes look sharp!",
        },
        MAXWELL = "I hate that guy.",--single player
        MAXWELLHEAD = "I can see into his pores.",--removed
        MAXWELLLIGHT = "I wonder how they work.",--single player
        MAXWELLLOCK = "Looks almost like a key hole.",--single player
        MAXWELLTHRONE = "That doesn't look very comfortable.",--single player
        MEAT = "It's a bit gamey, but it'll do.",
        MEATBALLS = "It's just a big wad of meat.",
        MEATRACK =
        {
            DONE = "Jerky time!",
            DRYING = "Meat takes a while to dry.",
            DRYINGINRAIN = "Meat takes even longer to dry in rain.",
            GENERIC = "I should dry some meats.",
            BURNT = "The rack got dried.",
            DONE_NOTMEAT = "In laboratory terms, we would call that \"dry\".",
            DRYING_NOTMEAT = "Drying things is not an exact science.",
            DRYINGINRAIN_NOTMEAT = "Rain, rain, go away. Be wet again another day.",
        },
        MEAT_DRIED = "Just jerky enough.",
        MERM = "Smells fishy!",
        MERMHEAD =
        {
            GENERIC = "The stinkiest thing I'll smell all day.",
            BURNT = "Burnt merm flesh somehow smells even worse.",
        },
        MERMHOUSE =
        {
            GENERIC = "Who would live here?",
            BURNT = "Nothing to live in, now.",
        },
        MINERHAT = "A hands-free way to brighten your day.",
        MONKEY = "Mmmmmmm, monkey.",
        MONKEYBARREL = "Did that just move?",
        MONSTERLASAGNA = "I'm like 30% sure I can eat this.",
        FLOWERSALAD = "A bowl of foliage.",
        ICECREAM = "I scream for ice cream!",
        WATERMELONICLE = "Cryogenic watermelon.",
        TRAILMIX = "A healthy, natural snack.",
        HOTCHILI = "Five alarm!",
        GUACAMOLE = "Avogadro's favorite dish.",
        MONSTERMEAT = "Yeah I can eat this.... I think?",
        MONSTERMEAT_DRIED = "A little bit more edible...",
        MOOSE = "I must kill it!",
        MOOSE_NESTING_GROUND = "It puts its babies there.",
        MOOSEEGG = "Egg",
        MOSSLING = "Baby moose!",
        FEATHERFAN = "Down, to bring the temperature down.",
        MINIFAN = "Somehow the breeze comes out the back twice as fast.",
        GOOSE_FEATHER = "Fluffy!",
        STAFF_TORNADO = "Spinning doom.",
        MOSQUITO =
        {
            GENERIC = "Disgusting little bloodsucker.",
            HELD = "Hey, is that my blood?",
        },
        MOSQUITOSACK = "It's probably someone else's blood...",
        MOUND =
        {
            DUG = "He probably deserved it.",
            GENERIC = "I bet there's all sorts of good stuff down there!",
        },
        NIGHTLIGHT = "It gives off a spooky light.",
        NIGHTMAREFUEL = "This stuff is crazy!",
        NIGHTSWORD = "This is very counter intuitive.",
        NITRE = "I'm not a geologist.",
        ONEMANBAND = "We should add a beefalo bell.",
        OASISLAKE =
		{
			GENERIC = "Is that a mirage?",
			EMPTY = "It's dry as a bone.",
		},
        PANDORASCHEST = "It may contain something fantastic! Or horrible.",
        PANFLUTE = "To serenade the animals.",
        PAPYRUS = "Some sheets of paper.",
        WAXPAPER = "Some sheets of wax paper.",
        PENGUIN = "Must be breeding season.",
        PERD = "Stupid bird! Stay away from those berries!",
        PEROGIES = "These turned out pretty good.",
        PETALS = "Sure showed those flowers who's boss!",
        PETALS_EVIL = "I'm not sure I want to hold those.",
        PHLEGM = "It's thick and pliable. And salty.",
        PICKAXE = "It's an axe that picks.",
        PIGGYBACK = "This little piggy's gone... \"home\".",
        PIGHEAD =
        {
            GENERIC = "Looks like an offering to the beast.",
            BURNT = "Crispy.",
        },
        PIGHOUSE =
        {
            FULL = "I can see a snout pressed up against the window.",
            GENERIC = "These pigs have pretty fancy houses.",
            LIGHTSOUT = "Come ON! I know you're home!",
            BURNT = "Not so fancy now, pig!",
        },
        PIGKING = "Ewwww, he smells!",
        PIGMAN =
        {
            DEAD = "Someone should tell its family.",
            FOLLOWER = "You're part of my entourage.",
            GENERIC = "They kind of creep me out.",
            GUARD = "Looks serious.",
            WEREPIG = "Not a friendly pig!!",
        },
        PIGSKIN = "It still has the tail on it.",
        PIGTENT = "Smells like bacon.",
        PIGTORCH = "Sure looks cozy.",
        PINECONE = "I can hear a tiny tree inside it, trying to get out.",
        PINECONE_SAPLING = "It'll be a tree soon!",
        LUMPY_SAPLING = "How did this tree even reproduce?",
        PITCHFORK = "Now I just need an angry mob to join.",
        PLANTMEAT = "That doesn't look very appealing.",
        PLANTMEAT_COOKED = "At least it's warm now.",
        PLANT_NORMAL =
        {
            GENERIC = "I wish I knew anything about plants!",
            GROWING = "I think it's growing?",
            READY = "Looks grown, I don't know.",
            WITHERED = "The heat killed it.",
        },
        POMEGRANATE = "It looks like the inside of an alien's brain.",
        POMEGRANATE_COOKED = "Haute Cuisine!",
        POMEGRANATE_SEEDS = "It's a seed.",
        POND = "I can't see the bottom!",
        POOP = "I should fill my pockets!",
        FERTILIZER = "That is definitely a bucket full of poop.",
        PUMPKIN = "It's as big as my head!",
        PUMPKINCOOKIE = "That's a pretty gourd cookie!",
        PUMPKIN_COOKED = "How did it not turn into a pie?",
        PUMPKIN_LANTERN = "Spooky!",
        PUMPKIN_SEEDS = "It's a seed.",
        PURPLEAMULET = "It's whispering to me.",
        PURPLEGEM = "It's a gem.... It's purple",
        RABBIT =
        {
            GENERIC = "He's looking for carrots.",
            HELD = "Consider yourself lucky?",
        },
        RABBITHOLE =
        {
            GENERIC = "It's a rabbit hole.",
            SPRING = "Do rabbits come out in spring?",
        },
        RAINOMETER =
        {
            GENERIC = "It measures cloudiness.",
            BURNT = "The measuring parts went up in a cloud of smoke.",
        },
        RAINCOAT = "Keeps the rain where it ought to be. Outside your body.",
        RAINHAT = "Messy hair... the terrible price of dryness.",
        RATATOUILLE = "An excellent source of fiber.",
        RAZOR = "A sharpened rock tied to a stick. For hygiene!",
        REDGEM = "It sparkles with inner warmth.",
        RED_CAP = "It smells funny.",
        RED_CAP_COOKED = "It's different now...",
        RED_MUSHROOM =
        {
            GENERIC = "It's a mushroom.",
            INGROUND = "It's sleeping.",
            PICKED = "I wonder if it will come back?",
        },
        REEDS =
        {
            BURNING = "That's really burning!",
            GENERIC = "It's a clump of reeds.",
            PICKED = "All the useful reeds have already been picked.",
        },
        RELIC = "Ancient household goods.",
        RUINS_RUBBLE = "This can be fixed.",
        RUBBLE = "Just bits and pieces of rock.",
        RESEARCHLAB =
        {
            GENERIC = "It's a magic box.",
            BURNT = "Well shit.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "It's a better magic box.",
            BURNT = "Ah fuck.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "Ahhh the good o' Shadow Manipulator",
            BURNT = "Motherfucker that was expensive.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "It's.... a hat?",
            BURNT = "Now it's a burnt hat?",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "That's creepy but it'll keep me alive.",
            BURNT = "Not much use anymore.",
        },
        RESURRECTIONSTONE = "It's always a good idea to touch base.",
        ROBIN =
        {
            GENERIC = "Go away! Shooo!",
            HELD = "Why did I put it in my pocket?",
        },
        ROBIN_WINTER =
        {
            GENERIC = "Go away! Shooo!",
            HELD = "Why did I put it in my pocket?",
        },
        ROBOT_PUPPET = "They're trapped!", --single player
        ROCK_LIGHT =
        {
            GENERIC = "A crusted over lava pit.",--removed
            OUT = "Looks fragile.",--removed
            LOW = "The lava's crusting over.",--removed
            NORMAL = "Nice and comfy.",--removed
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "I think I can lift this one.",
            RAISED = "It's out of reach.",
        },
        ROCK = "It wouldn't fit in my pocket.",
        PETRIFIED_TREE = "It looks scared stiff.",
        ROCK_PETRIFIED_TREE = "It looks scared stiff.",
        ROCK_PETRIFIED_TREE_OLD = "It looks scared stiff.",
        ROCK_ICE =
        {
            GENERIC = "Ice to meet you.",
            MELTED = "Won't be useful until it freezes again.",
        },
        ROCK_ICE_MELTED = "Won't be useful until it freezes again.",
        ICE = "Ice to meet you.",
        ROCKS = "We could make stuff with these.",
        ROOK = "Storm the castle!",
        ROPE = "Some short lengths of rope.",
        ROTTENEGG = "Ew! It stinks!",
        ROYAL_JELLY = "It infuses the eater with the power of science!",
        JELLYBEAN = "One part jelly, one part bean.",
        SADDLE_BASIC = "That'll allow the mounting of some smelly animal.",
        SADDLE_RACE = "This saddle really flies!",
        SADDLE_WAR = "The only problem is the saddle sores.",
        SADDLEHORN = "This could take a saddle off.",
        SALTLICK = "How many licks does it take to get to the center?",
        BRUSH = "I bet the beefalo really like this.",
		SANITYROCK =
		{
			ACTIVE = "That's a CRAZY looking rock!",
			INACTIVE = "Where did the rest of it go?",
		},
		SAPLING =
		{
			BURNING = "That's burning fast!",
			WITHERED = "It might be okay if it cooled down.",
			GENERIC = "Baby trees are so cute!",
			PICKED = "That'll teach him.",
			DISEASED = "It looks pretty sick.", --removed
			DISEASING = "Err, something's not right.", --removed
		},
   		SCARECROW =
   		{
			GENERIC = "All dressed up and no where to crow.",
			BURNING = "Someone made that strawman eat crow.",
			BURNT = "Someone MURDERed that scarecrow!",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "We can make stone sculptures with this.",
			BLOCK = "Ready for sculpting.",
			SCULPTURE = "A masterpiece!",
			BURNT = "Burnt right down.",
   		},
        SCULPTURE_KNIGHTHEAD = "Where's the rest of it?",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "It's an odd marble statue.",
			UNCOVERED = "I guess he cracked under the pressure.",
			FINISHED = "At least it's back in one piece now.",
			READY = "Something's moving inside.",
		},
        SCULPTURE_BISHOPHEAD = "Is that a head?",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "It looks old, but it feels new.",
			UNCOVERED = "There's a big piece missing.",
			FINISHED = "Now what?",
			READY = "Something's moving inside.",
		},
        SCULPTURE_ROOKNOSE = "Where did this come from?",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "It's some sort of marble statue.",
			UNCOVERED = "It's not in the best shape.",
			FINISHED = "All patched up.",
			READY = "Something's moving inside.",
		},
        GARGOYLE_HOUND = "I don't like how it's looking at me.",
        GARGOYLE_WEREPIG = "It looks very lifelike.",
		SEEDS = "Each one is a tiny mystery.",
		SEEDS_COOKED = "That cooked the life right out of 'em!",
		SEWING_KIT = "Darn it! Darn it all to heck!",
		SEWING_TAPE = "Good for mending.",
		SHOVEL = "There's a lot going on underground.",
		SILK = "It comes from a spider's butt.",
		SKELETON = "Better you than me.",
		SCORCHED_SKELETON = "Spooky.",
		SKULLCHEST = "I'm not sure if I want to open it.", --removed
		SMALLBIRD =
		{
			GENERIC = "That's a rather small bird.",
			HUNGRY = "It looks hungry.",
			STARVING = "It must be starving.",
			SLEEPING = "It's barely making a peep.",
		},
		SMALLMEAT = "A tiny chunk of dead animal.",
		SMALLMEAT_DRIED = "A little jerky.",
		SPAT = "What a crusty looking animal.",
		SPEAR = "That's one pointy stick.",
		SPEAR_WATHGRITHR = "It feels very stabby.",
		WATHGRITHRHAT = "Pretty fancy hat, that.",
		SPIDER =
		{
			DEAD = "Ewwww!",
			GENERIC = "I hate spiders.",
			SLEEPING = "Better to kill it before it wakes up.",
		},
		SPIDERDEN = "Sticky!",
		SPIDEREGGSACK = "I hope these don't hatch. Period.",
		SPIDERGLAND = "It has a tangy, antiseptic smell.",
		SPIDERHAT = "I hope I got all of the spider goo out of it.",
		SPIDERQUEEN = "AHHHHHHHH! That spider is huge!",
		SPIDER_WARRIOR =
		{
			DEAD = "Good riddance!",
			GENERIC = "Looks even meaner than usual.",
			SLEEPING = "Better to kill it before it wakes up.",
		},
		SPOILED_FOOD = "I should still be able to eat this.",
        STAGEHAND =
        {
			AWAKE = "Just keep your hand to yourself, alright?",
			HIDING = "I know you're there.",
        },
        STATUE_MARBLE =
        {
            GENERIC = "It's a fancy marble statue.",
            TYPE1 = "Don't lose your head now!",
            TYPE2 = "Statuesque.",
            TYPE3 = "I wonder who the artist is.", --bird bath type statue
        },
		STATUEHARP = "What happened to the head?",
		STATUEMAXWELL = "He's a lot shorter in person.",
		STEELWOOL = "Scratchy metal fibers.",
		STINGER = "Looks sharp!",
		STRAWHAT = "Hats always ruin my hair.",
		STUFFEDEGGPLANT = "It's really stuffing!",
		SWEATERVEST = "This vest is dapper as all get-out.",
		REFLECTIVEVEST = "Keep off, evil sun!",
		HAWAIIANSHIRT = "It's not lab-safe!",
		TAFFY = "If I had a dentist they'd be mad I ate stuff like that.",
		TALLBIRD = "That's a tall bird!",
		TALLBIRDEGG = "Egg.",
		TALLBIRDEGG_COOKED = "Delicious and nutritious.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Is it shivering or am I?",
			GENERIC = "Looks like it's hatching!",
			HOT = "Are eggs supposed to sweat?",
			LONG = "I have a feeling this is going to take a while...",
			SHORT = "It should hatch any time now.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "That's quite an egg!",
			PICKED = "The nest is empty.",
		},
		TEENBIRD =
		{
			GENERIC = "Not a very tall bird.",
			HUNGRY = "You need some food and quick, huh?",
			STARVING = "It has a dangerous look in its eye.",
			SLEEPING = "It's getting some shut-eye",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "With this I can surely pass through space and time!", --single player
			GENERIC = "This appears to be a nexus to another world!", --single player
			LOCKED = "There's still something missing.", --single player
			PARTIAL = "Soon, the invention will be complete!", --single player
		},
		TELEPORTATO_BOX = "This may control the polarity of the whole universe.", --single player
		TELEPORTATO_CRANK = "Tough enough to handle the most intense experiments.", --single player
		TELEPORTATO_POTATO = "This metal potato contains great and fearful power...", --single player
		TELEPORTATO_RING = "A ring that could focus dimensional energies.", --single player
		TELESTAFF = "That could reveal the world.",
		TENT =
		{
			GENERIC = "Dude, I have insomnia.",
			BURNT = "Wasn't much use to me anyway.",
		},
		SIESTAHUT =
		{
			GENERIC = "Dude, I have insomnia.",
			BURNT = "Wasn't much use to me anyway.",
		},
		TENTACLE = "That looks dangerous.",
		TENTACLESPIKE = "It's pointy and slimy.",
		TENTACLESPOTS = "I think these were its genitalia.",
		TENTACLE_PILLAR = "A slimy pole.",
        TENTACLE_PILLAR_HOLE = "Seems stinky, but worth exploring.",
		TENTACLE_PILLAR_ARM = "Little slippery arms.",
		TENTACLE_GARDEN = "Yet another slimy pole.",
		TOPHAT = "What a nice hat.",
		TORCH = "Something to hold back the night.",
		TRANSISTOR = "It's whirring with electricity.",
		TRAP = "I wove it real tight.",
		TRAP_TEETH = "This is a nasty surprise.",
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!", --single player
		TREASURECHEST =
		{
			GENERIC = "It's a tickle trunk!",
			BURNT = "That trunk was truncated.",
		},
		TREASURECHEST_TRAP = "How convenient!",
		SACRED_CHEST =
		{
			GENERIC = "I hear whispers. It wants something.",
			LOCKED = "It's passing its judgment.",
		},
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.", --removed

		TRINKET_1 = "Melted. Maybe Willow had some fun with them?", --Melted Marbles
		TRINKET_2 = "What's kazoo with you?", --Fake Kazoo
		TRINKET_3 = "The knot is stuck. Forever.", --Gord's Knot
		TRINKET_4 = "It must be some kind of religious artifact.", --Gnome
		TRINKET_5 = "Sadly it's too small for me to escape on.", --Toy Rocketship
		TRINKET_6 = "Their electricity carrying days are over.", --Frazzled Wires
		TRINKET_7 = "There's no time for fun and games!", --Ball and Cup
		TRINKET_8 = "Great. All of my tub stopping needs are met.", --Rubber Bung
		TRINKET_9 = "I'm more of a zipper person, myself.", --Mismatched Buttons
		TRINKET_10 = "They've quickly become Wes' favorite prop.", --Dentures
		TRINKET_11 = "Hal whispers beautiful lies to me.", --Lying Robot
		TRINKET_12 = "That's just asking to be experimented on.", --Dessicated Tentacle
		TRINKET_13 = "It must be some kind of religious artifact.", --Gnomette
		TRINKET_14 = "Now if I only had some tea...", --Leaky Teacup
		TRINKET_15 = "...Maxwell left his stuff out again.", --Pawn
		TRINKET_16 = "...Maxwell left his stuff out again.", --Pawn
		TRINKET_17 = "A horrifying utensil fusion. Maybe science *can* go too far.", --Bent Spork
		TRINKET_18 = "I wonder what it's hiding?", --Trojan Horse
		TRINKET_19 = "It doesn't spin very well.", --Unbalanced Top
		TRINKET_20 = "Wigfrid keeps jumping out and hitting me with it?!", --Backscratcher
		TRINKET_21 = "This egg beater is all bent out of shape.", --Egg Beater
		TRINKET_22 = "I have a few theories about this string.", --Frayed Yarn
		TRINKET_23 = "I can put my shoes on without help, thanks.", --Shoehorn
		TRINKET_24 = "I think Wickerbottom had a cat.", --Lucky Cat Jar
		TRINKET_25 = "It smells kind of stale.", --Air Unfreshener
		TRINKET_26 = "Food and a cup! The ultimate survival container.", --Potato Cup
		TRINKET_27 = "If you unwound it you could poke someone from really far away.", --Coat Hanger
		TRINKET_28 = "How Machiavellian.", --Rook
        TRINKET_29 = "How Machiavellian.", --Rook
        TRINKET_30 = "Honestly, he just leaves them out wherever.", --Knight
        TRINKET_31 = "Honestly, he just leaves them out wherever.", --Knight
        TRINKET_32 = "I know someone who'd have a ball with this!", --Cubic Zirconia Ball
        TRINKET_33 = "I hope this doesn't attract spiders.", --Spider Ring
        TRINKET_34 = "Let's make a wish. For science.", --Monkey Paw
        TRINKET_35 = "Hard to find a good flask around here.", --Empty Elixir
        TRINKET_36 = "I might need these after all that candy.", --Faux fangs
        TRINKET_37 = "I don't believe in the supernatural.", --Broken Stake
        TRINKET_38 = "I think it came from another world. One with grifts.", -- Binoculars Griftlands trinket
        TRINKET_39 = "I wonder where the other one is?", -- Lone Glove Griftlands trinket
        TRINKET_40 = "Holding it makes me feel like bartering.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "It's a little warm to the touch.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "It's full of someone's childhood memories.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "It's not very good at jumping.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "It's some sort of plant specimen.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "It's picking up frequencies from another world.", -- Odd Radio ONI trinket
        TRINKET_46 = "Maybe a tool for testing aerodynamics?", -- Hairdryer ONI trinket

        -- The numbers align with the trinket numbers above.
        LOST_TOY_1  = "I'm sure there's an explanation for that.",
        LOST_TOY_2  = "I'm sure there's an explanation for that.",
        LOST_TOY_7  = "I'm sure there's an explanation for that.",
        LOST_TOY_10 = "I'm sure there's an explanation for that.",
        LOST_TOY_11 = "I'm sure there's an explanation for that.",
        LOST_TOY_14 = "I'm sure there's an explanation for that.",
        LOST_TOY_18 = "I'm sure there's an explanation for that.",
        LOST_TOY_19 = "I'm sure there's an explanation for that.",
        LOST_TOY_42 = "I'm sure there's an explanation for that.",
        LOST_TOY_43 = "I'm sure there's an explanation for that.",

        HALLOWEENCANDY_1 = "The cavities are probably worth it, right?",
        HALLOWEENCANDY_2 = "What corruption of science grew these?",
        HALLOWEENCANDY_3 = "It's... corn.",
        HALLOWEENCANDY_4 = "They wriggle on the way down.",
        HALLOWEENCANDY_5 = "My teeth are going to have something to say about this tomorrow.",
        HALLOWEENCANDY_6 = "I... don't think I'll be eating those.",
        HALLOWEENCANDY_7 = "Everyone'll be raisin' a fuss over these.",
        HALLOWEENCANDY_8 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_9 = "Sticks to your teeth.",
        HALLOWEENCANDY_10 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_11 = "Much better tasting than the real thing.",
        HALLOWEENCANDY_12 = "Did that candy just move?", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Oh, my poor jaw.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "I don't do well with spice.", --Hot Lava pepper candy
        CANDYBAG = "It's some sort of delicious pocket dimension for sugary treats.",

		HALLOWEEN_ORNAMENT_1 = "A spectornament I could hang in a tree.",
		HALLOWEEN_ORNAMENT_2 = "Completely batty decoration.",
		HALLOWEEN_ORNAMENT_3 = "This wood look good hanging somewhere.",
		HALLOWEEN_ORNAMENT_4 = "Almost i-tentacle to the real ones.",
		HALLOWEEN_ORNAMENT_5 = "Eight-armed adornment.",
		HALLOWEEN_ORNAMENT_6 = "Everyone's raven about tree decorations these days.",

		HALLOWEENPOTION_DRINKS_WEAK = "I was hoping for something bigger.",
		HALLOWEENPOTION_DRINKS_POTENT = "A potent potion.",
        HALLOWEENPOTION_BRAVERY = "Full of grit.",
		HALLOWEENPOTION_MOON = "Infused with transforming such-and-such.",
		HALLOWEENPOTION_FIRE_FX = "Crystallized inferno.",
		MADSCIENCE_LAB = "Sanity is a small price to pay for science!",
		LIVINGTREE_ROOT = "Something's in there! I'll have to root it out.",
		LIVINGTREE_SAPLING = "It'll grow up big and horrifying.",

        DRAGONHEADHAT = "So who gets to be the head?",
        DRAGONBODYHAT = "I'm middling on this middle piece.",
        DRAGONTAILHAT = "Someone has to bring up the rear.",
        PERDSHRINE =
        {
            GENERIC = "I feel like it wants something.",
            EMPTY = "I've got to plant something there.",
            BURNT = "That won't do at all.",
        },
        REDLANTERN = "This lantern feels more special than the others.",
        LUCKY_GOLDNUGGET = "What a lucky find!",
        FIRECRACKERS = "Filled with explosion science!",
        PERDFAN = "It's inordinately large.",
        REDPOUCH = "Is there something inside?",
        WARGSHRINE =
        {
            GENERIC = "I should make something fun.",
            EMPTY = "I need to put a torch in it.",
            BURNING = "I should make something fun.", --for willow to override
            BURNT = "It burned down.",
        },
        CLAYWARG =
        {
        	GENERIC = "A terror cotta monster!",
        	STATUE = "Did it just move?",
        },
        CLAYHOUND =
        {
        	GENERIC = "It's been unleashed!",
        	STATUE = "It looks so real.",
        },
        HOUNDWHISTLE = "This'd stop a dog in its tracks.",
        CHESSPIECE_CLAYHOUND = "That thing's the leashed of my worries.",
        CHESSPIECE_CLAYWARG = "And I didn't even get eaten!",

		PIGSHRINE =
		{
            GENERIC = "More stuff to make.",
            EMPTY = "It's hungry for meat.",
            BURNT = "Burnt out.",
		},
		PIG_TOKEN = "This looks important.",
		PIG_COIN = "This'll pay off in a fight.",
		YOTP_FOOD1 = "A feast fit for me.",
		YOTP_FOOD2 = "A meal only a beast would love.",
		YOTP_FOOD3 = "Nothing fancy.",

		PIGELITE1 = "What are you looking at?", --BLUE
		PIGELITE2 = "He's got gold fever!", --RED
		PIGELITE3 = "Here's mud in your eye!", --WHITE
		PIGELITE4 = "Wouldn't you rather hit someone else?", --GREEN

		PIGELITEFIGHTER1 = "What are you looking at?", --BLUE
		PIGELITEFIGHTER2 = "He's got gold fever!", --RED
		PIGELITEFIGHTER3 = "Here's mud in your eye!", --WHITE
		PIGELITEFIGHTER4 = "Wouldn't you rather hit someone else?", --GREEN

		CARRAT_GHOSTRACER = "That's... disconcerting.",

        YOTC_CARRAT_RACE_START = "It's a good enough place to start.",
        YOTC_CARRAT_RACE_CHECKPOINT = "You've made your point.",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "It's really more of a finish circle than a line.",
            BURNT = "It's all gone up in flames!",
            I_WON = "Ha HA! Git Gud!",
            SOMEONE_ELSE_WON = "Sigh... congratulations, {winner}.",
        },

		YOTC_CARRAT_RACE_START_ITEM = "Well, it's a start.",
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = "That checks out.",
		YOTC_CARRAT_RACE_FINISH_ITEM = "The end's in sight.",

		YOTC_SEEDPACKET = "Looks pretty seedy, if you ask me.",
		YOTC_SEEDPACKET_RARE = "Hey there, fancy-plants!",

		MINIBOATLANTERN = "How illuminating!",

        YOTC_CARRATSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "Hm... what does a carrat like to eat?",
            BURNT = "Smells like roasted carrots.",
        },

        YOTC_CARRAT_GYM_DIRECTION =
        {
            GENERIC = "This'll get things moving in the right direction.",
            RAT = "You would make an excellent rat.",
            BURNT = "My training regimen crashed and burned.",
        },
        YOTC_CARRAT_GYM_SPEED =
        {
            GENERIC = "I need to get my carrat up to speed.",
            RAT = "Faster... faster!",
            BURNT = "I may have overdone it.",
        },
        YOTC_CARRAT_GYM_REACTION =
        {
            GENERIC = "Let's train those carrat-like reflexes!",
            RAT = "The rats's response time is steadily improving!",
            BURNT = "A small loss to take in the pursuit of science.",
        },
        YOTC_CARRAT_GYM_STAMINA =
        {
            GENERIC = "Getting strong now!",
            RAT = "This carrat... will be unstoppable!!",
            BURNT = "You can't stop progress! But this will delay it...",
        },

        YOTC_CARRAT_GYM_DIRECTION_ITEM = "I'd better get training!",
        YOTC_CARRAT_GYM_SPEED_ITEM = "I'd better get this assembled.",
        YOTC_CARRAT_GYM_STAMINA_ITEM = "This should help improve my carrat's stamina",
        YOTC_CARRAT_GYM_REACTION_ITEM = "This should improve my carrat's reaction time considerably.",

        YOTC_CARRAT_SCALE_ITEM = "This will help car-rate my car-rat.",
        YOTC_CARRAT_SCALE =
        {
            GENERIC = "Hopefully the scales tip in my favor.",
            CARRAT = "I suppose no matter what, it's still just a sentient vegetable.",
            CARRAT_GOOD = "This carrat looks ripe for racing!",
            BURNT = "What a mess.",
        },

        YOTB_BEEFALOSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "Hm... what makes a beefalo?",
            BURNT = "Smells like barbeque.",
        },

        BEEFALO_GROOMER =
        {
            GENERIC = "There's no beefalo here to groom.",
            OCCUPIED = "Let's beautify this beefalo!",
            BURNT = "I styled my beefalo in the hottest fashions... and paid the price.",
        },
        BEEFALO_GROOMER_ITEM = "I'd better set this up somewhere.",

		BISHOP_CHARGE_HIT = "Oof!",
		TRUNKVEST_SUMMER = "Wilderness casual.",
		TRUNKVEST_WINTER = "Winter survival gear.",
		TRUNK_COOKED = "Somehow even more nasal than before.",
		TRUNK_SUMMER = "A light breezy trunk.",
		TRUNK_WINTER = "A thick, hairy trunk.",
		TUMBLEWEED = "Who knows what that tumbleweed has picked up.",
		TURKEYDINNER = "Mmmm.",
		TWIGS = "It's a bunch of small twigs.",
		UMBRELLA = "I always hate when my hair gets wet and poofy.",
		GRASS_UMBRELLA = "My hair looks good wet... it's when it dries that's the problem.",
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.",
		WAFFLES = "I'm waffling on whether it needs more syrup.",
		WALL_HAY =
		{
			GENERIC = "Hmmmm. I guess that'll have to do.",
			BURNT = "That won't do at all.",
		},
		WALL_HAY_ITEM = "This seems like a bad idea.",
		WALL_STONE = "That's a nice wall.",
		WALL_STONE_ITEM = "They make me feel so safe.",
		WALL_RUINS = "An ancient piece of wall.",
		WALL_RUINS_ITEM = "A solid piece of history.",
		WALL_WOOD =
		{
			GENERIC = "Pointy!",
			BURNT = "Burnt!",
		},
		WALL_WOOD_ITEM = "Pickets!",
		WALL_MOONROCK = "Spacey and smooth!",
		WALL_MOONROCK_ITEM = "Very light, but surprisingly tough.",
		FENCE = "It's just a wood fence.",
        FENCE_ITEM = "All we need to build a nice, sturdy fence.",
        FENCE_GATE = "It opens. And closes sometimes, too.",
        FENCE_GATE_ITEM = "All we need to build a nice, sturdy gate.",
		WALRUS = "Walruses are natural predators.",
		WALRUSHAT = "It's covered with walrus hairs.",
		WALRUS_CAMP =
		{
			EMPTY = "Looks like somebody was camping here.",
			GENERIC = "It looks warm and cozy inside.",
		},
		WALRUS_TUSK = "I'm sure I'll find a use for it eventually.",
		WARDROBE =
		{
			GENERIC = "It holds dark, forbidden secrets...",
            BURNING = "That's burning fast!",
			BURNT = "It's out of style now.",
		},
		WARG = "You might be something to reckon with, big dog.",
        WARGLET = "It's going to be one of those days...",

		WASPHIVE = "I think those bees are mad.",
		WATERBALLOON = "What a scientific marvel!",
		WATERMELON = "Sticky sweet.",
		WATERMELON_COOKED = "Juicy and warm.",
		WATERMELONHAT = "Let the juice run down your face.",
		WAXWELLJOURNAL = "Spooky.",
		WETGOOP = "It tastes like nothing.",
        WHIP = "Nothing like loud noises to help keep the peace.",
		WINTERHAT = "It'll be good for when winter comes.",
		WINTEROMETER =
		{
			GENERIC = "Mercurial.",
			BURNT = "Its measuring days are over.",
		},

        WINTER_TREE =
        {
            BURNT = "That puts a damper on the festivities.",
            BURNING = "That was a mistake, I think.",
            CANDECORATE = "Happy Winter's Feast!",
            YOUNG = "It's almost Winter's Feast!",
        },
		WINTER_TREESTAND =
		{
			GENERIC = "I need a pine cone for that.",
            BURNT = "That puts a damper on the festivities.",
		},
        WINTER_ORNAMENT = "It's a winter ornament.",
        WINTER_ORNAMENTLIGHT = "A tree's not complete without some electricity.",
        WINTER_ORNAMENTBOSS = "This one is especially impressive.",
		WINTER_ORNAMENTFORGE = "I should hang this one over a fire.",
		WINTER_ORNAMENTGORGE = "For some reason it makes me hungry.",

        WINTER_FOOD1 = "The anatomy's not right, but I'll overlook it.", --gingerbread cookie
        WINTER_FOOD2 = "I'm going to eat forty.", --sugar cookie
        WINTER_FOOD3 = "A Yuletide toothache waiting to happen.", --candy cane
        WINTER_FOOD4 = "Mmmmm fruitcake.", --fruitcake
        WINTER_FOOD5 = "It's nice to eat something other than berries for once.", --yule log cake
        WINTER_FOOD6 = "I'm puddin' that straight in my mouth!", --plum pudding
        WINTER_FOOD7 = "It's a hollowed apple filled with yummy juice.", --apple cider
        WINTER_FOOD8 = "How does it stay warm?", --hot cocoa
        WINTER_FOOD9 = "Eggnog is ok.", --eggnog

		WINTERSFEASTOVEN =
		{
			GENERIC = "Despite being the festive season.... I can't cook.",
			COOKING = "I think it's cooking",
			ALMOST_DONE_COOKING = "I think it's almost done.",
			DISH_READY = "I think it's finished.",
		},
		BERRYSAUCE = "Equal parts merry and berry.",
		BIBINGKA = "Soft and spongy.",
		CABBAGEROLLS = "The meat hides inside the cabbage to avoid predators.",
		FESTIVEFISH = "It's fish in the festive season.",
		GRAVY = "It's all gravy.",
		LATKES = "I could eat a latke more of these.",
		LUTEFISK = "Is there any trumpetfisk?",
		MULLEDDRINK = "This punch has a kick to it.",
		PANETTONE = "This Yuletide bread really rose to the occasion.",
		PAVLOVA = "I lova good Pavlova.",
		PICKLEDHERRING = "You won't be herring any complaints from me.",
		POLISHCOOKIE = "I'll polish off this whole plate!",
		PUMPKINPIE = "I should probably just eat the whole thing...",
		ROASTTURKEY = "I see a big juicy drumstick with my name on it.",
		STUFFING = "That's the good stuff!",
		SWEETPOTATO = "It's potato but sweet.",
		TAMALES = "If I eat much more I'm going to start feeling a bit husky.",
		TOURTIERE = "Pleased to eat you.",

		TABLE_WINTERS_FEAST =
		{
			GENERIC = "A feastival table.",
			HAS_FOOD = "Time to eat!",
			WRONG_TYPE = "It's not the season for that.",
			BURNT = "Who would do such a thing?",
		},

		GINGERBREADWARG = "Time to desert this dessert.",
		GINGERBREADHOUSE = "Room and board all rolled into one.",
		GINGERBREADPIG = "I'd better follow him.",
		CRUMBS = "A crummy way to hide yourself.",
		WINTERSFEASTFUEL = "The spirit of the season!",

        KLAUS = "What on earth is that thing!",
        KLAUS_SACK = "We should definitely open that.",
		KLAUSSACKKEY = "It's really fancy for a deer antler.",
		WORMHOLE =
		{
			GENERIC = "Soft and undulating.",
			OPEN = "Science compels me to jump in.",
		},
		WORMHOLE_LIMITED = "Guh, that thing looks worse off than usual.",
		ACCOMPLISHMENT_SHRINE = "I want to use it, and I want the world to know that I did.", --single player
		LIVINGTREE = "Is it watching me?",
		ICESTAFF = "It's cold to the touch.",
		REVIVER = "The beating of this hideous heart will bring a ghost back to life!",
		SHADOWHEART = "What the hell is this?",
        ATRIUM_RUBBLE =
        {
			LINE_1 = "It depicts an old civilization. The people look hungry and scared.",
			LINE_2 = "This tablet is too worn to make out.",
			LINE_3 = "Something dark creeps over the city and its people.",
			LINE_4 = "The people are shedding their skins. They look different underneath.",
			LINE_5 = "It shows a massive, technologically advanced city.",
		},
        ATRIUM_STATUE = "It doesn't seem fully real.",
        ATRIUM_LIGHT =
        {
			ON = "A truly unsettling light.",
			OFF = "Something must power it.",
		},
        ATRIUM_GATE =
        {
			ON = "Back in working order.",
			OFF = "The essential components are still intact.",
			CHARGING = "It's gaining power.",
			DESTABILIZING = "The gateway is destabilizing.",
			COOLDOWN = "It needs time to recover. Me too.",
        },
        ATRIUM_KEY = "There is power emanating from it.",
		LIFEINJECTOR = "What the heck is this?",
		SKELETON_PLAYER =
		{
			MALE = "%s must've died from %s.",
			FEMALE = "%s must've died from %s.",
			ROBOT = "%s must've died from %s.",
			DEFAULT = "%s must've died from %s.",
		},
		HUMANMEAT = "Flesh is flesh. Where do I draw the line?",
		HUMANMEAT_COOKED = "Cooked nice and pink, but still morally gray.",
		HUMANMEAT_DRIED = "Letting it dry makes it not come from a human, right?",
		ROCK_MOON = "That rock came from the moon.",
		MOONROCKNUGGET = "That rock came from the moon.",
		MOONROCKCRATER = "I should stick something shiny in it. For research.",
		MOONROCKSEED = "That's a seed from the moon.",

        REDMOONEYE = "It can see and be seen for miles!",
        PURPLEMOONEYE = "Makes a good marker, but I wish it'd stop looking at me.",
        GREENMOONEYE = "That'll keep a watchful eye on the place.",
        ORANGEMOONEYE = "No one could get lost with that thing looking out for them.",
        YELLOWMOONEYE = "That ought to show everyone the way.",
        BLUEMOONEYE = "It's always smart to keep an eye out.",

        --Arena Event
        LAVAARENA_BOARLORD = "That's the guy in charge here.",
        BOARRIOR = "You sure are big!",
        BOARON = "I can take him!",
        PEGHOOK = "That spit is corrosive!",
        TRAILS = "He's got a strong arm on him.",
        TURTILLUS = "Its shell is so spiky!",
        SNAPPER = "This one's got bite.",
		RHINODRILL = "He's got a nose for this kind of work.",
		BEETLETAUR = "I can smell him from here!",

        LAVAARENA_PORTAL =
        {
            ON = "I'll just be going now.",
            GENERIC = "That's how we got here. Hopefully how we get back, too.",
        },
        LAVAARENA_KEYHOLE = "It needs a key.",
		LAVAARENA_KEYHOLE_FULL = "That should do it.",
        LAVAARENA_BATTLESTANDARD = "Everyone, break the Battle Standard!",
        LAVAARENA_SPAWNER = "This is where those enemies are coming from.",

        HEALINGSTAFF = "It conducts regenerative energy.",
        FIREBALLSTAFF = "It calls a meteor from above.",
        HAMMER_MJOLNIR = "It's a heavy hammer for hitting things.",
        SPEAR_GUNGNIR = "I could do a quick charge with that.",
        BLOWDART_LAVA = "That's a weapon I could use from range.",
        BLOWDART_LAVA2 = "It uses a strong blast of air to propel a projectile.",
        LAVAARENA_LUCY = "That weapon's for throwing.",
        WEBBER_SPIDER_MINION = "I guess they're fighting for us.",
        BOOK_FOSSIL = "This'll keep those monsters held for a little while.",
		LAVAARENA_BERNIE = "He might make a good distraction for us.",
		SPEAR_LANCE = "It gets to the point.",
		BOOK_ELEMENTAL = "I can't make out the text.",
		LAVAARENA_ELEMENTAL = "It's a rock monster!",

   		LAVAARENA_ARMORLIGHT = "Light, but not very durable.",
		LAVAARENA_ARMORLIGHTSPEED = "Lightweight and designed for mobility.",
		LAVAARENA_ARMORMEDIUM = "It offers a decent amount of protection.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "That could help me hit a little harder.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "I'd have energy for a few more stunts wearing that.",
		LAVAARENA_ARMORHEAVY = "That's as good as it gets.",
		LAVAARENA_ARMOREXTRAHEAVY = "This armor has been petrified for maximum protection.",

		LAVAARENA_FEATHERCROWNHAT = "Those fluffy feathers make me want to run!",
        LAVAARENA_HEALINGFLOWERHAT = "The blossom interacts well with healing magic.",
        LAVAARENA_LIGHTDAMAGERHAT = "My strikes would hurt a little more wearing that.",
        LAVAARENA_STRONGDAMAGERHAT = "It looks like it packs a wallop.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "Looks like it amplifies healing expertise.",
        LAVAARENA_EYECIRCLETHAT = "It has a gaze full of science.",
        LAVAARENA_RECHARGERHAT = "Those crystals will quicken my abilities.",
        LAVAARENA_HEALINGGARLANDHAT = "This garland will restore a bit of my vitality.",
        LAVAARENA_CROWNDAMAGERHAT = "That could cause some major destruction.",

		LAVAARENA_ARMOR_HP = "That should keep me safe.",

		LAVAARENA_FIREBOMB = "It smells like brimstone.",
		LAVAARENA_HEAVYBLADE = "A sharp looking instrument.",

        --Quagmire
        QUAGMIRE_ALTAR =
        {
        	GENERIC = "We'd better start cooking some offerings.",
        	FULL = "It's in the process of digestinating.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "It's an old statue.",
		QUAGMIRE_PARK_FOUNTAIN = "Been a long time since it was hooked up to water.",

        QUAGMIRE_HOE = "I don't know anything about farming.",

        QUAGMIRE_TURNIP = "It's a raw turnip.",
        QUAGMIRE_TURNIP_COOKED = "Cooking is science in practice.",
        QUAGMIRE_TURNIP_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_GARLIC = "The number one breath enhancer.",
        QUAGMIRE_GARLIC_COOKED = "Perfectly browned.",
        QUAGMIRE_GARLIC_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_ONION = "Looks crunchy.",
        QUAGMIRE_ONION_COOKED = "A successful cook onion.",
        QUAGMIRE_ONION_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_POTATO = "The apples of the earth.",
        QUAGMIRE_POTATO_COOKED = "A successful cooked potato.",
        QUAGMIRE_POTATO_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_TOMATO = "It's red because it's full of science.",
        QUAGMIRE_TOMATO_COOKED = "Cooking's easy but I'm just getting lucky.",
        QUAGMIRE_TOMATO_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_FLOUR = "Ready for baking.",
        QUAGMIRE_WHEAT = "It looks a bit grainy.",
        QUAGMIRE_WHEAT_SEEDS = "A handful of odd seeds.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_ROTTEN_CROP = "I don't think the altar will want that.",

		QUAGMIRE_SALMON = "Mm, fresh fish.",
		QUAGMIRE_SALMON_COOKED = "Ready for the dinner table.",
		QUAGMIRE_CRABMEAT = "No imitations here.",
		QUAGMIRE_CRABMEAT_COOKED = "I can put a meal together in a pinch.",
		QUAGMIRE_SUGARWOODTREE =
		{
			GENERIC = "It's full of delicious, delicious sap.",
			STUMP = "Where'd the tree go? I'm stumped.",
			TAPPED_EMPTY = "Here sappy, sappy, sap.",
			TAPPED_READY = "Sweet golden sap.",
			TAPPED_BUGS = "That's how you get ants.",
			WOUNDED = "It looks ill.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB =
		{
			GENERIC = "It reminds me of those tentacle monsters.",
			PICKED = "I can't get anymore out of that shrub.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I could grind it up to make a spice.",
		QUAGMIRE_SPOTSPICE_GROUND = "Flavorful.",
		QUAGMIRE_SAPBUCKET = "We can use it to gather sap from the trees.",
		QUAGMIRE_SAP = "It tastes sweet.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Salt has gathered on the rope.",
			GENERIC = "Science takes time.",
		},

		QUAGMIRE_POND_SALT = "A little salty spring.",
		QUAGMIRE_SALT_RACK_ITEM = "For harvesting salt from the pond.",

		QUAGMIRE_SAFE =
		{
			GENERIC = "It's a safe. For keeping things safe.",
			LOCKED = "It won't open without the key.",
		},

		QUAGMIRE_KEY = "Safe bet this'll come in handy.",
		QUAGMIRE_KEY_PARK = "I'll park it in my pocket until I get to the park.",
        QUAGMIRE_PORTAL_KEY = "This looks science-y.",


		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Are those mushrooms? I'm stumped.",
			PICKED = "I don't think it's growing back.",
		},
		QUAGMIRE_MUSHROOMS = "I think these are edible mushrooms.",
        QUAGMIRE_MEALINGSTONE = "The daily grind.",
		QUAGMIRE_PEBBLECRAB = "That rock's alive!",


		QUAGMIRE_RUBBLE_CARRIAGE = "On the road to nowhere.",
        QUAGMIRE_RUBBLE_CLOCK = "Someone beat the clock. Literally.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Preyed upon.",
        QUAGMIRE_RUBBLE_PUBDOOR = "No longer a-door-able.",
        QUAGMIRE_RUBBLE_ROOF = "Someone hit the roof.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "That clock's been punched.",
        QUAGMIRE_RUBBLE_BIKE = "Must have mis-spoke.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's here.",
            "Something destroyed this town.",
            "I wonder who they angered.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something put a damper on that chimney.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Something put a damper on that chimney.",
        QUAGMIRE_MERMHOUSE = "What an ugly little house.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's seen better days.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Some pig's house was ruined.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "I guess you're in charge around here?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "It's a super hairy pig.",

        QUAGMIRE_PORTAL = "Another dead end.",
        QUAGMIRE_SALTROCK = "Salt. The tastiest mineral.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "That one was an experiment.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "I think this will appease the sky God.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },

        QUAGMIRE_FERN = "Probably chock full of vitamins.",
        QUAGMIRE_FOLIAGE_COOKED = "We cooked the foliage.",
        QUAGMIRE_COIN1 = "I'd like more than a penny for my thoughts.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "Good if you don't think about where it came from.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "Might as well toss it on the fire.",
        QUAGMIRE_SEEDPACKET = "Sow what?",

        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_SYRUP = "I need to sweeten this pot.",
        QUAGMIRE_POT_HANGER = "It has hang-ups.",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
        QUAGMIRE_GRILL = "Now all I need is a backyard to put it in.",
        QUAGMIRE_GRILL_ITEM = "I'll have to grill someone about this.",
        QUAGMIRE_GRILL_SMALL = "Barbecurious.",
        QUAGMIRE_GRILL_SMALL_ITEM = "For grilling small meats.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "A dish for all seasonings.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "For making minuscule motleys.",
        QUAGMIRE_PLATE_SILVER = "A silver plated plate.",
        QUAGMIRE_BOWL_SILVER = "A bright bowl.",
        QUAGMIRE_CRATE = "Kitchen stuff.",

        QUAGMIRE_MERM_CART1 = "Anything in there?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I could use some stuff.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Take that, creature!",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Ashes to ashes.",
        QUAGMIRE_PARK_OBELISK = "A monumental monument.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Turns out a key was the key to getting in.",
            LOCKED = "Locked tight.",
        },
        QUAGMIRE_PARKSPIKE = "It's a sharp pointy thing.",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",

        QUAGMIRE_GOATMUM = "Reminds me of my old nanny.",
        QUAGMIRE_GOATKID = "This goat's much smaller.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "They're dead.",
            GENERIC = "He's just winging it.",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "It should have died by now.",
        QUAGMIRE_SLAUGHTERTOOL = "This is my kind of tool.",

        QUAGMIRE_SAPLING = "I can't get anything else out of that.",
        QUAGMIRE_BERRYBUSH = "Those berries are all gone.",

        QUAGMIRE_ALTAR_STATUE2 = "What are you looking at?",
        QUAGMIRE_ALTAR_QUEEN = "A monumental monument.",
        QUAGMIRE_ALTAR_BOLLARD = "As far as posts go, this one is adequate.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "Enlightening.",

        --v2 Winona
        WINONA_CATAPULT =
        {
        	GENERIC = "It's some sort of automatic defense system.",
        	OFF = "I'm guessing it needs some electricity.",
        	BURNING = "It's on fire!",
        	BURNT = "It's too late.",
        },
        WINONA_SPOTLIGHT =
        {
        	GENERIC = "It's a spotlight, don't know how it works.",
        	OFF = "I'm guessing it needs some electricity.",
        	BURNING = "It's on fire!",
        	BURNT = "It's too late.",
        },
        WINONA_BATTERY_LOW =
        {
        	GENERIC = "It looks like a battery.",
        	LOWPOWER = "It's getting low on power.",
        	OFF = "It's a battery.",
        	BURNING = "It's on fire!",
        	BURNT = "It's too late.",
        },
        WINONA_BATTERY_HIGH =
        {
        	GENERIC = "Cool! A battery.",
        	LOWPOWER = "It'll turn off soon.",
        	OFF = "It's a battery.",
        	BURNING = "It's on fire!",
        	BURNT = "It's too late.",
        },

        --Wormwood
        COMPOSTWRAP = "Wormwood offered me a bite, I gave him a funny look.",
        ARMOR_BRAMBLE = "The best offense is really offensive.",
        TRAP_BRAMBLE = "It'd really poke whoever stepped on it.",

        BOATFRAGMENT03 = "Not much left of it.",
        BOATFRAGMENT04 = "Not much left of it.",
        BOATFRAGMENT05 = "Not much left of it.",
		BOAT_LEAK = "Well... We're going to die.",
        MAST = "That is certainly a mast.",
        SEASTACK = "It's a rock.",
        FISHINGNET = "Nothing but net.", --unimplemented
        ANTCHOVIES = "Yeesh. Can I toss it back?", --unimplemented
        STEERINGWHEEL = "I'd be terrible at sailing, I think I'm sea sick.",
        ANCHOR = "I'm suppose to trust this to keep my boat in place?",
        BOATPATCH = "Just in case of disaster.",
        DRIFTWOOD_TREE =
        {
            BURNING = "That driftwood's burning!",
            BURNT = "Doesn't look very useful anymore.",
            CHOPPED = "There might still be something worth digging up.",
            GENERIC = "A dead tree that washed up on shore.",
        },

        DRIFTWOOD_LOG = "It floats on water.",

        MOON_TREE =
        {
            BURNING = "The tree is burning!",
            BURNT = "The tree burned down.",
            CHOPPED = "That was a pretty thick tree.",
            GENERIC = "I didn't know trees grew on the moon.",
        },
		MOON_TREE_BLOSSOM = "It fell from the moon tree.",

        MOONBUTTERFLY =
        {
        	GENERIC = "I'm staying the hell away from that without protection.",
        	HELD = "Why am I holding this?!",
        },
		MOONBUTTERFLYWINGS = "I ripped the wings from its body.",
        MOONBUTTERFLY_SAPLING = "What the fuck? It turned into a plant!",
        ROCK_AVOCADO_FRUIT = "I'd shatter my teeth on that.",
        ROCK_AVOCADO_FRUIT_RIPE = "Uncooked stone fruit is the pits.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "It's actually soft enough to eat now.",
        ROCK_AVOCADO_FRUIT_SPROUT = "It's growing.",
        ROCK_AVOCADO_BUSH =
        {
        	BARREN = "Its fruit growing days are over.",
			WITHERED = "It's pretty hot out.",
			GENERIC = "It's a bush... from the moon!",
			PICKED = "It'll take awhile to grow more fruit.",
			DISEASED = "It looks pretty sick.", --unimplemented
            DISEASING = "Err, something's not right.", --unimplemented
			BURNING = "It's burning!",
		},
        DEAD_SEA_BONES = "That's what they get for coming up on land.",
        HOTSPRING =
        {
        	GENERIC = "If only I could soak my weary bones.",
        	BOMBED = "It's dangerous.",
        	GLASS = "Water turns to glass under the moon. That's just science.",
			EMPTY = "I'll just have to wait for it to fill up again.",
        },
        MOONGLASS = "It's very sharp.",
        MOONGLASS_CHARGED = "I don't know what this is but it's charged.",
        MOONGLASS_ROCK = "I can practically see my reflection in it.",
        BATHBOMB = "It's just textbook chemistry.",
        TRAP_STARFISH =
        {
            GENERIC = "Aw, what a cute little starfish!",
            CLOSED = "It tried to chomp me!",
        },
        DUG_TRAP_STARFISH = "It's not fooling anyone now.",
        SPIDER_MOON =
        {
        	GENERIC = "I fucking hate spiders... And this one is mutated.",
        	SLEEPING = "Better to kill it before it wakes up.",
        	DEAD = "I'm praying it's dead.",
        },
        MOONSPIDERDEN = "Holy fuck, better keep my distance.",
		FRUITDRAGON =
		{
			GENERIC = "I continue to know nothing about farming.",
			RIPE = "I think it's ripe now.",
			SLEEPING = "It's sleeping?",
		},
        PUFFIN =
        {
            GENERIC = "It's a knockoff duck.",
            HELD = "Catching one ain't puffin to brag about.",
            SLEEPING = "Peacefully huffin' and puffin'.",
        },

		MOONGLASSAXE = "I've made it extra effective.",
		GLASSCUTTER = "I'm not really cut out for fighting.",

        ICEBERG =
        {
            GENERIC = "Let's steer clear of that.", --unimplemented
            MELTED = "It's completely melted.", --unimplemented
        },
        ICEBERG_MELTED = "It's completely melted.", --unimplemented

        MINIFLARE = "I can light it to let everyone know I'm here.",
        MEGAFLARE = "It will let everything know I'm here. Everything.",

		MOON_FISSURE =
		{
			GENERIC = "Fisstastic.",
			NOLIGHT = "The cracks in this place are starting to show.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "It wants to be finished.",
            GENERIC = "Hm? What did you say?",
        },

        MOON_ALTAR_IDOL = "I feel compelled to carry it somewhere.",
        MOON_ALTAR_GLASS = "It doesn't want to be on the ground.",
        MOON_ALTAR_SEED = "It wants me to give it a home.",

        MOON_ALTAR_ROCK_IDOL = "There's something trapped inside.",
        MOON_ALTAR_ROCK_GLASS = "There's something trapped inside.",
        MOON_ALTAR_ROCK_SEED = "There's something trapped inside.",

        MOON_ALTAR_CROWN = "I fished it up, now to find a fissure!",
        MOON_ALTAR_COSMIC = "It feels like it's waiting for something.",

        MOON_ALTAR_ASTRAL = "It seems to be part of a larger mechanism.",
        MOON_ALTAR_ICON = "I think I know just where you belong.",
        MOON_ALTAR_WARD = "It wants to be with the others.",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "I think tanks are in order.",
            BURNT = "Fuck it's burnt.",
        },
        BOAT_ITEM = "Ooooh a boat.",
        BOAT_GRASS_ITEM = "It's technically a boat.",
        STEERINGWHEEL_ITEM = "That's going to be the steering wheel.",
        ANCHOR_ITEM = "Now I can build an anchor.",
        MAST_ITEM = "Now I can build a mast.",
        MUTATEDHOUND =
        {
        	DEAD = "Now I can breathe easy.",
        	GENERIC = "Holy fuck!",
        	SLEEPING = "Better to kill it before it wakes up.",
        },

        MUTATED_PENGUIN =
        {
			DEAD = "That's the end of that.",
			GENERIC = "That's one ugly motherfucker.",
			SLEEPING = "Better to kill it before it wakes up.",
		},
        CARRAT =
        {
        	DEAD = "That's the end of that.",
        	GENERIC = "Are carrots supposed to have legs?",
        	HELD = "You're kind of ugly up close.",
        	SLEEPING = "It's almost cute.",
        },

		BULLKELP_PLANT =
        {
            GENERIC = "Welp. It's kelp.",
            PICKED = "I just couldn't kelp myself.",
        },
		BULLKELP_ROOT = "I can plant it in deep water.",
        KELPHAT = "Sometimes you have to feel worse to feel better.",
		KELP = "It gets my pockets all wet and gross.",
		KELP_COOKED = "It's closer to a liquid than a solid.",
		KELP_DRIED = "The sodium content's kinda high.",

		GESTALT = "What the fuck is that?",
        GESTALT_GUARD = "I don't know what the fuck it is but I'm keeping my distance.",

		COOKIECUTTER = "I don't like the way it's looking at my boat...",
		COOKIECUTTERSHELL = "A shell of its former self.",
		COOKIECUTTERHAT = "At least my hair will stay dry.",
		SALTSTACK =
		{
			GENERIC = "Are those natural formations?",
			MINED_OUT = "It's mined... it's all mined!",
			GROWING = "I guess it just grows like that.",
		},
		SALTROCK = "I'm gonna lick it.",
		SALTBOX = "Just the cure for spoiling food!",

		TACKLESTATION = "Time to tackle my reel problems.",
		TACKLESKETCH = "A picture of some fishing tackle. I bet I could make this...",

        MALBATROSS = "A fowl beast indeed!",
        MALBATROSS_FEATHER = "Plucked from a fine feathered fiend.",
        MALBATROSS_BEAK = "Smells fishy.",
        MAST_MALBATROSS_ITEM = "It's lighter than it looks.",
        MAST_MALBATROSS = "Spread my wings and sail away!",
		MALBATROSS_FEATHERED_WEAVE = "I'm making a quill-t!",

        GNARWAIL =
        {
            GENERIC = "That horn is pretty gay.",
            BROKENHORN = "You're rights to being horny have been revoked.",
            FOLLOWER = "This is all whale and good.",
            BROKENHORN_FOLLOWER = "You can't be horny, you can just exist.",
        },
        GNARWAIL_HORN = "Horny!",

        WALKINGPLANK = "Couldn't we have just made a lifeboat?",
        WALKINGPLANK_GRASS = "Couldn't we have just made a lifeboat?",
        OAR = "Manual ship acceleration.",
		OAR_DRIFTWOOD = "Manual ship acceleration.",

		OCEANFISHINGROD = "Now this is the reel deal!",
		OCEANFISHINGBOBBER_NONE = "A bobber might improve its accuracy.",
        OCEANFISHINGBOBBER_BALL = "The fish will have a ball with this.",
        OCEANFISHINGBOBBER_OVAL = "Those fish won't give me the slip this time!",
		OCEANFISHINGBOBBER_CROW = "I'd rather eat fish than crow.",
		OCEANFISHINGBOBBER_ROBIN = "Hopefully it won't attract any red herrings.",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "The snowbird quill helps me stay frosty.",
		OCEANFISHINGBOBBER_CANARY = "Say y'ello to my little friend!",
		OCEANFISHINGBOBBER_GOOSE = "You're going down, fish!",
		OCEANFISHINGBOBBER_MALBATROSS = "Where there's a quill, there's a way.",

		OCEANFISHINGLURE_SPINNER_RED = "Some fish might find this a-luring!",
		OCEANFISHINGLURE_SPINNER_GREEN = "Some fish might find this a-luring!",
		OCEANFISHINGLURE_SPINNER_BLUE = "Some fish might find this a-luring!",
		OCEANFISHINGLURE_SPOON_RED = "Some smaller fish might find this a-luring!",
		OCEANFISHINGLURE_SPOON_GREEN = "Some smaller fish might find this a-luring!",
		OCEANFISHINGLURE_SPOON_BLUE = "Some smaller fish might find this a-luring!",
		OCEANFISHINGLURE_HERMIT_RAIN = "Soaking myself might help me think like a fish...",
		OCEANFISHINGLURE_HERMIT_SNOW = "The fish won't snow what hit them!",
		OCEANFISHINGLURE_HERMIT_DROWSY = "Time to make myself even more retarded.",
		OCEANFISHINGLURE_HERMIT_HEAVY = "This feels a bit heavy handed.",

		OCEANFISH_SMALL_1 = "Looks like the runt of its school.",
		OCEANFISH_SMALL_2 = "I won't win any bragging rights with this one.",
		OCEANFISH_SMALL_3 = "It's a bit on the small side.",
		OCEANFISH_SMALL_4 = "A fish this size won't tide me over for long.",
		OCEANFISH_SMALL_5 = "I can't wait to pop it in my mouth.",
		OCEANFISH_SMALL_6 = "You have to sea it to beleaf it.",
		OCEANFISH_SMALL_7 = "I finally caught this bloomin' fish!",
		OCEANFISH_SMALL_8 = "It's a scorcher!",
        OCEANFISH_SMALL_9 = "Just spit-balling, but I might have a use for you...",

		OCEANFISH_MEDIUM_1 = "I certainly hope it tastes better than it looks.",
		OCEANFISH_MEDIUM_2 = "I went to a lot of treble to catch it.",
		OCEANFISH_MEDIUM_3 = "I wasn't lion about my aptitude for fishing!",
		OCEANFISH_MEDIUM_4 = "I'm sure this won't bring me any bad luck.",
		OCEANFISH_MEDIUM_5 = "This one seems kind of corny.",
		OCEANFISH_MEDIUM_6 = "Now that's the real McKoi!",
		OCEANFISH_MEDIUM_7 = "Now that's the real McKoi!",
		OCEANFISH_MEDIUM_8 = "Ice bream, youse bream.",
        OCEANFISH_MEDIUM_9 = "That's the sweet smell of a successful fishing trip.",

		PONDFISH = "Now I shall eat for a day.",
		PONDEEL = "This will make a delicious meal.",

        FISHMEAT = "A chunk of fish meat.",
        FISHMEAT_COOKED = "Grilled to perfection.",
        FISHMEAT_SMALL = "A small bit of fish.",
        FISHMEAT_SMALL_COOKED = "A small bit of cooked fish.",
		SPOILED_FISH = "I'm not terribly curious about the smell.",

		FISH_BOX = "They're stuffed in there like sardines!",
        POCKET_SCALE = "A scaled-down weighing device.",

		TACKLECONTAINER = "This extra storage space has me hooked!",
		SUPERTACKLECONTAINER = "I had to shell out quite a bit to get this.",

		TROPHYSCALE_FISH =
		{
			GENERIC = "I wonder how my catch of the day will measure up!",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nWhat a catch!",
			BURNING = "On a scale of 1 to on fire... that's pretty on fire.",
			BURNT = "All my bragging rights, gone up in flames!",
			OWNER = "Not to throw my weight around, buuut...\nWeight: {weight}\nCaught by: {owner}",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nIt's the one that DIDN'T get away!",
		},

		OCEANFISHABLEFLOTSAM = "Just some muddy grass.",

		CALIFORNIAROLL = "But I don't have chopsticks.",
		SEAFOODGUMBO = "It's a jumbo seafood gumbo.",
		SURFNTURF = "It's perf!",

        WOBSTER_SHELLER = "What a wascally Wobster.",
        WOBSTER_DEN = "It's a rock with Wobsters in it.",
        WOBSTER_SHELLER_DEAD = "You should cook up nicely.",
        WOBSTER_SHELLER_DEAD_COOKED = "I can't wait to eat you.",

        LOBSTERBISQUE = "Could use more salt, but that's none of my bisque-ness.",
        LOBSTERDINNER = "If I eat it in the morning is it still dinner?",

        WOBSTER_MOONGLASS = "What a wascally Lunar Wobster.",
        MOONGLASS_WOBSTER_DEN = "It's a chunk of moonglass with Lunar Wobsters in it.",

		TRIDENT = "This is going to be a blast!",

		WINCH =
		{
			GENERIC = "It'll do in a pinch.",
			RETRIEVING_ITEM = "I'll let it do the heavy lifting.",
			HOLDING_ITEM = "What do we have here?",
		},

        HERMITHOUSE = {
            GENERIC = "It's just an empty shell of a house.",
            BUILTUP = "It just needed a little love.",
        },

        SHELL_CLUSTER = "I bet there's some nice shells in there.",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "It's a bit more toned down.",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "Is that what the ocean sounds like?",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "It's ready for the high C's.",
        },

        CHUM = "It's a fish meal!",

        SUNKENCHEST =
        {
            GENERIC = "The real treasure is the treasure we found along the way.",
            LOCKED = "It's clammed right up!",
        },

        HERMIT_BUNDLE = "She shore shells out a lot of these.",
        HERMIT_BUNDLE_SHELLS = "She DOES sell sea shells!",

        RESKIN_TOOL = "I like the dust! It feels scholarly!",
        MOON_FISSURE_PLUGGED = "Haha! Plugged it!",


		----------------------- ROT STRINGS GO ABOVE HERE ------------------

		-- Walter
        WOBYBIG =
        {
            "What the fuck have you been feeding her?",
            "What the fuck have you been feeding her?",
        },
        WOBYSMALL =
        {
            "It's a fact that petting a good dog will improve your day.",
            "It's a fact that petting a good dog will improve your day.",
        },
		WALTERHAT = "I was never exactly \"outdoorsy\" in my youth.",
		SLINGSHOT = "The bane of windows everywhere.",
		SLINGSHOTAMMO_ROCK = "Shots to be slinged.",
		SLINGSHOTAMMO_MARBLE = "Shots to be slinged.",
		SLINGSHOTAMMO_THULECITE = "Shots to be slinged.",
        SLINGSHOTAMMO_GOLD = "Shots to be slinged.",
        SLINGSHOTAMMO_SLOW = "Shots to be slinged.",
        SLINGSHOTAMMO_FREEZE = "Shots to be slinged.",
		SLINGSHOTAMMO_POOP = "Poop projectiles.",
        PORTABLETENT = "Dude, I have insomnia.",
        PORTABLETENT_ITEM = "Dude, I have insomnia.",

        -- Wigfrid
        BATTLESONG_DURABILITY = "Theater makes me fidgety.",
        BATTLESONG_HEALTHGAIN = "Theater makes me fidgety.",
        BATTLESONG_SANITYGAIN = "Theater makes me fidgety.",
        BATTLESONG_SANITYAURA = "Theater makes me fidgety.",
        BATTLESONG_FIRERESISTANCE = "I once burned my vest before seeing a play. I call that dramatic ironing.",
        BATTLESONG_INSTANT_TAUNT = "I'm afraid I'm not a licensed poetic.",
        BATTLESONG_INSTANT_PANIC = "I'm afraid I'm not a licensed poetic.",

        -- Webber
        MUTATOR_WARRIOR = "AGGHHHHH What the fuck is that!",
        MUTATOR_DROPPER = "Fucking disgusting!",
        MUTATOR_HIDER = "AGGHHHHH What the fuck is that!",
        MUTATOR_SPITTER = "Fucking disgusting!",
        MUTATOR_MOON = "AGGHHHHH What the fuck is that!",
        MUTATOR_HEALER = "Fucking disgusting!",
        SPIDER_WHISTLE = "I don't want to call any spiders over to me!",
        SPIDERDEN_BEDAZZLER = "It looks like someone's been getting crafty.",
        SPIDER_HEALER = "The spiders can heal themselves? I hate it.",
        SPIDER_REPELLENT = "Fire is the only repellent.",
        SPIDER_HEALER_ITEM = "If I see any spiders around I'll be sure to just kill them instead.",

		-- Wendy
		GHOSTLYELIXIR_SLOWREGEN = "I don't know what this is.",
		GHOSTLYELIXIR_FASTREGEN = "I don't know what this is.",
		GHOSTLYELIXIR_SHIELD = "I don't know what this is.",
		GHOSTLYELIXIR_ATTACK = "I don't know what this is.",
		GHOSTLYELIXIR_SPEED = "I don't know what this is.",
		GHOSTLYELIXIR_RETALIATION = "I don't know what this is.",
		SISTURN =
		{
			GENERIC = "Some flowers would liven it up a bit.",
			SOME_FLOWERS = "A few more flowers should do the trick.",
			LOTS_OF_FLOWERS = "What a brilliant boo-quet!",
		},

        --Wortox
        WORTOX_SOUL = "Ah yes, a soul... Wait what the fuck!", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "This'd be great... If I could cook.",
            DONE = "By sheer dumb luck it's done.",

			COOKING_LONG = "I've made a mistake",
			COOKING_SHORT = "Just like microwaved food.",
			EMPTY = "There's fuck all in there.",
        },

        PORTABLEBLENDER_ITEM = "It mixes all the food.",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "This will spice things up.",
            DONE = "Should make things a little tastier.",
        },
        SPICEPACK = "A pack of spices.",
        SPICE_GARLIC = "Spicy garlic.... ew.",
        SPICE_SUGAR = "Sweet! It's sweet!",
        SPICE_CHILI = "A flagon of fiery fluid.",
        SPICE_SALT = "Ah yes for when you're mad AND salty.",
        MONSTERTARTARE = "There's got to be something else to eat around here.",
        FRESHFRUITCREPES = "Sugary fruit! Part of a balanced breakfast.",
        FROGFISHBOWL = "Is that just... frogs stuffed inside a fish?",
        POTATOTORNADO = "Is it a potato tornado or a tornado full of potatos?",
        DRAGONCHILISALAD = "I doubt I can handle the spice levels.",
        GLOWBERRYMOUSSE = "Warly sure can cook.",
        VOLTGOATJELLY = "It's shockingly delicious.",
        NIGHTMAREPIE = "It's a little spooky.",
        BONESOUP = "No bones about it, Warly can cook.",
        MASHEDPOTATOES = "One day I'll learn to cook.... not right now though.",
        POTATOSOUFFLE = "I forgot what good food tasted like.",
        MOQUECA = "He's a pretty good chef.",
        GAZPACHO = "Heyyyy, that's pretty good.",
        ASPARAGUSSOUP = "Smells like it tastes... Like shit.",
        VEGSTINGER = "Can you use the celery as a straw?",
        BANANAPOP = "No, not brain freeze!",
        CEVICHE = "Can I get a bigger bowl? This one looks a little shrimpy.",
        SALSA = "So... hot...!",
        PEPPERPOPPER = "What a mouthful!",

        TURNIP = "It's a raw turnip.",
        TURNIP_COOKED = "Cooking is science in practice.",
        TURNIP_SEEDS = "A handful of odd seeds.",

        GARLIC = "The number one breath enhancer.",
        GARLIC_COOKED = "Perfectly browned.",
        GARLIC_SEEDS = "A handful of odd seeds.",

        ONION = "Looks crunchy.",
        ONION_COOKED = "It's a cooked onion.",
        ONION_SEEDS = "A handful of odd seeds.",

        POTATO = "The apples of the earth.",
        POTATO_COOKED = "It's a cooked potato.",
        POTATO_SEEDS = "A handful of odd seeds.",

        TOMATO = "It's red because it's full of science.",
        TOMATO_COOKED = "It's a cooked tomato.",
        TOMATO_SEEDS = "A handful of odd seeds.",

        ASPARAGUS = "A vegetable.",
        ASPARAGUS_COOKED = "I once mistook these for chips.",
        ASPARAGUS_SEEDS = "It's some seeds.",

        PEPPER = "Nice and spicy.",
        PEPPER_COOKED = "It was already hot to begin with.",
        PEPPER_SEEDS = "A handful of seeds.",

        WEREITEM_BEAVER = "Fucking magic.",
        WEREITEM_GOOSE = "Fucking magic.",
        WEREITEM_MOOSE = "Fucking magic.",

        MERMHAT = "This looks grim.",
        MERMTHRONE =
        {
            GENERIC = "Looks fit for a swamp king!",
            BURNT = "There was something fishy about that throne anyway.",
        },
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "Just what is she planning?",
            BURNT = "I suppose we'll never know what it was for now.",
        },
        MERMHOUSE_CRAFTED =
        {
            GENERIC = "It's actually kind of cute.",
            BURNT = "Ugh, the smell!",
        },

        MERMWATCHTOWER_REGULAR = "They seem happy to have found a king.",
        MERMWATCHTOWER_NOKING = "A royal guard with no Royal to guard.",
        MERMKING = "Your Majesty!",
        MERMGUARD = "I feel very guarded around these guys...",
        MERM_PRINCE = "They operate on a first-come, first-sovereigned basis.",

        SQUID = "I have an inkling they'll come in handy.",

		GHOSTFLOWER = "So is this flower dead?",
        SMALLGHOST = "AGHHHHHHH A GHOST!",

        CRABKING =
        {
            GENERIC = "Why hello Mr Krabs.",
            INERT = "The Krusty Krab has seen better days.",
        },
		CRABKING_CLAW = "That's claws for alarm!",

		MESSAGEBOTTLE = "I'm going to steal that message in a bottle.",
		MESSAGEBOTTLEEMPTY = "It's full of... Nothing.",

        MEATRACK_HERMIT =
        {
            DONE = "Jerky time!",
            DRYING = "Meat takes a while to dry.",
            DRYINGINRAIN = "Meat takes even longer to dry in rain.",
            GENERIC = "Those look like they could use some meat.",
            BURNT = "The rack got dried.",
            DONE_NOTMEAT = "It's dry.",
            DRYING_NOTMEAT = "Would be faster to dry this by lava.",
            DRYINGINRAIN_NOTMEAT = "Ah fuck me it's raining.",
        },
        BEEBOX_HERMIT =
        {
            READY = "It's full of honey.",
            FULLHONEY = "It's full of honey.",
            GENERIC = "I'm sure there's a little sweetness to be found inside.",
            NOHONEY = "It's empty.",
            SOMEHONEY = "Need to wait a bit.",
            BURNT = "How did it get burned?!!",
        },

        HERMITCRAB = "Living by yourshellf must get abalonely... that was fucking terrible.",

        HERMIT_PEARL = "I'll take good care of it.",
        HERMIT_CRACKED_PEARL = "I... I didn't take good care of it.",

        -- DSEAS
        WATERPLANT = "As long as we don't take their barnacles, they'll stay our buds.",
        WATERPLANT_BOMB = "We're under seedge!",
        WATERPLANT_BABY = "This one's just a sprout.",
        WATERPLANT_PLANTER = "They seem to grow best on oceanic rocks.",

        SHARK = "We're gonna need a bigger boat...",

        MASTUPGRADE_LAMP_ITEM = "It has a lamp.",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "At least my boat won't get struck by lightning now.",

        WATERPUMP = "It puts out fires very a-fish-iently.",

        BARNACLE = "They don't look like knuckles to me.",
        BARNACLE_COOKED = "I'm told it's quite a delicacy.",

        BARNACLEPITA = "Barnacles taste better when you can't see them.",
        BARNACLESUSHI = "I still seem to have misplaced my chopsticks.",
        BARNACLINGUINE = "Pass the pasta!",
        BARNACLESTUFFEDFISHHEAD = "I'm just hungry enough to consider it...",

        LEAFLOAF = "Mystery leaf meat.",
        LEAFYMEATBURGER = "Vegetarian, but not cruelty-free... Just the way I like it.",
        LEAFYMEATSOUFFLE = "Has science gone too far?",
        MEATYSALAD = "Strangely filling, for a salad.",

        -- GROTTO

		MOLEBAT = "A regular Noseferatu.",
        MOLEBATHILL = "I wonder what might be stuck in that rat's nest.",

        BATNOSE = "Who knows whose nose this is?",
        BATNOSE_COOKED = "It came out smelling like a nose.",
        BATNOSEHAT = "For hands-free dairy drinking.",

        MUSHGNOME = "It might be aggressive, but only sporeradically.",

        SPORE_MOON = "I'll keep as mushroom between me and those spores as I can.",

        MOON_CAP = "It doesn't look particularly appetizing.",
        MOON_CAP_COOKED = "The things I do in the name of science...",

        MUSHTREE_MOON = "This mushroom tree is clearly stranger than the rest.",

        LIGHTFLIER = "How strange, carrying one makes my pocket feel lighter!",

        GROTTO_POOL_BIG = "The moon water makes the glass grow. Must be magic.",
        GROTTO_POOL_SMALL = "The moon water makes the glass grow. Must be magic.",

        DUSTMOTH = "Tidy little guys, aren't they?",

        DUSTMOTHDEN = "They're snug as bugs in there.",

        ARCHIVE_LOCKBOX = "Now how do I get the knowledge out?",
        ARCHIVE_CENTIPEDE = "You won't centimpede my progress!",
        ARCHIVE_CENTIPEDE_HUSK = "A pile of old spare parts.",

        ARCHIVE_COOKPOT =
        {
            COOKING_LONG = "I've made a mistake.",
            COOKING_SHORT = "It should almost be done.",
            DONE = "I think it's done.",
            EMPTY = "It's fucking empty.",
            BURNT = "Why did we cook the pot and not food?",
        },

        ARCHIVE_MOON_STATUE = "These magnificent moon statues have me waxing poetic.",
        ARCHIVE_RUNE_STATUE =
        {
            LINE_1 = "I'm too lazy to read.",
            LINE_2 = "I'm too lazy to read.",
            LINE_3 = "I'm too lazy to read.",
            LINE_4 = "I'm too lazy to read.",
            LINE_5 = "I'm too lazy to read.",
        },

        ARCHIVE_RESONATOR = {
            GENERIC = "What the fuck is this?",
            IDLE = "What's it doing?",
        },

        ARCHIVE_RESONATOR_ITEM = "I've made the thingymabob.",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "I don't know but I think it needs power.",
          GENERIC =  "I don't know why but it makes me want to stand around it.",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "Whatever it did, it's not doing it anymore.",
            GENERIC = "It looks inviting.",
        },

        ARCHIVE_SECURITY_PULSE = "Where are you going? Someplace interesting?",

        ARCHIVE_SWITCH = {
            VALID = "Looks like a switch.",
            GEMS = "The socket is empty.",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "Dead as a dead doornail.",
            GENERIC = "Strange, the power is on but this isn't.",
        },

        WALL_STONE_2 = "That's a nice wall.",
        WALL_RUINS_2 = "An ancient piece of wall.",

        REFINED_DUST = "Ah-CHOO!",
        DUSTMERINGUE = "Who or what would eat this?... Lets be honest probably me.",

        SHROOMCAKE = "It lives up to its name.",

        NIGHTMAREGROWTH = "Those crystals might be cause for some concern.",

        TURFCRAFTINGSTATION = "It makes turf?",

        MOON_ALTAR_LINK = "It must be building up to something.",

        -- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "I can barrel-y stand the smell.",
            WET = "That looks too soggy.",
            DRY = "Hm... too dry.",
            BALANCED = "Just right!",
            BURNT = "I didn't think it could smell any worse...",
        },
        COMPOST = "Food for plants, and not much else.",
        SOIL_AMENDER =
		{
			GENERIC = "Now we wait and hope for the best.",
			STALE = "Looks stale.",
			SPOILED = "Looks like a turd.",
		},

		SOIL_AMENDER_FERMENTED = "That's some strong science!",

        WATERINGCAN =
        {
            GENERIC = "I can water the plants with this.",
            EMPTY = "Maybe there's a pond around here somewhere...",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "It's a better watering can?",
            EMPTY = "It's pretty damn useless when it's empty.",
        },

		FARM_PLOW = "I don't know how to use this.",
		FARM_PLOW_ITEM = "Better figure out how to use this.",
		FARM_HOE = "Your farm's a hoe.",
		GOLDEN_FARM_HOE = "Your farm's an expensive hoe.",
		NUTRIENTSGOGGLESHAT = "I don't know what these do but I look silly wearing them.",
		PLANTREGISTRYHAT = "I've decided to put a plant on my head.",

        FARM_SOIL_DEBRIS = "It's making a mess.",

		FIRENETTLES = "If you can't stand the heat, stay out of the garden.",
		FORGETMELOTS = "Hm. I can't remember what I was going to say about those.",
		SWEETTEA = "A nice cup of tea to forget all my problems.",
		TILLWEED = "Out of my garden, you!",
		TILLWEEDSALVE = "My salve-ation.",
        WEED_IVY = "Get outta here weeds!",
        IVY_SNARE = "Now that's just rude.",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "I can attempt to measure my harvest's heftiness.",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}\nNot bad.",
			HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nWho knew they grew that big?",
            HAS_ITEM_LIGHT = "It's so average the scale isn't even bothering to tell me its weight.",
			BURNING = "Mmm, what's cooking?",
			BURNT = "I suppose that wasn't the best way to cook it.",
        },

        CARROT_OVERSIZED = "That's one big bunch of carrots!",
        CORN_OVERSIZED = "What a big ear you have!",
        PUMPKIN_OVERSIZED = "A rather pumped up pumpkin.",
        EGGPLANT_OVERSIZED = "I still don't see any resemblance to an egg.",
        DURIAN_OVERSIZED = "I'm sure it'll make an even bigger stink.",
        POMEGRANATE_OVERSIZED = "That might be the biggest pomegranate I've ever seen.",
        DRAGONFRUIT_OVERSIZED = "I half expect it to sprout wings.",
        WATERMELON_OVERSIZED = "A big, juicy watermelon.",
        TOMATO_OVERSIZED = "A tomato of incredible proportions.",
        POTATO_OVERSIZED = "That's a tater lot.",
        ASPARAGUS_OVERSIZED = "I guess we'll be eating asparagus for a while...",
        ONION_OVERSIZED = "They grow up so fast! It's... it's bringing a tear to my eye.",
        GARLIC_OVERSIZED = "A gargantuan garlic!",
        PEPPER_OVERSIZED = "A pepper of rather unusual size.",

        VEGGIE_OVERSIZED_ROTTEN = "What rotten luck.",

		FARM_PLANT =
		{
			GENERIC = "That's a plant!",
			SEED = "And now, we wait.",
			GROWING = "I think it's growing.",
			FULL = "Looks grown.",
			ROTTEN = "Smells like shit, must be rotten.",
			FULL_OVERSIZED = "Would ya look at that! It's overgrown!",
			ROTTEN_OVERSIZED = "A big pile of shit.",
			FULL_WEED = "Fucking weeds...",

			BURNING = "That can't be good for the plants...",
		},

        FRUITFLY = "Buzz off!",
        LORDFRUITFLY = "AGGGHHHHHHH WHAT THE FUCK IS THAT?!",
        FRIENDLYFRUITFLY = "The garden seems happier with it around.",
        FRUITFLYFRUIT = "Now I'm in charge!",

        SEEDPOUCH = "I was getting tired of carrying loose seeds in my pockets.",

		-- Crow Carnival
		CARNIVAL_HOST = "What an odd fellow.",
		CARNIVAL_CROWKID = "Good day to you, small bird person.",
		CARNIVAL_GAMETOKEN = "One shiny token.",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "That's the ticket!",
			GENERIC_SMALLSTACK = "That's the tickets!",
			GENERIC_LARGESTACK = "That's a lot of tickets!",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "It's a little trapdoor.",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "This looks like fun!",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_FEEDCHICKS_FOOD = "I don't need to chew them up first, do I?",

		CARNIVALGAME_MEMORY_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "I'm fucking shit at remember things.",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "It's a little trapdoor.",
			PLAYING = "I'm taking a guess. Is this right?",
		},

		CARNIVALGAME_HERDING_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "Those eggs are looking a little runny.",
		},
		CARNIVALGAME_HERDING_CHICK = "Come back here!",

		CARNIVALGAME_SHOOTING_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "I've always been good at shooting.",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "It's a little trapdoor.",
			PLAYING = "Pew!, I shoot the target.",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "I'm pressing the button!",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "Spiiiiiin the wheel!",
		},

		CARNIVALGAME_PUCKDROP_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "I'm going to defy the laws of physics.",
		},

		CARNIVAL_PRIZEBOOTH_KIT = "The real prize is the booth we made along the way.",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "I've got my eyes on the prize. That one, over there!",
		},

		CARNIVALCANNON_KIT = "I've got a lot of experience in making things explode.",
		CARNIVALCANNON =
		{
			GENERIC = "This shit is rigged to explode.",
			COOLDOWN = "What a blast!",
		},

		CARNIVAL_PLAZA_KIT = "Birds love trees.",
		CARNIVAL_PLAZA =
		{
			GENERIC = "It doesn't really scream \"Cawnival\" yet, does it?",
			LEVEL_2 = "A little birdy told me it could use some more decorations around here.",
			LEVEL_3 = "This tree is caws for celebration!",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "I hope this prize is all it's cracked up to be.",
		CARNIVALDECOR_EGGRIDE = "I could watch it for hours.",

		CARNIVALDECOR_LAMP_KIT = "Only some light work left to do.",
		CARNIVALDECOR_LAMP = "It's powered by whimsy.",
		CARNIVALDECOR_PLANT_KIT = "Maybe it's a boxwood?",
		CARNIVALDECOR_PLANT = "Either it's small, or I'm gigantic.",
		CARNIVALDECOR_BANNER_KIT = "I have to build it myself? I should have known there'd be a catch.",
		CARNIVALDECOR_BANNER = "I think all these shiny decorations reflect well on me.",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "Is this the reverse of insanity?",
			UNCOMMON = "You don't see this kind of design too often.",
			GENERIC = "I seem to be getting a lot of these...",
		},
		CARNIVALDECOR_FIGURE_KIT = "The thrill of discovery!",
		CARNIVALDECOR_FIGURE_KIT_SEASON2 = "The thrill of discovery!",

        CARNIVAL_BALL = "It's a ball.", --unimplemented
		CARNIVAL_SEEDPACKET = "I was feeling a bit peckish.",
		CARNIVALFOOD_CORNTEA = "Is this drink supposed to be crunchy?",

        CARNIVAL_VEST_A = "I think it makes me look adventurous.",
        CARNIVAL_VEST_B = "It's like wearing my own shade tree.",
        CARNIVAL_VEST_C = "I hope there's no bugs in it...",

        -- YOTB
        YOTB_SEWINGMACHINE = "Sewing can't be that hard... can it?",
        YOTB_SEWINGMACHINE_ITEM = "There looks to be a bit of assembly required.",
        YOTB_STAGE = "Strange, I never see him enter or leave...",
        YOTB_POST =  "This contest is going to go off without a hitch! Well, figuratively speaking.",
        YOTB_STAGE_ITEM = "It looks like a bit of building is in order.",
        YOTB_POST_ITEM =  "I'd better get that set up.",


        YOTB_PATTERN_FRAGMENT_1 = "If I put some of these together, I bet I could make a beefalo costume.",
        YOTB_PATTERN_FRAGMENT_2 = "If I put some of these together, I bet I could make a beefalo costume.",
        YOTB_PATTERN_FRAGMENT_3 = "If I put some of these together, I bet I could make a beefalo costume.",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "I look stupid.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "I look stupid.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "I look stupid.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "I look stupid.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "I look stupid.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "I look stupid.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "I look stupid.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "I look stupid.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "I look stupid.",
            YOTB = "I wonder what the Judge would say about this?",
        },

        WAR_BLUEPRINT = "How ferocious!",
        DOLL_BLUEPRINT = "My beefalo will look as cute as a button!",
        FESTIVE_BLUEPRINT = "This is just the occasion for some festivity!",
        ROBOT_BLUEPRINT = "This requires a suspicious amount of welding for a sewing project.",
        NATURE_BLUEPRINT = "You really can't go wrong with flowers.",
        FORMAL_BLUEPRINT = "This is a costume for some Grade A beefalo.",
        VICTORIAN_BLUEPRINT = "I think my grandmother wore something similar.",
        ICE_BLUEPRINT = "I usually like my beefalo fresh, not frozen.",
        BEAST_BLUEPRINT = "I'm feeling lucky about this one!",

        BEEF_BELL = "It makes beefalo friendly. I'm sure there's a very scientific explanation.",

		-- YOT Catcoon
		KITCOONDEN =
		{
			GENERIC = "You'd have to be pretty small to fit in there.",
            BURNT = "NOOOO!",
			PLAYING_HIDEANDSEEK = "Now where could they be...",
			PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = "Not much time left! Where are they?!",
		},

		KITCOONDEN_KIT = "The whole kit and caboodle.",

		TICOON =
		{
			GENERIC = "He looks like he knows what he's doing!",
			ABANDONED = "I'm sure I can find them on my own.",
			SUCCESS = "Hey, he found one!",
			LOST_TRACK = "Someone else found them first.",
			NEARBY = "Looks like there's something nearby.",
			TRACKING = "I should follow his lead.",
			TRACKING_NOT_MINE = "He's leading the way for someone else.",
			NOTHING_TO_TRACK = "It doesn't look like there's anything left to find.",
			TARGET_TOO_FAR_AWAY = "They might be too far away for him to sniff out.",
		},

		YOT_CATCOONSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "Maybe it would like a feather to play with...",
            BURNT = "Smells like scorched fur.",
        },

		KITCOON_FOREST = "Say goodbye to you're freedom Kitcoon becuase you're mine!",
		KITCOON_SAVANNA = "Say goodbye to you're freedom Kitcoon becuase you're mine!",
		KITCOON_MARSH = "Say goodbye to you're freedom Kitcoon becuase you're mine!",
		KITCOON_DECIDUOUS = "Say goodbye to you're freedom Kitcoon becuase you're mine!",
		KITCOON_GRASS = "Say goodbye to you're freedom Kitcoon becuase you're mine!",
		KITCOON_ROCKY = "Say goodbye to you're freedom Kitcoon becuase you're mine!",
		KITCOON_DESERT = "Say goodbye to you're freedom Kitcoon becuase you're mine!",
		KITCOON_MOON = "Say goodbye to you're freedom Kitcoon becuase you're mine!",
		KITCOON_YOT = "Say goodbye to you're freedom Kitcoon becuase you're mine!",

        -- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "What the hell are you?",
            DEAD = "Gotcha!",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "I think I just made it angry...",
            DEAD = "This time I'm sure I got it.",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "You've made your point!",
        ALTERGUARDIAN_PHASE3 = "It's definitely angry now!",
        ALTERGUARDIAN_PHASE3TRAP = "It wants me to take a nap, but I have insomnia.",
        ALTERGUARDIAN_PHASE3DEADORB = "Is it dead? That strange energy still seems to be lingering around it.",
        ALTERGUARDIAN_PHASE3DEAD = "Maybe someone should go poke it... just to be sure.",

        ALTERGUARDIANHAT = "It's a weird looking hat.",
        ALTERGUARDIANHATSHARD = "Even a single piece is pretty illuminating!",

        MOONSTORM_GLASS = {
            GENERIC = "It's glassy.",
            INFUSED = "It's glowing with unearthly energy."
        },

        MOONSTORM_STATIC = "What the fuck is this?",
        MOONSTORM_STATIC_ITEM = "It feels staticky.",
        MOONSTORM_SPARK = "I don't know what the heck this is.",

        BIRD_MUTANT = "I think that used to be a crow.",
        BIRD_MUTANT_SPITTER = "I don't like the way it's looking at me...",

        WAGSTAFF_NPC = "Look at that old guy.",
        ALTERGUARDIAN_CONTAINED = "It's draining the energy right out of that monster!",

        WAGSTAFF_TOOL_1 = "That has to be the tool I'm looking for!",
        WAGSTAFF_TOOL_2 = "I have no idea what this is.",
        WAGSTAFF_TOOL_3 = "It's a sciency thing.",
        WAGSTAFF_TOOL_4 = "I think this is what I'm looking for.",
        WAGSTAFF_TOOL_5 = "No idea what this does.",

        MOONSTORM_GOGGLESHAT = "I don't know what I did but it did something.",

        MOON_DEVICE = {
            GENERIC = "It's doing something.",
            CONSTRUCTION1 = "Oh that worked?",
            CONSTRUCTION2 = "Damn that also worked?",
        },

		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "It's a magic watch.",
			RECHARGING = "I guess it's recharging.",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "It's a magic watch.",
			RECHARGING = "I guess its recharging.",
		},

        POCKETWATCH_WARP = {
			GENERIC = "It's a magic watch.",
			RECHARGING = "It's doing \"time stuff\"",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "It's a magic watch.",
			RECHARGING = "It's doing \"time stuff\"",
			UNMARKED = "only_used_by_wanda",
			MARKED_SAMESHARD = "only_used_by_wanda",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "It's a magic watch.",
			RECHARGING = "It's doing \"time stuff\"",
			UNMARKED = "only_used_by_wanda unmarked",
			MARKED_SAMESHARD = "only_used_by_wanda same shard",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "That looks like a bad time just waiting to happen.",
			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "See I knew it was magic!",
        POCKETWATCH_DISMANTLER = "I wonder if she got them second hand.",

        POCKETWATCH_PORTAL_ENTRANCE =
		{
			GENERIC = "Onward, to death!",
			DIFFERENTSHARD = "Onward, to death!",
		},
        POCKETWATCH_PORTAL_EXIT = "It's a long drop down.",

        -- Waterlog
        WATERTREE_PILLAR = "That tree is massive!",
        OCEANTREE = "I think these trees are a little lost.",
        OCEANTREENUT = "There's something alive inside.",
        WATERTREE_ROOT = "It's not a square root.",

        OCEANTREE_PILLAR = "It's not quite as great as the original, but still pretty good.",

        OCEANVINE = "Haha tree noodles.",
        FIG = "Is it some sort of fig?",
        FIG_COOKED = "The fig has been cooked.",

        SPIDER_WATER = "This makes me hate spiders more! Why does it float?!",
        MUTATOR_WATER = "Fucking disgusting!",
        OCEANVINE_COCOON = "What if I just gave it a little poke?",
        OCEANVINE_COCOON_BURNT = "I smell burnt toast.",

        GRASSGATOR = "I don't think he likes me very much.",

        TREEGROWTHSOLUTION = "Mmmm, tree food!",

        FIGATONI = "Mama mia!",
        FIGKABAB = "Fig with a side of stick.",
        KOALEFIG_TRUNK = "Great, now I've got a stuffed nose.",
        FROGNEWTON = "The fig really brings it all together.",

        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "Hey look it's the Terraria tree.",
            CRIMSON = "the Crimson biome was always the worst.",
            ENABLED = "Am I on the other side of the rainbow?!",
			WAITING_FOR_DARK = "What could it be? May as well wait and find out.",
			COOLDOWN = "It needs to cool down after that.",
			SPAWN_DISABLED = "I shouldn't be bothered by anymore prying eyes now.",
        },

        -- Wolfgang
        MIGHTY_GYM =
        {
            GENERIC = "Wooooooo gym! Lets go!",
            BURNT = "It won't pull any muscles now.",
        },

        DUMBBELL = "Is this as heavy as the ones back home?",
        DUMBBELL_GOLDEN = "It's made of gold, that's heavy!",
		DUMBBELL_MARBLE = "Marble would be a nice challenge.",
        DUMBBELL_GEM = "I should probably get a spotter before trying to lift this.",
        POTATOSACK = "It's either filled with potato-shaped rocks or rock-shaped potatoes.",


        TERRARIUMCHEST =
		{
			GENERIC = "What harm ever came from peeking inside a box?",
			BURNT = "It won't be bothering anyone anymore.",
			SHIMMER = "That seems a bit out of place...",
		},

		EYEMASKHAT = "You could say I have an eye for style.",

        EYEOFTERROR = "I'm gonna blind you motherfucker!",
        EYEOFTERROR_MINI = "I'm starting to feel more self-conscious then usual.",
        EYEOFTERROR_MINI_GROUNDED = "I think it's about to hatch...",

        FROZENBANANADAIQUIRI = "Yellow and mellow.",
        BUNNYSTEW = "This one's luck has run out.",
        MILKYWHITES = "...Ew.",

        CRITTER_EYEOFTERROR = "Always good to have another set of eyes! Er... eye.",

        SHIELDOFTERROR ="The best defense is a good mawfence.",
        TWINOFTERROR1 = "Maybe they're friendly? ...Maybe not.",
        TWINOFTERROR2 = "Maybe they're friendly? ...Maybe not.",

        -- Year of the Catcoon
        CATTOY_MOUSE = "Its a mouse on wheels.... Neat.",
        KITCOON_NAMETAG = "I am shit at coming up with names.",

		KITCOONDECOR1 =
        {
            GENERIC = "It's not a real bird, but the kits don't know that.",
            BURNT = "Combustion!",
        },
		KITCOONDECOR2 =
        {
            GENERIC = "Those kits are so easily distracted. Now what was I doing again?",
            BURNT = "It went up in flames.",
        },

		KITCOONDECOR1_KIT = "It looks like there's some assembly required.",
		KITCOONDECOR2_KIT = "It doesn't look too hard to build.",

        -- WX78
        WX78MODULE_MAXHEALTH = "It's a dodad.",
        WX78MODULE_MAXSANITY1 = "It's a dodad.",
        WX78MODULE_MAXSANITY = "It's a dodad.",
        WX78MODULE_MOVESPEED = "It's a dodad.",
        WX78MODULE_MOVESPEED2 = "It's a dodad.",
        WX78MODULE_HEAT = "It's a dodad.",
        WX78MODULE_NIGHTVISION = "It's a dodad.",
        WX78MODULE_COLD = "It's a dodad.",
        WX78MODULE_TASER = "It's a dodad.",
        WX78MODULE_LIGHT = "It's a dodad.",
        WX78MODULE_MAXHUNGER1 = "It's a dodad.",
        WX78MODULE_MAXHUNGER = "It's a dodad.",
        WX78MODULE_MUSIC = "It's a dodad.",
        WX78MODULE_BEE = "It's a dodad.",
        WX78MODULE_MAXHEALTH2 = "It's a dodad.",

        WX78_SCANNER =
        {
            GENERIC ="WX-78 really puts a piece of themselves into their work.",
            HUNTING = "Get that data!",
            SCANNING = "Seems like it's found something.",
        },

        WX78_SCANNER_ITEM = "I wonder if it dreams about scanning sheep.",
        WX78_SCANNER_SUCCEEDED = "It's got the look of someone eager to show their work.",

        WX78_MODULEREMOVER = "It's a thingy.",

        SCANDATA = "It's some sort of data.",

        -- Pirates
        BOAT_ROTATOR = "Things are going in the right direction. Or maybe the left.",
        BOAT_ROTATOR_KIT = "I think I'll take it out for a spin.",
        BOAT_BUMPER_KELP = "It won't save the boat from everything, but it sure kelps.",
        BOAT_BUMPER_KELP_KIT = "A soon-to-be boat bumper.",
        BOAT_BUMPER_SHELL = "It gives the boat a little shellf defence.",
        BOAT_BUMPER_SHELL_KIT = "A soon-to-be boat bumper.",
        BOAT_CANNON = {
            GENERIC = "I should load it with something.",
            AMMOLOADED = "The cannon is ready to fire!",
            NOAMMO = "I didn't forget the cannonballs, I'm just letting the anticipation build.",
        },
        BOAT_CANNON_KIT = "It's not a cannon yet, but it will be.",
        CANNONBALL_ROCK_ITEM = "This will fit into a cannon perfectly.",

        OCEAN_TRAWLER = {
            GENERIC = "It makes fishing more effishient.",
            LOWERED = "And now we wait.",
            CAUGHT = "It caught something!",
            ESCAPED = "Looks like something was caught, but it escaped...",
            FIXED = "All ready to catch fish again!",
        },
        OCEAN_TRAWLER_KIT = "I should put it somewhere with lots of fish.",

        BOAT_MAGNET =
        {
            GENERIC = "Why does this exist?",
            ACTIVATED = "How does this even work?!",
        },
        BOAT_MAGNET_KIT = "I slapped a bunch of random things together and it worked.",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "This will attract any strong magnets nearby.",
            ACTIVATED = "Magnetism!",
        },
        DOCK_KIT = "Everything I need to build a dock for my boat.",
        DOCK_WOODPOSTS_ITEM = "Aha! I thought the dock was missing something.",

        MONKEYHUT =
        {
            GENERIC = "I use to love me a good treehouse.",
            BURNT = "Like I said!",
        },
        POWDER_MONKEY = "Don't you dare monkey around with my boat!",
        PRIME_MATE = "A nice hat is always a clear indicator of who's in charge.",
		LIGHTCRAB = "Is that crab emitting light?",
        CUTLESS = "What it lacks in slicing it makes up for in splinters.",
        CURSED_MONKEY_TOKEN = "It seems harmless.",
        OAR_MONKEY = "It really puts the paddle to the battle.",
        BANANABUSH = "That bush is bananas!",
        DUG_BANANABUSH = "That bush is bananas!",
        PALMCONETREE = "Kind of piney, for a palm tree.",
        PALMCONE_SEED = "The very beginnings of a tree.",
        PALMCONE_SAPLING = "It has big dreams of being a tree one day.",
        PALMCONE_SCALE = "If trees had toenails, I imagine they'd look like this.",
        MONKEYTAIL = "Can I eat this? Hmmmmm.",
        DUG_MONKEYTAIL = "Can I eat this? Hmmmmm.",

        MONKEY_MEDIUMHAT = "I think it makes me look very dashing and captain-like.",
        MONKEY_SMALLHAT = "At least it will keep my hair dry.",
        POLLY_ROGERSHAT = "A little bird told me it will come in handy.",
        POLLY_ROGERS = "That's the little bird.",

        MONKEYISLAND_PORTAL = "Ah yes this portal is made out of portal.",
        MONKEYISLAND_PORTAL_DEBRIS = "Ah yes this portal is made out of portal.",
        MONKEYQUEEN = "She looks like the top banana around here.",
        MONKEYPILLAR = "A real pillar of the community.",
        PIRATE_FLAG_POLE = "Ahoy!",

        BLACKFLAG = "Hmmmm life as a pirate? Never put much thought into it.",
        PIRATE_STASH = "I'm diggin' the decor.",
        STASH_MAP = "It's nice to have some direction in life.",


        BANANAJUICE = "Makes me feel a bit rogueish.",

        FENCE_ROTATOR = "Enguard! Re-post!",

        -- Shipwrecked Describes
        FLOTSAM = "Hey look someone littered in the ocean.",
		SUNKEN_BOAT = 
		{
			GENERIC = "I bet that parrot is responsible.",
			ABANDONED = "Is this foreshadowing?",
		},		
		SUNKEN_BOAT_BURNT = "Conclusion, burnt boats do not work.",
		
		BOAT_LOGRAFT = "I don't trust this but I have to use it.",
		BOAT_RAFT = "It's a raft.",
		BOAT_ROW = "Ughhh I have to put in effort...",
		BOAT_CARGO = "A place to put all my garbage!",
		BOAT_ARMOURED = "That'll slow down the rate of sinking.",
		BOAT_ENCRUSTED = "Something similar happens if you leave a car unusued for a long time.",
		CAPTAINHAT = "I'm sure the last captain didn't need this.",
		
		BOAT_TORCH = "Let there be light!",
		BOAT_LANTERN = "It's a better torch!",
		BOATREPAIRKIT = "Oh great I can delay the inevitable...",
		BOATCANNON = "There are people I should keep this away from.",
		
		BOTTLELANTERN = "It's a bottle with a torch in it.",
		BIOLUMINESCENCE = "What do I do with this?",
		
		BALLPHIN = "That's a funny looking dolphine.",
		BALLPHINHOUSE = "Looks more live a cave...",
		DORSALFIN = "I ripped this from a wannabe dolphine.",
		TUNACAN = "Tuna and pasta would be great right about now.",
		
		JELLYFISH = "I got stung by one of these once...",
		JELLYFISH_DEAD = "Good riddence!",
		JELLYFISH_COOKED = "Desperate times call for desperate measures!",
		JELLYFISH_PLANTED = "Look at it bob around.",
		JELLYJERKY = "Crusty jellyfish.",
		RAINBOWJELLYFISH = "Oh a rainbow jellyfish.",
		RAINBOWJELLYFISH_DEAD = "I guess it never went over the rainbow huh.",
		RAINBOWJELLYFISH_COOKED = "Taste the rainbow!",
		RAINBOWJELLYFISH_PLANTED = "Look at it bob around.",
		JELLYOPOP = "Been ages since I had a lolly pop.",
		
		CROCODOG = "Oh neat something else I can kill!",
		POISONCROCODOG = "This looks like a tougher foe then the last one.",
		WATERCROCODOG = "Damn its a blue one.",
		
		PURPLE_GROUPER = "This is fishy.",
		PIERROT_FISH = "This'd probably be better cooked.",
		NEON_QUATTRO = "Never seen a fish like this before.",
		PURPLE_GROUPER_COOKED = "Better cooked then uncooked.",
		PIERROT_FISH_COOKED = "I knew it'd be better!",
		NEON_QUATTRO_COOKED = "Down the hatch.",
		TROPICALBOUILLABAISSE = "It's like a fishy stew!",
		
		FISH_FARM = 
		{
			EMPTY = "It seems I need to rob some fish of their eggs.",
			STOCKED = "And now I wait.",
			ONEFISH = "There is... A fish.",
			TWOFISH = "Yes, YES! Multiply.",
			REDFISH = "I have acquired a red fish.",
			BLUEFISH  = "I have acquired a blue fish.",
		},
		
		ROE = "I'm sorry Nemo.",
		ROE_COOKED = "It was necessary I swear.",
		CAVIAR = "It's a jar of... Caviar?",
		
		CORMORANT = "I can never escape these pesky birds!",
		SEAGULL = "Oh no! They exist!",
		SEAGULL_WATER = "Oh no! They exist!",
		TOUCAN = "Damn, his beak is huge!",
		PARROT = "I use to have a parrot once, it was a bastard.",
		PARROT_PIRATE = "Why is it dressed like a pirate?",
		
		SEA_YARD =
		{
			ON = "I guess I can use it to hold my ship.",
			OFF = "It's not turned on.",
			LOWFUEL = "I think it's running out of fuel.",
		},
		
		SEA_CHIMINEA = 
		{
			EMBERS = "Looks like it's going out.",
			GENERIC = "It's a fancy barbeque.",
			HIGH = "Look at it go! BURRRRRN!",
			LOW = "It's getting rather low.",
			NORMAL = "Ahhhhh that's nice.",
			OUT = "Out it goes!",
		}, 
		
		CHIMINEA = "The wind won't blow out the flames now!",
		
		TAR_EXTRACTOR =
		{
			ON = "Look at it go!",
			OFF = "It has to be turned on to work.",
			LOWFUEL = "I'm sure it needs more fuel.",
		},
		
		TAR = "Tar! It's sticky.",
		TAR_TRAP = "Do I have to clean that up?",
		TAR_POOL = "If only I could harvest that tar...",
		TARLAMP = "I'm sure this won't bite me in the ass later.",
		TARSUIT = "Narly!",
		
		PIRATIHATITATOR =
		{
			GENERIC = "I'm not even going to try and pronounce that.",
			BURNT = "And now I don't have to worry.",
		},
		
		PIRATEHAT = "Leedle Leedle Lee!",
		
		MUSSEL_FARM =
		{
			GENERIC = "I wonder what these are.",
			STICKPLANTED = "Might as well right?"
		},

		MUSSEL = "The classic.",
		MUSSEL_COOKED = "Delicious!",
		MUSSELBOUILLABAISE = "Thanks Warly.",
		MUSSEL_BED = "I don't know where to put these.",
		MUSSEL_STICK = "Might as well right?",
		
		LOBSTER = "Hello Terry.",
		LOBSTER_DEAD = "I'm sorry Terry.",
		LOBSTER_DEAD_COOKED = "Terry looks delicious.",
		LOBSTERHOLE = "Ooooh a lobster hole.",
		WOBSTERBISQUE = "It looks nice.",
        WOBSTERDINNER = "It looks really good.",
		SEATRAP = "I hope this can catch something.",
		
		BUSH_VINE =
		{
			BURNING = "Yes! BURN!",
			BURNT = "Burnt to a crisp.",
			CHOPPED = "I feel like Rambo.",
			GENERIC = "Bloody vines!",
		},
		VINE = "Does anybody remember Vine?",
		DUG_BUSH_VINE = "It's all dug up.",
		
		ROCK_LIMPET =
		{
			GENERIC = "It's full of snails!",
			PICKED = "Use to love playing on these rocks as a kid.",
		},
		
		LIMPETS = "Only if I have too...",
		LIMPETS_COOKED = "Much more suitable.",
		BISQUE = "Looks quite nice not gonna lie.",
		
		MACHETE = "Now I'm Jason Voorhees!",
		GOLDENMACHETE = "Hack n' Slash",
		
		THATCHPACK = "It's like a backpack... But worse.",
		PIRATEPACK = "Finally a place to put my loot.",
		SEASACK = "This should keep my food somewhat fresh.",
		
		SEAWEED_PLANTED =
        {
            GENERIC = "Hey look! Seaweed.",
            PICKED = "Yoink!",
        },
		
		SEAWEED = "Hey look! Seaweed.",
		SEAWEED_COOKED = "Quick and easy.",
		SEAWEED_DRIED = "It's dry!",
		SEAWEED_STALK = "I can use this to grow more!",
		
		DUBLOON = "What the fuck am I suppose to do with this?!",
		SLOTMACHINE = "Thank god I don't have a gambling addiction.",
		
		SOLOFISH = "That thing looks weird.",
		SOLOFISH_DEAD = "Better dead then alive.",
		SWORDFISH = "That thing will kill me given the chance.",
		SWORDFISH_DEAD = "I won this battle.",
		CUTLASS = "Improvise, adapt, overcome.",
		
		SUNKEN_BOAT_TRINKET_1 = "I don't know what this is.", --sextant
		SUNKEN_BOAT_TRINKET_2 = "It's a boat.", --toy boat
		SUNKEN_BOAT_TRINKET_3 = "Oh neat a candle.", --candle
		SUNKEN_BOAT_TRINKET_4 = "It's a... Thing!", --sea worther
		SUNKEN_BOAT_TRINKET_5 = "Who lost their boot?", --boot
		TRINKET_IA_13 = "Delicious soda.", --orange soda
		TRINKET_IA_14 = "I don't like dolls.", --voodoo doll
		TRINKET_IA_15 = "It's a mini guitar.", --ukulele
		TRINKET_IA_16 = "How did this get all the way out here?", --license plate
		TRINKET_IA_17 = "Where's the other one?", --boot
		TRINKET_IA_18 = "Of course I find a vase...", --vase
		TRINKET_IA_19 = "I wonder what these do?", --brain cloud pill
		TRINKET_IA_20 = "I'm not sure what it is.", --sextant
		TRINKET_IA_21 = "It is a boat... It's small.", --toy boat
		TRINKET_IA_22 = "I'm sure someone would like this.", --wine candle
		TRINKET_IA_23 = "Welp, this is broken.", --broken aac device
		EARRING = "I use to wear earrings.",
		
		TURF_BEACH = "A wise man once said \"I hate sand.\"",
		TURF_JUNGLE = "Very gnarled ground.",
		TURF_MAGMAFIELD = "Lava-y floor.",
		TURF_TIDALMARSH = "Marsh-y floor.",
		TURF_ASH = "Ashy turf.",
		TURF_MEADOW = "Meadow-y turf.",
		TURF_VOLCANO = "Volcano-y turf.",
		TURF_SWAMP = "Swampy turf.",
		TURF_SNAKESKIN = "Sssstylish ssssstatement.",
		
		WHALE_BLUE = "Oooh a big blue whale.",
		WHALE_CARCASS_BLUE = "I think it's dead.",
		WHALE_WHITE = "This one looks dangerous.",
		WHALE_CARCASS_WHITE = "I think it's dead.",
		WHALE_TRACK = "How am I tracking this whale?",
		WHALE_BUBBLES = "Weird bubbles?",
		BLUBBERSUIT = "Why does this exist?",
		BLUBBER = "Ew, gross.",
		HARPOON = "I can gut things with this!",
		
		SAIL_PALMLEAF = "Oh yeah I'm, sure this'll work...",
		SAIL_CLOTH = "A slightly better sail.",
		SAIL_SNAKESKIN = "That sail looks gross.",
		SAIL_FEATHER = "Not very reliable.",
		IRONWIND = "POG! Look at it go.",
		
		BERMUDATRIANGLE = "I have a sense of impending doom.",
		
		PACKIM_FISHBONE = "Ew, why would I carry this about.",
		PACKIM = "I miss Chester.",
		
		TIGERSHARK = "Oh fuck, it's a shark!",
		MYSTERYMEAT = "Anyone want to take one for the team?",
		SHARK_GILLS = "Grilly!",
		TIGEREYE = "An eye for an eye!",
		DOUBLE_UMBRELLAHAT = "This looks ridiculous.",
		SHARKITTEN = "What the fuck is that?!",
		SHARKITTENSPAWNER = 
		{
			GENERIC = "Huh the ground is purring.",
			INACTIVE = "Someone left this pile of sand laying around.",
		},
		
		WOODLEGS_KEY1 = "Something, somewhere must be locked.",--unused
		WOODLEGS_KEY2 = "This key probably unlocks something.",--unused
		WOODLEGS_KEY3 = "That's a key.",--unused
		WOODLEGS_CAGE = "That seems like an excessive amount of locks.",--unused
		
		CORAL = "It's coral.",
		ROCK_CORAL = "The coral's formed a reef!",
		LIMESTONENUGGET = "Could be a useful building material.",
		NUBBIN = "It's a nubbin, it nubbles.",
		CORALLARVE = "That's a baby coral reef.",
		WALL_LIMESTONE = "Solid.",
		WALL_LIMESTONE_ITEM = "These would do more good if I placed them.",
		WALL_ENFORCEDLIMESTONE = "It's better re-enforced.",
		WALL_ENFORCEDLIMESTONE_ITEM = "I have to build it in the water.",
		ARMORLIMESTONE = "I'm sure this will hold up great!",
		CORAL_BRAIN_ROCK = "I wonder what it's plotting...",
		CORAL_BRAIN = "Food for thought.",
		BRAINJELLYHAT = "This is a weird looking hat.",
		
		SEASHELL = "Maybe I could sell these.",
		SEASHELL_BEACHED = "Sea refuse.",
		ARMORSEASHELL = "Arts and crafts!",
		
		ARMOR_LIFEJACKET = "My life lies on this jacket!",
		ARMOR_WINDBREAKER = "The wind doesn't stand a chance!",
		
		SNAKE = "Better on the ground then in a plane.",
		SNAKE_POISON = "Poison snakes on a plane?",
		SNAKESKIN = "I'm intrigued AND repelled.",
		SNAKEOIL = "It is oil... It is made from snakes.",
		SNAKESKINHAT = "This looks silly.",
		ARMOR_SNAKESKIN = "Protect me!",
		SNAKEDEN =
		{
			BURNING = "Yes! BURN!",
			BURNT = "Gone and forgotten.",
			CHOPPED = "Chopped away.",
			GENERIC = "It's full of vines.",
		},
		
		OBSIDIANFIREPIT =
		{
			EMBERS = "It needs more fuel.",
			GENERIC = "It's a fancy firepit.",
			HIGH = "Yes BURN!",
			LOW = "It's slowly dying.",
			NORMAL = "It's a pretty fancy firepit.",
			OUT = "Maybe I should add fuel to it.",
		},
		
		OBSIDIAN = "It's a fire rock.",
		ROCK_OBSIDIAN = "Blast it! It won't be mined!",
		OBSIDIAN_WORKBENCH = "Seems overkill to me.",
		OBSIDIANAXE = "Chop, chop motherfucker.",
		OBSIDIANMACHETE = "Slice n' dice.",
		SPEAR_OBSIDIAN = "I still prefer my knife.",
		VOLCANOSTAFF = "Ah yes nothing can possibly go wrong with this.",
		ARMOROBSIDIAN = "This will surely keep me safe.",
		COCONADE =
		{
			BURNING = "Look at it burn.",
			GENERIC = "It needs lighting.",
		},
		
		OBSIDIANCOCONADE =
		{
			BURNING = "Fire in the hole!",
			GENERIC = "It's even bombier!",
		},
		
		VOLCANO_ALTAR =
		{
			GENERIC = "Ah yes an alter.",
			OPEN = "It looks like it's asking for something.",
		},
		
		VOLCANO = "In my professional opinion, I stay the fuck away from that.",
		VOLCANO_EXIT = "I really should just leave.",
		ROCK_CHARCOAL = "Would need an awfully big stocking for that.",
		VOLCANO_SHRUB = "It's a sad volcano.",
		LAVAPOOL = "Ooooh hot.",
		COFFEEBUSH =
		{
			BARREN = "Looks kinda dead.",
			WITHERED = "It's withered I think?",
			GENERIC = "This is a plant, it has coffee beans.",
			PICKED = "Noooo, give me more coffee beans.",
		},
		
		COFFEEBEANS = "Mmmm, they smell like coffee.",
		COFFEEBEANS_COOKED = "They smell even better now!",
		DUG_COFFEEBUSH = "I really should replant this.",
		COFFEE = "Smells delicious and energizing!",
		
		ELEPHANTCACTUS =
		{
			BARREN = "It could use some ash, but I better stand back afterward.",
			WITHERED = "It could use some ash, but I better stand back afterward.",
			GENERIC = "Watch out! I could poke an eye out!",
			PICKED = "It's safe to approach for now.",
		},
		
		DUG_ELEPHANTCACTUS = "It's prickly.",
		ELEPHANTCACTUS_ACTIVE = "That cactus seems abnormally pokey.",
		ELEPHANTCACTUS_STUMP = "It'll sprout pokers again eventually.",
		NEEDLESPEAR = "I'm glad I didn't step on this.",
		ARMORCACTUS = "The best defense is a good offense.",
		
		TWISTER = "I thought it was strangely windy around here.",
		TWISTER_SEAL = "Thank god its not a sharknado.",
		TURBINE_BLADES = "These would be more effective during a storm.",
		MAGIC_SEAL = "It's a magic seal?",
		WIND_CONCH = "I can hear the wind trapped within.",
		WINDSTAFF = "Ah yes, I have infinite air runes now!",
		
		DRAGOON = "What the fuck are you?",
		DRAGOONHEART = "Ripped right from the chest.",
		DRAGOONSPIT = "Ew, spit.",
		DRAGOONEGG = "Egg.",
		DRAGOONDEN = "Looks like a den.",
		
		ICEMAKER = 
		{
			OUT = "I think it needs more fuel.",
			VERYLOW = "It's running out.",
			LOW = "It's become slow.",
			NORMAL = "Look at it go!",
			HIGH = "It's zooming!",
		},
		
		HAIL_ICE = "This could do some serious damage if it was bigger.",
		
		BAMBOOTREE =
		{
			BURNING = "YES BAMBOO BURN!",
			BURNT = "It's burnt to a crisp.",
			CHOPPED = "Chopped to pieces.",
			GENERIC = "It's bamboo.", --"Looks pretty sturdy.", -Mob
		},
		
		BAMBOO = "That's certainly bamboo.",
		FABRIC = "It's so soft.",
		DUG_BAMBOOTREE = "I should replant this.",
		
		JUNGLETREE =
		{
			BURNING = "Look at it burn!",
			BURNT = "It's burnt to a crisp.",
			CHOPPED = "Chopped to pieces.",
			GENERIC = "That's a big tree.",
		},
		
		JUNGLETREESEED = "Are those snakes I can hear?",
		JUNGLETREESEED_SAPLING = "One day it will grow into a magnificent tree.",
		LIVINGJUNGLETREE = "Is this tree alive?",
		
		OX = "These creatures seem reasonable.",
		BABYOX = "Smaller, but just as smelly.",
		OX_HORN = "I stole it's horn.",
		OXHAT = "Nice and dry. This helmet will protect me from the elements.",
		OX_FLUTE = "Is it dripping...?",
		
		MOSQUITO_POISON = "Mosquitoes are known for carrying diseases.",
		MOSQUITOSACK_YELLOW = "Part of a yellow mosquito.",
		
		STUNGRAY = "I prefer to be over here.",
		POISONHOLE = "I think I'll stay away from that.",
		GASHAT = "It will remove all the bad smells.",
		
		ANTIVENOM = "Tastes like shit but It'll save me.",
		VENOMGLAND = "Only poison can cure poison.",
		POISONBALM = "I bet Wormwood would find more value in this.",
		
		SPEAR_POISON = "Tipped with a treat.",
		BLOWDART_POISON = "I don't want to be on the recieving end of this.",
		
		SHARX = "AAAAAGGGGGHHHHHHH a shark!",
		SHARK_FIN = "I ripped this from its body.",
		SHARKFINSOUP = "The predator becomes the prey.",
		SHARK_TEETHHAT = "What a dangerous looking hat.",
		AERODYNAMICHAT = "This thing looks silly.",
		
		IA_MESSAGEBOTTLE = "Looks like someone has written a message.",
		IA_MESSAGEBOTTLEEMPTY = "It's a bottle",
		BURIEDTREASURE = "Oooh what could this be?",
		
		SAND = "It's sand.",
		SANDDUNE = "Dun dun dunnnn.",
		SANDBAGSMALL = "This should stop that pesky water.",
		SANDBAGSMALL_ITEM = "A bag full of sand.",
		SANDCASTLE =
		{
			SAND = "It's a castle made of sand.",
			GENERIC = "Tempted to kick it."
		},
		
		SUPERTELESCOPE = "Damn this is a good telescope.",
		TELESCOPE = "It's a telescope.",
		
		DOYDOY = "It's a weird looking bird.",
		DOYDOYBABY = "It looks kinda weird.",
		DOYDOYEGG = "Egg.",
		DOYDOYEGG_COOKED = "I scrambled your chances of life!",
		DOYDOYFEATHER = "Consider yourself extinct.",
		DOYDOYNEST = "It's a nest.",
		TROPICALFAN = "It's a fan.",
		
		PALMTREE =
		{
			BURNING = "BURN TREE BUUUURN!",
			BURNT = "Burnt to a crisp.",
			CHOPPED = "Chopped to pieces.",
			GENERIC = "I hope it doesn't fall on me.",
		},
		
		COCONUT = "Delicious juices inside.",
		COCONUT_HALVED = "I have successfully opened it.",
		COCONUT_COOKED = "It smells delicious.",
		COCONUT_SAPLING = "I should consider replanting this.",
		PALMLEAF = "It's a leaf.",
		PALMLEAF_UMBRELLA = "It's a crappy umbrella.",
		PALMLEAF_HUT = "This will provide abit of shelter.",
		LEIF_PALM = "It's a palm in my ass.",
		
		CRAB = 
		{
			GENERIC = "Mr Krabs, why are you so mad?",
			HIDDEN = "Can I offer you some money to come out?",
		},
		
		CRABHOLE = "Really it's a hole in the sand.",
		
		TRAWLNETDROPPED = 
		{
			SOON = "Down it goes!",
			SOONISH = "It's slowly going down.",
			GENERIC = "It's full of potential.",
		},
		
		TRAWLNET = "It's a net.",
		IA_TRIDENT = "It's like a giant fork.",
		
		KRAKEN = "The black spot!",
		KRAKENCHEST = "A chest of quacken.",
		KRAKEN_TENTACLE = "I better deal with that fast.",
		QUACKENBEAK = "Damn, look at that beak.",
		QUACKENDRILL = "This would be useful for tar.",
		QUACKERINGRAM = "Ramming speed!",
		
		MAGMAROCK = "I can dig it.",
		MAGMAROCK_GOLD = "This one is gold.",
		FLAMEGEYSER = "I shouldn't go near that.",
		
		TELEPORTATO_SW_RING = "Looks like I could use this.",
		TELEPORTATO_SW_BOX = "It looks like a part for something.",
		TELEPORTATO_SW_CRANK = "I wonder what this is used for.",
		TELEPORTATO_SW_POTATO = "Seems like it was made with a purpose in mind.",
		TELEPORTATO_SW_BASE = "I think it's missing some parts.",
		
		PRIMEAPE = "This thing will surely kill me.",
		PRIMEAPEBARREL = "A barrel full of primape.",
		MONKEYBALL = "Oh super!",
		WILBUR_UNLOCK = "He looks kind of regal.",--unused
		WILBUR_CROWN = "It's oddly monkey-sized.",--unused
		
		MERMFISHER = "You better not try anything fishy.",
		MERMHOUSE_FISHER = "That smells like shit.",
		
		OCTOPUSKING = "That is one big octopus.",
		OCTOPUSCHEST = "All the loot will be soaked.",
		
		SWEET_POTATO = "Looks yammy!",
		SWEET_POTATO_COOKED = "Looks even yammier!",
		SWEET_POTATO_PLANTED = "That's an odd looking carrot.",
		SWEET_POTATO_SEEDS = "It's a seed.",
		SWEET_POTATO_OVERSIZED = "IT'S HUGE!",
		SWEETPOTATOSOUFFLE = "It tastes so sweet.",
		
		BOAT_WOODLEGS = "That's a boat.",
		WOODLEGSHAT = "It's a funny looking hat.",
		SAIL_WOODLEGS = "Neat a pirate sail.",
		
		PEG_LEG = "That makes me feel umcomfortable.",
		PIRATEGHOST = "AAAAGGGGGGHHHHH GHOSTS!",
		
		WILDBORE = "He looks pretty mad.",
		WILDBOREHEAD = "Now to put it on a pike.",
		WILDBOREHOUSE = "Do bores have houses?",
		
		MANGROVETREE = "It's a strange looking tree.",
		MANGROVETREE_BURNT = "Whoops.",
		
		PORTAL_SHIPWRECKED = "It's broken.",
		SHIPWRECKED_ENTRANCE = "I'm stranded.",
		SHIPWRECKED_EXIT = "Up up and away!",
		
		TIDALPOOL = "A pool, left by the tides.",
		FISHINHOLE = "This area seems pretty fishy.",
		FISH_TROPICAL = "What a tropical looking fish.",
		TIDAL_PLANT = "Look. A plant.",
		MARSH_PLANT_TROPICAL = "Planty.",
		
		FLUP = "Leave me alone!",
		BLOWDART_FLUP = "Pointy!",
		
		SEA_LAB = "It's a lab, at sea.",
		BUOY = "We can use these as markers!", 
		WATERCHEST = "I hope that keeps water out as well as it keeps loot in.",
		
		LUGGAGECHEST = "It looks like a premier steamer trunk.",
		WATERYGRAVE = "Sure, I could fish it out of there. But should I?",
		SHIPWRECK = "I guess you could say it's \"Shipwrecked\"",
		BARREL_GUNPOWDER = "An explosive barrel.",
		RAWLING = "It's my buddy!",
		GRASS_WATER = "I hope you're thirsty, grass.",
		KNIGHTBOAT = "Get off the waterway, you maniac!",
		
		DEPLETED_BAMBOOTREE = "I don't think it'll grow back?",
		DEPLETED_BUSH_VINE = "I don't think it'll grow back?",
		DEPLETED_GRASS_WATER = "I don't think it'll grow back?",
		
		WALLYINTRO_DEBRIS = "Part of a wrecked ship.",--unused
		BOOK_METEOR = "I'm too lazy to read.",
		CRATE = "Can't I just force it open?",
		SPEAR_LAUNCHER = "Pew, pew, pew!",
		MUTATOR_TROPICAL_SPIDER_WARRIOR = "I fucking hate spiders and this one is troipcal!",
		
		--SWC
		BOAT_SURFBOARD = "Oh neat a surfboard!",
		SURFBOARD_ITEM = "Oh neat a surfboard!",
    },

    DESCRIBE_GENERIC = "It's a... thing.",
    DESCRIBE_TOODARK = "It's too dark to see!",
    DESCRIBE_SMOLDERING = "That thing is about to catch fire.",

    DESCRIBE_PLANTHAPPY = "What a happy plant!",
    DESCRIBE_PLANTVERYSTRESSED = "This plant seems to be under a lot of stress.",
    DESCRIBE_PLANTSTRESSED = "It's a little cranky.",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "I might have to do a bit of weeding...",
    DESCRIBE_PLANTSTRESSORFAMILY = "Can plants be lonely? I guess so?",
    DESCRIBE_PLANTSTRESSOROVERCROWDING = "There are too many plants competing for this small space.",
    DESCRIBE_PLANTSTRESSORSEASON = "This season is not being kind to this plant.",
    DESCRIBE_PLANTSTRESSORMOISTURE = "This looks really dehydrated.",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "This poor plant needs nutrients!",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "It's hungry for some good conversation.",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Mmm. Beaky.",
		WINTERSFEASTFUEL = "Tastes like the holidays.",
    },

    -- Luke's custom speech lines
    PROTECTED_FROM_INSECTS = "I should be safe from insects with this.",
    UNPROTECTED_FROM_INSECTS = "I should be weary of insects.",
    SEA_SICKNESS = 
    {
        "Ughhhh I feel sick",
        "I hate being sea sick",
        "I don't feel so good"
    },
    SEA_SICKNESS_CURE =
    {
        "Yay land!",
        "Starting to feel better already!",
        "I really shouldn't sail"
    },
    MUTTER_LAND_SPRING =
    {
        "Ughhhh it's chilly",
        "My hands are cold...",
        "Hahahahahaha",
        "Well at least it's not winter..."
    },
    MUTTER_LAND_SUMMER =
    {
        "Fuck me it's hot.",
        "HELP ME I'M DYING OF A HEAT STROKE!",
        "Hahahahahaha",
        "Does anybody have a bucket of water?"
    },
    MUTTER_LAND_AUTUMN =
    {
        "A whole load of nothing out here.",
        "Why are there so many birds?",
        "Hahahahahaha",
        "Ahhhh I love autumn"
    },
    MUTTER_LAND_WINTER =
    {
        "Fuck me it's FREEZING!",
        "My hands have turned to ice!",
        "Hahahahahaha",
        "Can I sleep through winter?... Oh wait I have insomnia..."
    },
    MUTTER_SEA_SPRING =
    {
        "The winds are cold",
        "The sea's are quiet today",
        "I'd like to remain on this boat where it's safe.",
        "Hahahahahaha"
    },
    MUTTER_SEA_SUMMER =
    {
        "If only I could enjoy the open ocean without being sick.",
        "God would you just look at how beautiful the sky is.",
        "Wonderful weather we are having today.",
        "Hahahahahaha"
    },
    MUTTER_SEA_AUTUMN =
    {
        "Ugh I hate the open sea...",
        "Thank god seagulls don't exist.",
        "GOD DAMN PELICANS!",
        "Hahahahahaha"
    },
    MUTTER_SEA_WINTER =
    {
        "I'm surprised the ocean doesn't freeze.",
        "I hope this doesn't end like the Titanic...",
        "If we fall in the water we will surely die!",
        "Hahahahahaha"
    },
    MUTTER_LAND_MONSOON =
    {
        "Tis monsoon season!",
        "It's windy out.",
        "It's rather cold.",
        "Hahahahahaha"
    },
    MUTTER_LAND_DRY =
    {
        "Everythings damn dry!",
        "I could go for a drink.",
        "It's quite hot out.",
        "Hahahahahaha"
    },
    MUTTER_LAND_MILD =
    {
        "I'm having a rather mild time...",
        "Everything feels bland.",
        "I'm bored.",
        "Hahahahahaha"
    },
    MUTTER_LAND_HURRICANE =
    {
        "Tis hurricane season!",
        "Its that time of year again.",
        "Wouldn't be a good idea to go out to sea.",
        "Hahahahahaha"
    },
    MUTTER_SEA_MONSOON =
    {
        "Tis monsoon season!",
        "It's windy out.",
        "It's rather cold.",
        "Hahahahahaha"
    },
    MUTTER_SEA_DRY =
    {
        "Everythings damn dry!",
        "I could go for a drink.",
        "It's quite hot out.",
        "Hahahahahaha"
    },
    MUTTER_SEA_MILD =
    {
        "I'm having a rather mild time...",
        "Everything feels bland.",
        "I'm bored.",
        "Hahahahahaha"
    },
    MUTTER_SEA_HURRICANE =
    {
        "Tis hurricane season!",
        "Its that time of year again.",
        "Wouldn't be a good idea to go out to sea.",
        "Hahahahahaha"
    },
    MUTTER_INSANITY =
    {
        "I'm fucking insane!",
        "I'm losing my mind!",
        "What the fuck was that?!",
        "I swear I'm seeing shit...",
        "Hahahahahaha",
        "QUICK! Get me my knife!"
    },
    MUTTER_HUNGRY =
    {
        "I'm starving HELP!",
        "I make a polite request for food.",
        "It appears I am hungry",
        "Careful I might get hangry.",
        "Hahahahahaha"
    },
    MUTTER_CAVE = {
        "I'm in a cave.",
        "Boy this cave is dark.",
        "Why am I down here?",
        "It's dangerous down here...",
        "Hahahahahaha"
    },
    ONFIRE =
    {
        "AGHHHHHHHHHHH",
        "I have spontaneously combusted.",
        "It appears I am on fire.",
        "HELP I'M ON FIRE!"
    },
    ISFROZEN =
    {
        "GWAAAAAA",
        "Look, I'm a caveman now!",
        "I appear to have frozen",
        "IT'S FUCKING FREEZING!"
    },
}
