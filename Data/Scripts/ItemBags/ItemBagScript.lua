-- // ============================================================
-- // == INTERNATIONAL GAMING CENTER NETWORK
-- // == www.igcn.mu
-- // == (C) 2022 IGC-Network (R)
-- // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- // == File is a part of IGCN Group MuOnline Server files.
-- // ============================================================

-- ItemBag Control Script, Lua v5.3
-- Can be modified to adjust ItemBags behavior for own needs

-- Any Custom chances to the script are out of support scope

-- Define Bag Use Types
	BAG_REWARD_GROUND = 0
	BAG_REWARD_INVENTORY = 1
	BAG_REWARD_GREMORY_CASE = 2
	
-- Define Bag Types
	BAG_DROP = 0 -- Mostly Boxes and other items which dropped on ground throws item
	BAG_INVENTORY = 1 -- Mostly Boxes and other items which require right click to use in inventory
	BAG_MONSTER = 2 -- Basically all Monsters, apart of those which have their dedicated drop system
	BAG_EVENT = 3 -- Hard-coded, no new items can be added to this section

-- BAG_EVENT::EventID
-- 0
	EVENTBAG_NEWPVP = 1
-- 2 - 5
	EVENTBAG_BC1 = 6
	EVENTBAG_BC2 = 7
	EVENTBAG_BC3 = 8
	EVENTBAG_BC4 = 9
	EVENTBAG_BC5 = 10
	EVENTBAG_BC6 = 11
	EVENTBAG_BC7 = 12
	EVENTBAG_CHERRYBLOSSOM_RED_20 = 13
	EVENTBAG_CC1 = 14
	EVENTBAG_LMS = 15
	EVENTBAG_SANTAFIRST = 16
	EVENTBAG_SANTASECOND = 17
	EVENTBAG_SANTATHIRD = 18
	EVENTBAG_WARRIORRING_1 = 19
	EVENTBAG_WARRIORRING_2 = 20
	EVENTBAG_CHERRYBLOSSOM_GOLD = 21
	EVENTBAG_LUCKYCOIN10 = 22
	EVENTBAG_LUCKYCOIN20 = 23
	EVENTBAG_LUCKYCOIN30 = 24
	EVENTBAG_LORDMIX = 25
	EVENTBAG_KUNDUN = 26
	EVENTBAG_ACHERONGUARDIAN = 27
	EVENTBAG_CS_LOSER_GUILDMASTER = 28
	EVENTBAG_CS_LOSER_SUPPORT_GUILDMASTER = 29
	EVENTBAG_CS_WINNER_GUILDMASTER = 30
	EVENTBAG_CS_WINNER_SUPPORT_GUILDMASTER = 31
	EVENTBAG_ARCA_LOSER_GUILDMASTER = 32
	EVENTBAG_ARCA_WINNER_GUILDMASTER = 33
	EVENTBAG_ITR_1 = 34 -- Illusion Temple Renewal 1
	EVENTBAG_ITR_2 = 35 -- Illusion Temple Renewal 2
	EVENTBAG_ITR_3 = 36 -- Illusion Temple Renewal 3
	EVENTBAG_ITR_4 = 37 -- Illusion Temple Renewal 4
	EVENTBAG_ITR_5 = 38 -- Illusion Temple Renewal 5
	EVENTBAG_ITR_6 = 39 -- Illusion Temple Renewal 6
	EVENTBAG_GOLDCOLOSSUS_GOBLIN = 40
	EVENTBAG_GOLDCOLOSSUS_TITAN = 41
	EVENTBAG_GOLDCOLOSSUS_TANTALUS = 42
	EVENTBAG_GOLDCOLOSSUS_EROHIM = 43
	EVENTBAG_GOLDCOLOSSUS_HELLMAINE = 44
	EVENTBAG_GOLDCOLOSSUS_KUNDUN = 45
	EVENTBAG_LORDSILVESTER = 46
	EVENTBAG_CHERRYBLOSSOM_WHITE = 47
	EVENTBAG_CHERRYBLOSSOM_RED_100 = 48
	EVENTBAG_CC2 = 49
	EVENTBAG_CC3 = 50
	EVENTBAG_CC4 = 51
	EVENTBAG_CC5 = 52
	EVENTBAG_CC6 = 53
	EVENTBAG_CC7 = 54
	EVENTBAG_COREMAGRIFFY = 55
	EVENTBAG_LORD_OF_FEREA = 56
	EVENTBAG_NIXIE_BOSS = 57
	EVENTBAG_GODOFDARKNESS = 58
-- 59 - 62
	EVENTBAG_BCDS1_MONSTERS = 63
	EVENTBAG_BCDS2_MONSTERS = 64
	EVENTBAG_BCDS3_MONSTERS = 65
	EVENTBAG_BCDS4_MONSTERS = 66
	EVENTBAG_BCDS4_MONSTERS = 67 -- BagUseRate set to 0 by default
	EVENTBAG_BCDS4_MONSTERS = 68 -- BagUseRate set to 0 by default
	EVENTBAG_BCDS4_MONSTERS = 69 -- BagUseRate set to 0 by default
	EVENTBAG_CW_ELF_ALTAR = 70
	EVENTBAG_CW_HERO_LIST = 71
	EVENTBAG_MSC_LEVEL1 = 72
	EVENTBAG_MSC_LEVEL2 = 73
	EVENTBAG_MSC_LEVEL3 = 74
	EVENTBAG_MSC_LEVEL4 = 75
	EVENTBAG_MSC_LEVEL5 = 76
	EVENTBAG_IWC_GM = 77
	EVENTBAG_IWC_MEMBER = 78
	EVENTBAG_IWC_PLAYER = 79
	EVENTBAG_ITL = 80
	EVENTBAG_ITL_WINNER = 81
	EVENTBAG_MAPLELEAF = 82
	
-- Define Item Kind A values
	ITEM_KIND_A_COMMON = 0
	ITEM_KIND_A_WEAPON = 1
	ITEM_KIND_A_PENDANT = 2
	ITEM_KIND_A_ARMOR = 3
	ITEM_KIND_A_RING = 4
	ITEM_KIND_A_HELPER = 5
	ITEM_KIND_A_WING = 6
	ITEM_KIND_A_PREMIUM_BUFF = 7
	ITEM_KIND_A_PENTAGRAM_ITEM = 8
	ITEM_KIND_A_JEWEL = 9
	ITEM_KIND_A_SKILL_ITEM = 10
	ITEM_KIND_A_EVENT_INVENTORY_ITEM = 11
	ITEM_KIND_A_MUUN_INVENTORY_ITEM = 12
	ITEM_KIND_A_MASTERY_WEAPON = 14
	ITEM_KIND_A_MASTERY_SET_ITEM = 15
	ITEM_KIND_A_AWAKENINGSOUL_SET_ITEM = 18
	ITEM_KIND_A_EARRING_ITEM = 19

-- Calculate ItemID Mask
function MakeItemID(ItemType, ItemIndex)
	return ItemType * 512 + ItemIndex;
end

function LoadItemBag() -- Bags Load
-- ====================================================================
-- ItemBags -- BagType, MakeItemID(Type,Index), ItemLevel, 'FileName'
-- ====================================================================
	AddItemBag(BAG_DROP, MakeItemID(14,11), 0, 'Item_(14,11,0)_Luck_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 1, 'Item_(14,11,1)_Sacred_Birth_Star') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 2, 'Item_(14,11,2)_Firecracker') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 3, 'Item_(14,11,3)_Love_Heart') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 5, 'Item_(14,11,5)_Silver_Medal') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 6, 'Item_(14,11,6)_Gold_Medal') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 7, 'Item_(14,11,7)_Heaven_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 8, 'Item_(14,11,8)_Kundun_Box+1') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 9, 'Item_(14,11,9)_Kundun_Box+2') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 10,'Item_(14,11,10)_Kundun_Box+3') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 11,'Item_(14,11,11)_Kundun_Box+4') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,11), 12,'Item_(14,11,12)_Kundun_Box+5') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,45), 0, 'Item_(14,45,0)_Pumpkin_of_Luck') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,52), 0, 'Item_(14,52,0)_GM_Gift_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,55), 0, 'Item_(14,55,0)_Green_Chaos_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,56), 0, 'Item_(14,56,0)_Red_Chaos_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,57), 0, 'Item_(14,57,0)_Purple_Chaos_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,84), 0, 'Item_(14,84,0)_Cherry_Blossom_Play_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,123),0, 'Item_(14,123,0)_Golden_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,124),0, 'Item_(14,124,0)_Silver_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,157),0, 'Item_(14,157,0)_Green_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,158),0, 'Item_(14,158,0)_Red_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,159),0, 'Item_(14,159,0)_Purple_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,141),0, 'Item_(14,141,0)_Shining_Jewelry_Case') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,142),0, 'Item_(14,142,0)_Elegant_Jewelry_Case') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,143),0, 'Item_(14,143,0)_Steel_Jewelry_Case') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,144),0, 'Item_(14,144,0)_Old_Jewelry_Case') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,248),0, 'Item_(14,248,0)_Minor_Evomon_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,249),0, 'Item_(14,249,0)_Standard_Evomon_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,250),0, 'Item_(14,250,0)_Greater_Evomon_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,251),0, 'Item_(14,251,0)_Luxurious_Evomon_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,252),0, 'Item_(14,252,0)_Magnificent_Evomon_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,253),0, 'Item_(14,253,0)_Legendary_Evomon_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,254),0, 'Item_(14,254,0)_Gift_of_Henchmen') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,256),0, 'Item_(14,256,0)_Gift_of_Knights') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,257),0, 'Item_(14,257,0)_Gift_of_High_Knights') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,258),0, 'Item_(14,258,0)_Minor_Devils_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,259),0, 'Item_(14,259,0)_Devils_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,260),0, 'Item_(14,260,0)_High_Devils_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,261),0, 'Item_(14,261,0)_Guardsmans_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,265),0, 'Item_(14,265,0)_Goblin_Treasure_Box_(Green)') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,266),0, 'Item_(14,266,0)_Goblin_Treasure_Box_(Blue)') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,267),0, 'Item_(14,267,0)_Goblin_Treasure_Box_(Red)') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,268),0, 'Item_(14,268,0)_Goblin_Treasure_Box_(Yellow)') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,262),0, 'Item_(14,262,0)_Guardman_Captains_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,286),0, 'Item_(14,286,0)_Pentagram_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,354),0, 'Item_(14,354,0)_PlayTime_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,355),0, 'Item_(14,355,0)_PlayTime_Special_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,406),0, 'Item_(14,406,0)_Intermediate_Mastery_Weapon_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,407),0, 'Item_(14,407,0)_Speed_Server_Competition_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,412),0, 'Item_(14,412,0)_Intermediate_Mastery_Armor_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,414),0, 'Item_(14,414,0)_Manche_Compensation_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,421),0, 'Item_(14,421,0)_Second_Wing_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,422),0, 'Item_(14,422,0)_Third_Wing_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,440),0, 'Item_(14,440,0)_Compensation_Box_B') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,490),0, 'Item_(14,490,0)_[TEST]_Mastery_Armor_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,491),0, 'Item_(14,491,0)_[TEST]_Mastery_Weapon_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,493),0, 'Item_(14,493,0)_Term_Wing_Box') -- DropFunction /1/
	-- AddItemBag(BAG_DROP, MakeItemID(14,496),0, 'Item_(14,496,0)_30_Day_Mastery_Weapon_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(14,503), 0, 'Item_(14,503,0)_Maple_Play_Box') -- DropFunction /1/
	AddItemBag(BAG_DROP, MakeItemID(20,231), 0, 'Item_(20,231)_60-Day_Dark_Angel_Armor_Box') -- DropFunction /1/

-- ====================================================================
-- ItemBags -- BagType, MakeItemID(Type,Index), ItemLevel, 'FileName'
-- ====================================================================			
	AddItemBag(BAG_INVENTORY, MakeItemID(12,32), 0, 'Item_(12,32,0)_Red_Ribbon_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(12,33), 0, 'Item_(12,33,0)_Green_Ribbon_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(12,34), 0, 'Item_(12,34,0)_Blue_Ribbon_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,32), 1, 'Item_(14,32,1)_Light_Purple_Candy_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,33), 1, 'Item_(14,33,1)_Orange_Candy_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,34), 1, 'Item_(14,34,1)_Dark_Blue_Candy_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(13,210),0, 'Item_(13,210,0)_WereRabbit_Egg') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(13,220),0, 'Item_(13,220,0)_Lucky_Bag_Egg') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(13,221),0, 'Item_(13,221,0)_Fire_Flame_Ghost_Egg') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(13,222),0, 'Item_(13,222,0)_Golden_Goblin_Egg') -- DropFunction /4/	
	AddItemBag(BAG_INVENTORY, MakeItemID(13,350),0, 'Item_(13,350,0)_Roomy_Egg') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,32), 0, 'Item_(14,32,0)_Pink_Chocolate_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,33), 0, 'Item_(14,33,0)_Red_Chocolate_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,34), 0, 'Item_(14,34,0)_Blue_Chocolate_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,282),0, 'Item_(14,282,0)_Mastery_Box_(Minor)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,283),0, 'Item_(14,283,0)_Mastery_Box_(Standard)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,284),0, 'Item_(14,284,0)_Mastery_Box_(Greater)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,287),0, 'Item_(14,287,0)_Mastery_Reward_Chest_(2000)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,288),0, 'Item_(14,288,0)_Mastery_Reward_Chest_(1000)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,289),0, 'Item_(14,289,0)_Mastery_Reward_Chest_(500)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,293),0, 'Item_(14,293,0)_Elemental_Capsule_(Normal)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,296),0, 'Item_(14,296,0)_Elemental_Capsule_(Fire)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,336),0, 'Item_(14,336,0)_Mastery_Reward_Chest_(100)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,337),0, 'Item_(14,337,0)_Elemental_Capsule_(Earth)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,338),0, 'Item_(14,338,0)_Elemental_Capsule_(Water)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,339),0, 'Item_(14,339,0)_Elemental_Capsule_(Wind)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,340),0, 'Item_(14,340,0)_Elemental_Capsule_(Darkness)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,351),0, 'Item_(14,351,0)_Element_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,352),0, 'Item_(14,352,0)_Ruud_Box_(10)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,367),0, 'Item_(14,367,0)_Roomy_Card_Box_(Lower)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,368),0, 'Item_(14,368,0)_Roomy_Card_Box_(Medium)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,369),0, 'Item_(14,369,0)_Roomy_Card_Box_(Higher)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,374),0, 'Item_(14,374,0)_Event_Lower_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,375),0, 'Item_(14,375,0)_Event_Medium_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,376),0, 'Item_(14,376,0)_Event_Higher_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,377),0, 'Item_(14,377,0)_Event_Luxury_Box') -- DropFunction /4/			
	AddItemBag(BAG_INVENTORY, MakeItemID(14,378),0, 'Item_(14,378,0)_Seed_Capsule_(Fire)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,379),0, 'Item_(14,379,0)_Seed_Capsule_(Water)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,380),0, 'Item_(14,380,0)_Seed_Capsule_(Ice)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,381),0, 'Item_(14,381,0)_Seed_Capsule_(Wind)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,382),0, 'Item_(14,382,0)_Seed_Capsule_(Lightning)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,383),0, 'Item_(14,383,0)_Seed_Capsule_(Earth)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,384),0, 'Item_(14,384,0)_Sphere_Upgrade_Rune_Capsule') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,385),0, 'Item_(14,385,0)_Mysterious_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,391),0, 'Item_(14,391,0)_Event_Gift_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,392),0, 'Item_(14,392,0)_Card_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,393),0, 'Item_(14,393,0)_Card_Box_(10)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,398),0, 'Item_(14,398,0)_Elemental_Talisman_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,400),0, 'Item_(14,400,0)_Ruud_Box_(10)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,401),0, 'Item_(14,401,0)_Ruud_Box_(50)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,402),0, 'Item_(14,402,0)_Ruud_Box_(100)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,403),0, 'Item_(14,403,0)_Labyrinth_Box_(Lower)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,404),0, 'Item_(14,404,0)_Labyrinth_Box_(Medium)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,405),0, 'Item_(14,405,0)_Labyrinth_Box_(Higher)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,408),0, 'Item_(14,408,0)_Jewel_Bingo_Lower_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,409),0, 'Item_(14,409,0)_Jewel_Bingo_Intermediate_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,410),0, 'Item_(14,410,0)_Jewel_Bingo_Advanced_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,411),0, 'Item_(14,411,0)_Jewel_Bingo_Premium_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(12,481),0, 'Item_(12,481,0)_Special_Grain') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,423),0, 'Item_(14,423,0)_Baseball_Lower_Case') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,424),0, 'Item_(14,424,0)_Baseball_Intermediate_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,425),0, 'Item_(14,425,0)_Baseball_Senior_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,441),0, 'Item_(14,441,0)_Lapidary_Stone_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,442),0, 'Item_(14,442,0)_Shiny_Earring_Box_(Left)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,443),0, 'Item_(14,443,0)_Shiny_Earring_Box_(Right)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,445),0, 'Item_(14,445,0)_Box_of_Blessing') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,447),0, 'Item_(14,447,0)_Ruud_Box_(2000)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,448),0, 'Item_(14,448,0)_Ruud_Box_(3000)') -- DropFunction /4/
	-- AddItemBag(BAG_INVENTORY, MakeItemID(14,455),0, 'Item_(14,455,0)_Small_Gift_Box') -- DropFunction /4/
	-- AddItemBag(BAG_INVENTORY, MakeItemID(14,456),0, 'Item_(14,456,0)_Plain_Gift_Box') -- DropFunction /4/
	-- AddItemBag(BAG_INVENTORY, MakeItemID(14,457),0, 'Item_(14,457,0)_Luxury_Gift_Box') -- DropFunction /4/
	-- AddItemBag(BAG_INVENTORY, MakeItemID(14,465),0, 'Item_(14,465,0)_Guardian_Capsule') -- DropFunction /4/
	-- AddItemBag(BAG_INVENTORY, MakeItemID(14,478),0, 'Item_(14,478,0)_Morse_Treasure_Chest') -- DropFunction /4/
	-- AddItemBag(BAG_INVENTORY, MakeItemID(14,479),0, 'Item_(14,479,0)_Morse_Treasure_Winning_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,480),0, 'Item_(14,480,0)_[Lvl 1]_Soul_Converter_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,481),0, 'Item_(14,481,0)_[Lvl 2]_Soul_Converter_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,482),0, 'Item_(14,482,0)_[Lvl 3]_Soul_Converter_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,483),0, 'Item_(14,483,0)_[Lvl 4]_Soul_Converter_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,484),0, 'Item_(14,484,0)_[Lvl 5]_Soul_Converter_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,485),0, 'Item_(14,485,0)_Ruud_Box_(500)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,486),0, 'Item_(14,486,0)_Ruud_Box_(1500)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(14,489),0, 'Item_(14,489,0)_Ruud_Box_(400)') -- DropFunction /4/
	-- AddItemBag(BAG_INVENTORY, MakeItemID(14,492),0, 'Item_(14,492,0)_Ghost_Horse_Capsule') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,68),0, 'Item_(20,68,0)_Limited_Time_Wing_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,69),0, 'Item_(20,69,0)_Earring_Box_of_Fury_(Left)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,70),0, 'Item_(20,70,0)_Earring_Box_of_Fury_(Right)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,71),0, 'Item_(20,71,0)_Ghost_Horse_Capsule') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,72),0, 'Item_(20,72,0)_Blood_Angel_Armor_Box_(1)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,73),0, 'Item_(20,73,0)_Blood_Angel_Armor_Box_(2)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,74),0, 'Item_(20,74,0)_Blood_Angel_Armor_Box_(3)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,75),0, 'Item_(20,75,0)_Blood_Angel_Armor_Box_(4)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,76),0, 'Item_(20,76,0)_Blood_Angel_Weapon_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,78),0, 'Item_(20,78,0)_Harmony_Jewel_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,85),0, 'Item_(20,85,0)_[Bound]_+13_Third_Wing_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,86),0, 'Item_(20,86,0)_[Speed]_Earring_Box_(Right)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,103),0, 'Item_(20,103,0)_Spider_Artifact_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,106),0, 'Item_(20,106,0)_Spider_Artifact_6_7_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,107),0, 'Item_(20,107,0)_Artifact_Enchantment_Stone_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,110),0, 'Item_(20,110,0)_Boss_Battle_Bonus_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,120),0, 'Item_(20,120,0)_Elixir_Jar') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,121),0, 'Item_(20,121,0)_[Bound]_Brilliant_Amulet_Box') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,125),0, 'Item_(20,125,0)_Ruud_Box_(10000)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,142),0, 'Item_(20,142,0)_Tempest_Muun Egg_(Amplified)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,143),0, 'Item_(20,143,0)_Tempest_Muun_Box_(Amplified)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,144),0, 'Item_(20,144,0)_Tempest_Muun_Evolution_Stone_Box_(Amplified)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,145),0, 'Item_(20,145,0)_Tempest_Muun_Egg_(Wide)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,146),0, 'Item_(20,146,0)_Tempest_Muun_Box_(Wide)') -- DropFunction /4/
	AddItemBag(BAG_INVENTORY, MakeItemID(20,147),0, 'Item_(20,147,0)_Tempest_Muun_Evolution_Stone_Box_(Wide)') -- DropFunction /4/

-- ====================================================================
-- MonsterBags -- BagType, 0, MonsterID, 'FileName'
-- ====================================================================
	AddItemBag(BAG_MONSTER, 0,18, 'Monster_(18)_Gorgon') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,25, 'Monster_(25)_Ice_Queen') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,38, 'Monster_(38)_Balrog') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,43, 'Monster_(43)_Golden_Budge_Dragon') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,44, 'Monster_(44)_Dragon_Red') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,49, 'Monster_(49)_Hydra') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,53, 'Monster_(53)_Golden_Titan') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,54, 'Monster_(54)_Golden_Soldier') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,55, 'Monster_(55)_Death_King') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,59, 'Monster_(59)_Zaikan') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,78, 'Monster_(78)_Golden_Goblin') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,79, 'Monster_(79)_Golden_Dragon') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,80, 'Monster_(80)_Golden_Lizard_King') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,81, 'Monster_(81)_Golden_Vepar') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,82, 'Monster_(82)_Golden_Tantalos') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,83, 'Monster_(83)_Golden_Wheel') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,295,'Monster_(295)_Erohim') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,340,'Monster_(340)_Dark_Elf') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,349,'Monster_(349)_Balgass') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,361,'Monster_(361)_Nightmare') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,362,'Monster_(362)_Mayas_Left_Hand') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,363,'Monster_(363)_Mayas_Right_Hand') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,365,'Monster_(365)_Pouch_of_Blessing') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,413,'Monster_(413)_Lunar_Rabbit') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,414,'Monster_(414)_Helper_Ellen') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,459,'Monster_(459)_Selupan') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,493,'Monster_(493)_Golden_Dark_Knight') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,494,'Monster_(494)_Golden_Devil') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,495,'Monster_(495)_Golden_Stone_Golem') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,496,'Monster_(496)_Golden_Crust') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,497,'Monster_(497)_Golden_Satyros') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,498,'Monster_(498)_Golden_Twin_Tail') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,499,'Monster_(499)_Golden_Iron_Knight') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,500,'Monster_(500)_Golden_Napin') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,501,'Monster_(501)_Golden_Great_Dragon') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,502,'Monster_(502)_Golden_Rabbit') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,561,'Monster_(561)_Medusa') -- DropFunction /2/ used when OverriteDefaultSettings from MonsterGroupRegen.xml is set to 0
	AddItemBag(BAG_MONSTER, 0,647,'Monster_(647)_Snake_Green') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,648,'Monster_(648)_Snake_Yellow') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,649,'Monster_(649)_Snake_Purple') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,650,'Monster_(650)_Snake_Red') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,463,'Monster_(463)_Fire_Flame_Ghost') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,674,'Monster_(674)_Moon_Rabbit') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,675,'Monster_(675)_Pouch_of_Blessing') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,676,'Monster_(676)_Fire_Flame_Ghost') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,677,'Monster_(677)_Golden_Goblin') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,709,'Monster_(709)_Chaos_Goblin') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,710,'Monster_(710)_Chaos_Goblin') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,711,'Monster_(711)_Chaos_Goblin') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,712,'Monster_(712)_Chaos_Goblin') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,726,'Monster_(726)_Sheep_Green') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,727,'Monster_(727)_Sheep_White') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,728,'Monster_(728)_Sheep_Purple') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,729,'Monster_(729)_Sheep_Red') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,739,'Monster_(739)_Monkey_Green') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,740,'Monster_(740)_Monkey_White') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,741,'Monster_(741)_Monkey_Purple') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,742,'Monster_(742)_Monkey_Red') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,759,'Monster_(759)_Rooster_Green') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,760,'Monster_(760)_Rooster_White') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,761,'Monster_(761)_Rooster_Purple') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,762,'Monster_(762)_Rooster_Red') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,808,'Monster_(808)_Power_Chicken') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,839,'Monster_(839)_Elite_Great_Bahamut_of_Abyss') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,840,'Monster_(840)_Elite_Lizard_King_of_Abyss') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,848,'Monster_(848)_Elite_Scorched_Warrior') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,849,'Monster_(849)_Elite_Scorched_Assassins') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,850,'Monster_(850)_Elite_Scorched Wizard') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,930,'Monster_(930)_Elite_Bloody_Wolf_of_Fresh_Blood') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,931,'Monster_(931)_Elite_Bloody_Beam_Knight') -- DropFunction /2/
	AddItemBag(BAG_MONSTER, 0,932,'Monster_(932)_Elite_Bloody_Tantalus') -- DropFunction /2/
	
-- ====================================================================
-- EventBags -- BagType, EventID, 0, 'FileName'
-- ====================================================================
	AddItemBag(BAG_EVENT, 0,0, 'Buff_Gladiators_Drop') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 1,0, 'Event_DevilSquare_Rank(1)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 2,0, 'Event_DevilSquare_Rank(2)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 3,0, 'Event_DevilSquare_Rank(3)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 4,0, 'Event_DevilSquare_Rank(4)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 5,0, 'Event_DevilSquare_Rank(5)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 6,0, 'Event_BloodCastle(1)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 7,0, 'Event_BloodCastle(2)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 8,0, 'Event_BloodCastle(3)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 9,0, 'Event_BloodCastle(4)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 10,0, 'Event_BloodCastle(5)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 11,0, 'Event_BloodCastle(6)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 12,0, 'Event_BloodCastle(7)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 14,0, 'Event_ChaosCastle(1)_Reward') -- DropFunction /3/
-- 15
	AddItemBag(BAG_EVENT, 16,0, 'NPC_SantaClause(1)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 17,0, 'NPC_SantaClause(2)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 18,0, 'NPC_SantaClause(3)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 19,0, 'Item_WarriorRing(40)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 20,0, 'Item_WarriorRing(80)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 22,0, 'Mix_LuckyCoin(10)_Reward') -- DropFunction /4/
	AddItemBag(BAG_EVENT, 23,0, 'Mix_LuckyCoin(20)_Reward') -- DropFunction /4/
	AddItemBag(BAG_EVENT, 24,0, 'Mix_LuckyCoin(30)_Reward') -- DropFunction /4/
	AddItemBag(BAG_EVENT, 25,0, 'Mix_Senior_Reward') -- DropFunction /4/
	AddItemBag(BAG_EVENT, 26,0, 'Monster_(275)_Kundun') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 27,0, 'Event_AcheronGuardian_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 28,0, 'Event_CastleSiege_Loser_Main_GuildMaster_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 29,0, 'Event_CastleSiege_Loser_Alliance_GuildMaster_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 30,0, 'Event_CastleSiege_Winner_Main_GuildMaster_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 31,0, 'Event_CastleSiege_Winner_Alliance_GuildMaster_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 32,0, 'Event_ArcaBattle_Loser_GuildMaster_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 33,0, 'Event_ArcaBattle_Winner_GuildMaster_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 34,0, 'Event_IllusionTemple_Renewal_1') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 35,0, 'Event_IllusionTemple_Renewal_2') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 36,0, 'Event_IllusionTemple_Renewal_3') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 37,0, 'Event_IllusionTemple_Renewal_4') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 38,0, 'Event_IllusionTemple_Renewal_5') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 39,0, 'Event_IllusionTemple_Renewal_6') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 40,0,	'Monster_(652)_Golden_Goblin') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 41,0,	'Monster_(653)_Golden_Titan') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 42,0,	'Monster_(654)_Golden_Tantalose') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 43,0,	'Monster_(655)_Golden_Erohim') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 44,0,	'Monster_(656)_Golden_Hell_Maine') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 45,0,	'Monster_(657)_Golden_Kundun') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 46,0, 'Monster_(673)_Lord_Silvester') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 49,0, 'Event_ChaosCastle(2)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 50,0, 'Event_ChaosCastle(3)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 51,0, 'Event_ChaosCastle(4)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 52,0, 'Event_ChaosCastle(5)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 53,0, 'Event_ChaosCastle(6)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 54,0, 'Event_ChaosCastle(7)_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 55,0, 'Monster_(716)_Core_Magriffy') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 56,0, 'Monster_(734)_Lord_of_Ferea') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 57,0, 'Monster_(746)_Knicks') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 58,0, 'Monster_(794)_God_of_Darkness') -- DropFunction /3/
-- 59 - 69
	AddItemBag(BAG_EVENT, 70,0, 'Event_CW_Elf_Altar') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 71,0, 'Event_CW_Hero_List') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 72,0, 'Item_(14,460,0)_[Lvl1]_Monster_Soul_Converter') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 73,0, 'Item_(14,461,0)_[Lvl2]_Monster_Soul_Converter') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 74,0, 'Item_(14,462,0)_[Lvl3]_Monster_Soul_Converter') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 75,0, 'Item_(14,463,0)_[Lvl4]_Monster_Soul_Converter') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 76,0, 'Item_(14,464,0)_[Lvl5]_Monster_Soul_Converter') -- DropFunction /3/
-- 77 - 79 IWC
	AddItemBag(BAG_EVENT, 80,0, 'Event_IllusionTemple_League_Match_Win') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 81,0, 'Event_IllusionTemple_League_Tournament_Win') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 82,0, 'Mix_Maple_Leaf_Reward') -- DropFunction /4/

-- Bags for purpose of Cherry Blossom Mix System
	AddItemBag(BAG_EVENT, 13,0, 'Mix_Cherry_Blossom_Red_Reward') -- DropFunction /4/
	AddItemBag(BAG_EVENT, 21,0, 'Mix_Cherry_Blossom_Gold_Reward') -- DropFunction /4/
	AddItemBag(BAG_EVENT, 47,0, 'Mix_Cherry_Blossom_White_Reward') -- DropFunction /4/
	AddItemBag(BAG_EVENT, 48,0, 'Mix_Cherry_Blossom_Red_Reward') -- DropFunction /4/

-- Bags for purpose of Monster Group Regen System
	AddItemBag(BAG_EVENT, 150,0, 'Event_Monster_(561)_Medusa') -- DropFunction /3/ used when OverriteDefaultSettings from MonsterGroupRegen.xml is set to 1
	AddItemBag(BAG_EVENT, 151,0, 'Event_Monster_(560)_Sapi_Queen') -- DropFunction /3/ used when OverriteDefaultSettings from MonsterGroupRegen.xml is set to 1
	
-- Ice Wind Castle Event
	AddItemBag(BAG_EVENT, 77,0, 'Event_IWC_GuildMaster') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 78,0, 'Event_IWC_GuildMember') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 79,0, 'Event_IWC_Player') -- DropFunction /3/
	
-- Bags for purpose of Reset System
	AddItemBag(BAG_EVENT, 300,0, 'ResetSystem_Regular')
	AddItemBag(BAG_EVENT, 301,0, 'ResetSystem_Milestone')

-- Bags for purpose of Scramble Word event
	AddItemBag(BAG_EVENT, 400,0, 'Event_ScrambleWord_Level_1')
	AddItemBag(BAG_EVENT, 401,0, 'Event_ScrambleWord_Level_2')
	
-- Bags for purpose of Hide and Seek event
	AddItemBag(BAG_EVENT, 500,0, 'Event_HideAndSeek_Round_1')
	AddItemBag(BAG_EVENT, 501,0, 'Event_HideAndSeek_Round_2')
	AddItemBag(BAG_EVENT, 502,0, 'Event_HideAndSeek_Round_3')
	
-- Bags for purpose of Raffle event
	AddItemBag(BAG_EVENT, 600,0, 'Event_Raffle_Winner')
	AddItemBag(BAG_EVENT, 601,0, 'Event_Raffle_Lotto_3')
	AddItemBag(BAG_EVENT, 602,0, 'Event_Raffle_Lotto_2')
	AddItemBag(BAG_EVENT, 603,0, 'Event_Raffle_Lotto_1')
	AddItemBag(BAG_EVENT, 611,0, 'Event_Raffle_HitOrder_3')
	AddItemBag(BAG_EVENT, 612,0, 'Event_Raffle_HitOrder_2')
	AddItemBag(BAG_EVENT, 613,0, 'Event_Raffle_HitOrder_1')
	
-- Bags for purpose of Imperial Guardian Event
	AddItemBag(BAG_EVENT, 700,0, 'Event_ImperialGuardian(1)_Reward')
	
-- Bags for purpose of Play Time event
	AddItemBag(BAG_EVENT, 800,0, 'Event_PlayTime_Round_1')
	AddItemBag(BAG_EVENT, 801,0, 'Event_PlayTime_Round_2')
	AddItemBag(BAG_EVENT, 802,0, 'Event_PlayTime_Round_3')
	AddItemBag(BAG_EVENT, 803,0, 'Event_PlayTime_Round_4')
	AddItemBag(BAG_EVENT, 804,0, 'Event_PlayTime_Round_5')
	AddItemBag(BAG_EVENT, 805,0, 'Event_PlayTime_Round_6')
	AddItemBag(BAG_EVENT, 806,0, 'Event_PlayTime_Round_7')
	AddItemBag(BAG_EVENT, 807,0, 'Event_PlayTime_Round_8')
	AddItemBag(BAG_EVENT, 808,0, 'Event_PlayTime_Round_9')
	AddItemBag(BAG_EVENT, 809,0, 'Event_PlayTime_Round_10')

-- Bags for purpose of Imperial Guardian additional rewards
	AddItemBag(BAG_EVENT, 850,0, 'Event_ImperialGuardian_Level(1)_Additional_Reward')
	
-- Bags for purpose of Blessing Box event
	AddItemBag(BAG_EVENT, 900,0, 'Event_BlessingBox_(899)_Kill')
	
-- Bags for purpose of Last Man Standing event
	AddItemBag(BAG_EVENT, 1000,0, 'Event_LastManStanding_Looser_Reward') -- DropFunction /3/
	AddItemBag(BAG_EVENT, 1050,0, 'Event_LastManStanding_Winner_Reward') -- DropFunction /3/
end

-- ### /1/ Drop Item (using Item Bag Structure) ### --
function CommonBagItemDrop(aIndex, MapNumber, X, Y)
	local ItemID = MakeItemID(ItemInfo.ItemType, ItemInfo.ItemIndex)
	local ItemCheck = IsItem(ItemID);
	
	if ItemCheck == false then
		LogAdd(string.format('Wrong Item In Bag (ItemID: %d)', ItemID))
		return 0
	end

	local ItemLevel = GetBagItemLevel(ItemInfo.ItemMinLevel, ItemInfo.ItemMaxLevel)
	local ItemDur = ItemInfo.Durability
	local IsSkill = 0
	local IsLuck = 0
	local IsOption = 0
	local IsAncient = 0
	local IsSocket = 0
	local IsElemental = 0
	local Duration = ItemInfo.Duration
	local MuunEvoItemID = 0
	local Exc1 = ItemInfo.Ex1
	local Exc2 = ItemInfo.Ex2
	local Exc3 = ItemInfo.Ex3
	local Exc4 = ItemInfo.Ex4
	local Exc5 = ItemInfo.Ex5
	local Exc6 = ItemInfo.Ex6
	local Exc7 = ItemInfo.Ex7
	local Exc8 = ItemInfo.Ex8
	local Exc9 = ItemInfo.Ex9
	local Socket1 = ItemInfo.SocketInfo1
	local Socket2 = ItemInfo.SocketInfo2
	local Socket3 = ItemInfo.SocketInfo3
	local Socket4 = ItemInfo.SocketInfo4
	local Socket5 = ItemInfo.SocketInfo5
	local ErrtelRank = ItemInfo.ErrtelRank								   

		if (ItemInfo.Skill == 1) then -- Skill Always
			IsSkill = 1
		elseif (ItemInfo.Skill == -1) then -- Random, 50% chance for Skill
			IsSkill = GetRandomValue(2)
		else -- No Skill (protection against unsupported values)				
			IsSkill = 0
		end


		if (ItemInfo.Luck == 1) then -- Luck Always
			IsLuck = 1
		elseif (ItemInfo.Luck == -1) then -- Random, 50% chance for Luck
			IsLuck = GetRandomValue(2)
		else -- no Luck (protection against unsupported values)
			IsLuck = 0
		end


		if (ItemInfo.Option == -1) then -- Random Option
			if (GetRandomValue(3) >= 1) then -- 66% chance to get option, if greater than or equal 1 then
				if (Is28Option() == 0) then
					IsOption = GetRandomValue(5) -- +0 up to +16
				else
					IsOption = GetRandomValue(8) -- +0 up to +28
				end
			end	
		elseif (ItemInfo.Option > 0 and ItemInfo.Option <= 7) then -- options +4 (1) to +28 (7)
			IsOption = ItemInfo.Option
		else -- no option
			IsOption = 0
		end


		if (ItemInfo.Anc == 1) then -- Says item must be ancient (have to be configured as possible ancient)
			IsAncient = GetAncientOpt(ItemID)
		end


		-- Item must be of Type 2 in item list settings
		if (IsSocketItem(ItemID) == true) then
			if (ItemInfo.Socket > 0 and ItemInfo.Socket <= 5) then -- if slots value is supported (0-5)
				IsSocket = GetRandomValue(ItemInfo.Socket+1) -- set up to configured value of sockets
			elseif (ItemInfo.Socket == -2) then
				IsSocket = -2
			end
		else
			IsSocket = 0 -- no socket, applies for items of no item type 2 only
		end



		if (IsElementalItem(ItemID) == true) then
			if (ItemInfo.Elemental > 0 and ItemInfo.Elemental <= 5) then
				IsElemental = ItemInfo.Elemental -- Attributes selection
			elseif (ItemInfo.Elemental == -1) then -- Random attribute
				IsElemental = GetRandomValue(6)
			end
			
			if (IsPentagramItem(ItemID) == true) then
				if (ItemInfo.Socket > 0 and ItemInfo.Socket <= 5) then
					IsSocket = GetRandomValue(ItemInfo.Socket+1)
				elseif (ItemInfo.Socket == -2) then
					IsSocket = -2
				end
			end
		else
			IsElemental = 0 -- no elemental attributes, applies for non elemental items only
			ErrtelRank = 0	 
		end

	-- Protection against specified items which should not come with extra options
	if ItemID == MakeItemID(12,15) -- Jewel of Chaos
	or ItemID == MakeItemID(14,13) -- Jewel of Bless
	or ItemID == MakeItemID(14,14) -- Jewel of Soul
	or ItemID == MakeItemID(14,16) -- Jewel of Life
	or ItemID == MakeItemID(14,22) -- Jewel of Creation
	then
		ItemLevel = 0
		IsSkill = 0
		IsLuck = 0
		IsOption = 0
		IsAncient = 0
		IsSocket = 0
		IsElemental = 0
		Duration = 0
		MuunEvoItemID = 0
		Exc1 = -1;
		Exc2 = -1;
		Exc3 = -1;
		Exc4 = -1;
		Exc5 = -1;
		Exc6 = -1;
		Exc7 = -1;
		Exc8 = -1;
		Exc9 = -1;
		Socket1 = -1;
		Socket2 = -1;
		Socket3 = -1;
		Socket4 = -1;
		Socket5 = -1;
		ErrtelRank = 0		
	end

	-- Protection against elemental setting value to unsupported items
	if (IsElementalItem(ItemID) == false) then -- if item not elemental then set elemental to 0
		IsElemental = 0
		ErrtelRank = 0		
	elseif (IsElementalItem(ItemID) == true and IsElemental == 0) then -- if elemental item and no attribute set
		IsElemental = GetRandomValue(6) -- make a draw, 0-5
			if (IsElemental == 0) then -- if 0 then
				IsElemental = 1 -- set attribute 1
			end
	end
	
	-- Range of items 12,200 - 12,220
	if (IsPentagramItem(ItemID) == true and IsSocket == 0) then
		IsSocket = GetRandomValue(3) -- empty slots 0-2
			if (IsSocket == 0) then -- if 0
				IsSocket = 1 -- set 1
			end
	end
	
	-- New draw of option if server is configured to support option up to +16 only
	if (Is28Option() == 0 and IsOption > 4) then
		IsOption = GetRandomValue(5) -- option draw 0-4
	end

	-- Protection against socket items configured with no sockets
	if (IsSocketItem(ItemID) == true and IsSocket == 0) then
		IsSocket = 1 -- set to one socket only
	end
	
	if (ItemInfo.ItemType == 13 and GetItemKindA(ItemID) == ITEM_KIND_A_MUUN_INVENTORY_ITEM) then																				  
		ItemID = MakeItemID(16, ItemInfo.ItemIndex)
	end
	
	-- Protection against unsupported options for EvolutionStone item
	if (ItemID == MakeItemID(16, 211) or ItemID == MakeItemID(16, 510)) then
		if (ItemInfo.MuunEvolutionItemType == 13) then
			ItemInfo.MuunEvolutionItemType = 16
		end
		
		MuunEvoItemID = MakeItemID(ItemInfo.MuunEvolutionItemType, ItemInfo.MuunEvolutionItemIndex)
		IsSkill = 0
		IsLuck = 0
		IsOption = 0
		Exc1 = -1;
		Exc2 = -1;
		Exc3 = -1;
		Exc4 = -1;
		Exc5 = -1;
		Exc6 = -1;
		Exc7 = -1;
		Exc8 = -1;
		Exc9 = -1;
		Socket1 = -1;
		Socket2 = -1;
		Socket3 = -1;
		Socket4 = -1;
		Socket5 = -1;
		IsAncient = 0
		IsSocket = 0
		Duration = 0
		IsElemental = 0
		ErrtelRank = 0		
	else
		MuunEvoItemID = 0;
	end
	
	CreateItem(aIndex, MapNumber, X, Y, ItemID, ItemLevel, ItemDur, IsSkill, IsLuck, IsOption, aIndex, IsAncient, Duration, IsSocket, IsElemental, MuunEvoItemID, Exc1, Exc2, Exc3, Exc4, Exc5, Exc6, Exc7, Exc8, Exc9, Socket1, Socket2, Socket3, Socket4, Socket5, ErrtelRank)
	return 1
end


-- ### /2/ Drop Item (using Monster Bag Structure) ### --
function MonsterBagItemDrop(MonsterIndex, MapNumber, MonsterX, MonsterY, PlayerIndex)
	local ItemID = MakeItemID(ItemInfo.ItemType, ItemInfo.ItemIndex)
	local ItemCheck = IsItem(ItemID);
	
	if ItemCheck == false then
		LogAdd(string.format('Wrong Item In Bag (ItemID: %d)', ItemID))
		return 0
	end

	local ItemLevel = GetBagItemLevel(ItemInfo.ItemMinLevel, ItemInfo.ItemMaxLevel)
	local ItemDur = ItemInfo.Durability
	local IsSkill = 0
	local IsLuck = 0
	local IsOption = 0
	local IsAncient = 0
	local IsSocket = 0
	local IsElemental = 0
	local Duration = ItemInfo.Duration
	local MuunEvoItemID = 0
	local Exc1 = ItemInfo.Ex1
	local Exc2 = ItemInfo.Ex2
	local Exc3 = ItemInfo.Ex3
	local Exc4 = ItemInfo.Ex4
	local Exc5 = ItemInfo.Ex5
	local Exc6 = ItemInfo.Ex6
	local Exc7 = ItemInfo.Ex7
	local Exc8 = ItemInfo.Ex8
	local Exc9 = ItemInfo.Ex9
	local Socket1 = ItemInfo.SocketInfo1
	local Socket2 = ItemInfo.SocketInfo2
	local Socket3 = ItemInfo.SocketInfo3
	local Socket4 = ItemInfo.SocketInfo4
	local Socket5 = ItemInfo.SocketInfo5
	local ErrtelRank = ItemInfo.ErrtelRank								   

		if (ItemInfo.Skill == 1) then -- Skill Always
			IsSkill = 1
		elseif (ItemInfo.Skill == -1) then -- Random, 50% chance for Skill
			IsSkill = GetRandomValue(2)
		else -- No Skill (protection against unsupported values)				
			IsSkill = 0
		end


		if (ItemInfo.Luck == 1) then -- Luck Always
			IsLuck = 1
		elseif (ItemInfo.Luck == -1) then -- Random, 50% chance for Luck
			IsLuck = GetRandomValue(2)
		else -- no Luck (protection against unsupported values)
			IsLuck = 0
		end


		if (ItemInfo.Option == -1) then -- Random Option
			if (GetRandomValue(3) >= 1) then -- 66% chance to get option, if greater than or equal 1 then
				if (Is28Option() == 0) then
					IsOption = GetRandomValue(5) -- +0 up to +16
				else
					IsOption = GetRandomValue(8) -- +0 up to +28
				end
			end	
		elseif (ItemInfo.Option > 0 and ItemInfo.Option <= 7) then -- options +4 (1) to +28 (7)
			IsOption = ItemInfo.Option
		else -- no option
			IsOption = 0
		end


		if (ItemInfo.Anc == 1) then -- Says item must be ancient (have to be configured as possible ancient)
			IsAncient = GetAncientOpt(ItemID)
		end


		-- Item must be of Type 2 in item list settings
		if (IsSocketItem(ItemID) == true) then
			if (ItemInfo.Socket > 0 and ItemInfo.Socket <= 5) then -- if slots value is supported (0-5)
				IsSocket = GetRandomValue(ItemInfo.Socket+1) -- set up to configured value of sockets
			elseif (ItemInfo.Socket == -2) then
				IsSocket = -2
			end
		else
			IsSocket = 0 -- no socket, applies for items of no item type 2 only
		end



		if (IsElementalItem(ItemID) == true) then
			if (ItemInfo.Elemental > 0 and ItemInfo.Elemental <= 5) then
				IsElemental = ItemInfo.Elemental -- Attributes selection
			elseif (ItemInfo.Elemental == -1) then -- Random attribute
				IsElemental = GetRandomValue(6)
			end
			
			if (IsPentagramItem(ItemID) == true) then
				if (ItemInfo.Socket > 0 and ItemInfo.Socket <= 5) then
					IsSocket = GetRandomValue(ItemInfo.Socket+1)
				elseif (ItemInfo.Socket == -2) then
					IsSocket = -2
				end
			end
		else
			IsElemental = 0 -- no elemental attributes, applies for non elemental items only
			ErrtelRank = 0	 
		end

	-- Protection against specified items which should not come with extra options
	if ItemID == MakeItemID(12,15) -- Jewel of Chaos
	or ItemID == MakeItemID(14,13) -- Jewel of Bless
	or ItemID == MakeItemID(14,14) -- Jewel of Soul
	or ItemID == MakeItemID(14,16) -- Jewel of Life
	or ItemID == MakeItemID(14,22) -- Jewel of Creation
	then
		ItemLevel = 0
		IsSkill = 0
		IsLuck = 0
		IsOption = 0
		Exc1 = -1;
		Exc2 = -1;
		Exc3 = -1;
		Exc4 = -1;
		Exc5 = -1;
		Exc6 = -1;
		Exc7 = -1;
		Exc8 = -1;
		Exc9 = -1;
		Socket1 = -1;
		Socket2 = -1;
		Socket3 = -1;
		Socket4 = -1;
		Socket5 = -1;
		IsAncient = 0
		IsSocket = 0
		IsElemental = 0
		Duration = 0
		MuunEvoItemID = 0
		ErrtelRank = 0		
	end

	-- Protection against elemental setting value to unsupported items
	if (IsElementalItem(ItemID) == false) then -- if item not elemental then set elemental to 0
		IsElemental = 0
		ErrtelRank = 0		
	elseif (IsElementalItem(ItemID) == true and IsElemental == 0) then -- if elemental item and no attribute set
		IsElemental = GetRandomValue(6) -- make a draw, 0-5
			if (IsElemental == 0) then -- if 0 then
				IsElemental = 1 -- set attribute 1
			end
	end
	
	-- Range of items 12,200 - 12,220
	if (IsPentagramItem(ItemID) == true and IsSocket == 0) then
		IsSocket = GetRandomValue(3) -- empty slots 0-2
			if (IsSocket == 0) then -- if 0
				IsSocket = 1 -- set 1
			end
	end

	-- New draw of option if server is configured to support option up to +16 only
	if (Is28Option() == 0 and IsOption > 4) then
		IsOption = GetRandomValue(5) -- option draw 0-4
	end

	-- Protection against socket items configured with no sockets
	if (IsSocketItem(ItemID) == true and IsSocket == 0) then
		IsSocket = 1 -- set to one socket only
	end

	if (ItemInfo.ItemType == 13 and GetItemKindA(ItemID) == ITEM_KIND_A_MUUN_INVENTORY_ITEM) then																				  
		ItemID = MakeItemID(16, ItemInfo.ItemIndex)
	end

	-- Protection against unsupported options for EvolutionStone item
	if (ItemID == MakeItemID(16, 211) or ItemID == MakeItemID(16, 510)) then
		if (ItemInfo.MuunEvolutionItemType == 13) then
			ItemInfo.MuunEvolutionItemType = 16
		end

		MuunEvoItemID = MakeItemID(ItemInfo.MuunEvolutionItemType, ItemInfo.MuunEvolutionItemIndex)
		IsSkill = 0
		IsLuck = 0
		IsOption = 0
		Exc1 = -1;
		Exc2 = -1;
		Exc3 = -1;
		Exc4 = -1;
		Exc5 = -1;
		Exc6 = -1;
		Exc7 = -1;
		Exc8 = -1;
		Exc9 = -1;
		Socket1 = -1;
		Socket2 = -1;
		Socket3 = -1;
		Socket4 = -1;
		Socket5 = -1;
		IsAncient = 0
		IsSocket = 0
		Duration = 0
		IsElemental = 0
		ErrtelRank = 0		
	else
		MuunEvoItemID = 0;
	end

	CreateItem(MonsterIndex, MapNumber, MonsterX, MonsterY, ItemID, ItemLevel, ItemDur, IsSkill, IsLuck, IsOption, PlayerIndex, IsAncient, Duration, IsSocket, IsElemental, MuunEvoItemID, Exc1, Exc2, Exc3, Exc4, Exc5, Exc6, Exc7, Exc8, Exc9, Socket1, Socket2, Socket3, Socket4, Socket5, ErrtelRank)
	return 1
end


-- ### /3/ Create Item (using Event Bag Structure) - Item Drop on Ground ### --
function EventBagItemDrop(MonsterIndex, MapNumber, MonsterX, MonsterY, PlayerIndex, UseType, GremoryCaseType, GremoryCaseGiveType, iGCReceiptDuration)
	local ItemID = MakeItemID(ItemInfo.ItemType, ItemInfo.ItemIndex)
	local ItemCheck = IsItem(ItemID);

	if ItemCheck == false then
		LogAdd(string.format('Wrong Item In Bag (ItemID: %d)', ItemID))
		return 0
	end

	local ItemLevel = GetBagItemLevel(ItemInfo.ItemMinLevel, ItemInfo.ItemMaxLevel)
	local ItemDur = ItemInfo.Durability
	local IsSkill = 0
	local IsLuck = 0
	local IsOption = 0
	local IsAncient = 0
	local IsSocket = 0
	local IsElemental = 0
	local Duration = ItemInfo.Duration
	local MuunEvoItemID = 0
	local Exc1 = ItemInfo.Ex1
	local Exc2 = ItemInfo.Ex2
	local Exc3 = ItemInfo.Ex3
	local Exc4 = ItemInfo.Ex4
	local Exc5 = ItemInfo.Ex5
	local Exc6 = ItemInfo.Ex6
	local Exc7 = ItemInfo.Ex7
	local Exc8 = ItemInfo.Ex8
	local Exc9 = ItemInfo.Ex9
	local Socket1 = ItemInfo.SocketInfo1
	local Socket2 = ItemInfo.SocketInfo2
	local Socket3 = ItemInfo.SocketInfo3
	local Socket4 = ItemInfo.SocketInfo4
	local Socket5 = ItemInfo.SocketInfo5
	local ErrtelRank = ItemInfo.ErrtelRank								   

		if (ItemInfo.Skill == 1) then -- Skill Always
			IsSkill = 1
		elseif (ItemInfo.Skill == -1) then -- Random, 50% chance for Skill
			IsSkill = GetRandomValue(2)
		else -- No Skill (protection against unsupported values)				
			IsSkill = 0
		end


		if (ItemInfo.Luck == 1) then -- Luck Always
			IsLuck = 1
		elseif (ItemInfo.Luck == -1) then -- Random, 50% chance for Luck
			IsLuck = GetRandomValue(2)
		else -- no Luck (protection against unsupported values)
			IsLuck = 0
		end


		if (ItemInfo.Option == -1) then -- Random Option
			if (GetRandomValue(3) >= 1) then -- 66% chance to get option, if greater than or equal 1 then
				if (Is28Option() == 0) then
					IsOption = GetRandomValue(5) -- +0 up to +16
				else
					IsOption = GetRandomValue(8) -- +0 up to +28
				end
			end	
		elseif (ItemInfo.Option > 0 and ItemInfo.Option <= 7) then -- options +4 (1) to +28 (7)
			IsOption = ItemInfo.Option
		else -- no option
			IsOption = 0
		end


		if (ItemInfo.Anc == 1) then -- Says item must be ancient (have to be configured as possible ancient)
			IsAncient = GetAncientOpt(ItemID)
		end


		-- Item must be of Type 2 in item list settings
		if (IsSocketItem(ItemID) == true) then
			if (ItemInfo.Socket > 0 and ItemInfo.Socket <= 5) then -- if slots value is supported (0-5)
				IsSocket = GetRandomValue(ItemInfo.Socket+1) -- set up to configured value of sockets
			elseif (ItemInfo.Socket == -2) then
				IsSocket = -2
			end
		else
			IsSocket = 0 -- no socket, applies for items of no item type 2 only
		end



		if (IsElementalItem(ItemID) == true) then
			if (ItemInfo.Elemental > 0 and ItemInfo.Elemental <= 5) then
				IsElemental = ItemInfo.Elemental -- Attributes selection
			elseif (ItemInfo.Elemental == -1) then -- Random attribute
				IsElemental = GetRandomValue(6)
			end
			
			if (IsPentagramItem(ItemID) == true) then
				if (ItemInfo.Socket > 0 and ItemInfo.Socket <= 5) then
					IsSocket = GetRandomValue(ItemInfo.Socket+1)
				elseif (ItemInfo.Socket == -2) then
					IsSocket = -2
				end
			end
		else
			IsElemental = 0 -- no elemental attributes, applies for non elemental items only
			ErrtelRank = 0	 
		end

	-- Protection against specified items which should not come with extra options
	if ItemID == MakeItemID(12,15) -- Jewel of Chaos
	or ItemID == MakeItemID(14,13) -- Jewel of Bless
	or ItemID == MakeItemID(14,14) -- Jewel of Soul
	or ItemID == MakeItemID(14,16) -- Jewel of Life
	or ItemID == MakeItemID(14,22) -- Jewel of Creation
	then
		ItemLevel = 0
		IsSkill = 0
		IsLuck = 0
		IsOption = 0
		Exc1 = -1;
		Exc2 = -1;
		Exc3 = -1;
		Exc4 = -1;
		Exc5 = -1;
		Exc6 = -1;
		Exc7 = -1;
		Exc8 = -1;
		Exc9 = -1;
		Socket1 = -1;
		Socket2 = -1;
		Socket3 = -1;
		Socket4 = -1;
		Socket5 = -1;
		IsAncient = 0
		IsSocket = 0
		IsElemental = 0
		Duration = 0
		MuunEvoItemID = 0
		ErrtelRank = 0		
	end

	-- Protection against elemental setting value to unsupported items
	if (IsElementalItem(ItemID) == false) then -- if item not elemental then set elemental to 0
		IsElemental = 0
		ErrtelRank = 0		
	elseif (IsElementalItem(ItemID) == true and IsElemental == 0) then -- if elemental item and no attribute set
		IsElemental = GetRandomValue(6) -- make a draw, 0-5
			if (IsElemental == 0) then -- if 0 then
				IsElemental = 1 -- set attribute 1
			end
	end
	
	-- Range of items 12,200 - 12,220
	if (IsPentagramItem(ItemID) == true and IsSocket == 0) then
		IsSocket = GetRandomValue(3) -- empty slots 0-2
			if (IsSocket == 0) then -- if 0
				IsSocket = 1 -- set 1
			end
	end

	-- New draw of option if server is configured to support option up to +16 only
	if (Is28Option() == 0 and IsOption > 4) then
		IsOption = GetRandomValue(5) -- option draw 0-4
	end

	-- Protection against socket items configured with no sockets
	if (IsSocketItem(ItemID) == true and IsSocket == 0) then
		IsSocket = 1 -- set to one socket only
	end

	if (ItemInfo.ItemType == 13 and GetItemKindA(ItemID) == ITEM_KIND_A_MUUN_INVENTORY_ITEM) then																				  
		ItemID = MakeItemID(16, ItemInfo.ItemIndex)
	end

	-- Protection against unsupported options for EvolutionStone item
	if (ItemID == MakeItemID(16, 211) or ItemID == MakeItemID(16, 510)) then
		if (ItemInfo.MuunEvolutionItemType == 13) then
			ItemInfo.MuunEvolutionItemType = 16
		end

		MuunEvoItemID = MakeItemID(ItemInfo.MuunEvolutionItemType, ItemInfo.MuunEvolutionItemIndex)
		IsSkill = 0
		IsLuck = 0
		IsOption = 0
		Exc1 = -1;
		Exc2 = -1;
		Exc3 = -1;
		Exc4 = -1;
		Exc5 = -1;
		Exc6 = -1;
		Exc7 = -1;
		Exc8 = -1;
		Exc9 = -1;
		Socket1 = -1;
		Socket2 = -1;
		Socket3 = -1;
		Socket4 = -1;
		Socket5 = -1;
		IsAncient = 0
		IsSocket = 0
		Duration = 0
		IsElemental = 0
		ErrtelRank = 0		
	else
		MuunEvoItemID = 0;
	end

	if UseType == BAG_REWARD_GREMORY_CASE then
		InsertItem_GremoryCase(PlayerIndex, GremoryCaseType, GremoryCaseGiveType, ItemID, ItemLevel, ItemDur, IsSkill, IsLuck, IsOption, IsAncient, IsSocket, IsElemental, MuunEvoItemID, Exc1, Exc2, Exc3, Exc4, Exc5, Exc6, Exc7, Exc8, Exc9, Socket1, Socket2, Socket3, Socket4, Socket5, iGCReceiptDuration, Duration)
	elseif UseType == BAG_REWARD_INVENTORY then
		CreateItem(MonsterIndex, 235, MonsterX, MonsterY, ItemID, ItemLevel, ItemDur, IsSkill, IsLuck, IsOption, PlayerIndex, IsAncient, Duration, IsSocket, IsElemental, MuunEvoItemID, Exc1, Exc2, Exc3, Exc4, Exc5, Exc6, Exc7, Exc8, Exc9, Socket1, Socket2, Socket3, Socket4, Socket5)
	else -- BAG_REWARD_GROUND 
		CreateItem(MonsterIndex, MapNumber, MonsterX, MonsterY, ItemID, ItemLevel, ItemDur, IsSkill, IsLuck, IsOption, PlayerIndex, IsAncient, Duration, IsSocket, IsElemental, MuunEvoItemID, Exc1, Exc2, Exc3, Exc4, Exc5, Exc6, Exc7, Exc8, Exc9, Socket1, Socket2, Socket3, Socket4, Socket5)
	end
	return 1
end


-- ### /4/ Create Item (using Event Bag Structure) - Mix/Inventory - LuckyCoin, CherryBlossom, LordMix ### --
function EventBagMakeItem()
	local ItemID = MakeItemID(ItemInfo.ItemType, ItemInfo.ItemIndex)
	local ItemCheck = IsItem(ItemID);

	if ItemCheck == false then
		LogAdd(string.format('Wrong Item In Bag (ItemID: %d)', ItemID))
		return 0
	end

	local ItemLevel = GetBagItemLevel(ItemInfo.ItemMinLevel, ItemInfo.ItemMaxLevel)
	local ItemDur = ItemInfo.Durability
	local IsSkill = 0
	local IsLuck = 0
	local IsOption = 0
	local IsAncient = 0
	local IsSocket = 0
	local IsElemental = 0
	local Duration = ItemInfo.Duration
	local MuunEvoItemID = 0
	local Exc1 = ItemInfo.Ex1
	local Exc2 = ItemInfo.Ex2
	local Exc3 = ItemInfo.Ex3
	local Exc4 = ItemInfo.Ex4
	local Exc5 = ItemInfo.Ex5
	local Exc6 = ItemInfo.Ex6
	local Exc7 = ItemInfo.Ex7
	local Exc8 = ItemInfo.Ex8
	local Exc9 = ItemInfo.Ex9
	local Socket1 = ItemInfo.SocketInfo1
	local Socket2 = ItemInfo.SocketInfo2
	local Socket3 = ItemInfo.SocketInfo3
	local Socket4 = ItemInfo.SocketInfo4
	local Socket5 = ItemInfo.SocketInfo5
	local ErrtelRank = ItemInfo.ErrtelRank								   
	
		if (ItemInfo.Skill == 1) then -- Skill Always
			IsSkill = 1
		elseif (ItemInfo.Skill == -1) then -- Random, 50% chance for Skill
			IsSkill = GetRandomValue(2)
		else -- No Skill (protection against unsupported values)				
			IsSkill = 0
		end


		if (ItemInfo.Luck == 1) then -- Luck Always
			IsLuck = 1
		elseif (ItemInfo.Luck == -1) then -- Random, 50% chance for Luck
			IsLuck = GetRandomValue(2)
		else -- no Luck (protection against unsupported values)
			IsLuck = 0
		end


		if (ItemInfo.Option == -1) then -- Random Option
			if (GetRandomValue(3) >= 1) then -- 66% chance to get option, if greater than or equal 1 then
				if (Is28Option() == 0) then
					IsOption = GetRandomValue(5) -- +0 up to +16
				else
					IsOption = GetRandomValue(8) -- +0 up to +28
				end
			end	
		elseif (ItemInfo.Option > 0 and ItemInfo.Option <= 7) then -- options +4 (1) to +28 (7)
			IsOption = ItemInfo.Option
		else -- no option
			IsOption = 0
		end


		if (ItemInfo.Anc == 1) then -- Says item must be ancient (have to be configured as possible ancient)
			IsAncient = GetAncientOpt(ItemID)
		end


		-- Item must be of Type 2 in item list settings
		if (IsSocketItem(ItemID) == true) then
			if (ItemInfo.Socket > 0 and ItemInfo.Socket <= 5) then -- if slots value is supported (0-5)
				IsSocket = GetRandomValue(ItemInfo.Socket+1) -- set up to configured value of sockets
			elseif (ItemInfo.Socket == -2) then
				IsSocket = -2
			end
		else
			IsSocket = 0 -- no socket, applies for items of no item type 2 only
		end



		if (IsElementalItem(ItemID) == true) then
			if (ItemInfo.Elemental > 0 and ItemInfo.Elemental <= 5) then
				IsElemental = ItemInfo.Elemental -- Attributes selection
			elseif (ItemInfo.Elemental == -1) then -- Random attribute
				IsElemental = GetRandomValue(6)
			end
			
			if (IsPentagramItem(ItemID) == true) then
				if (ItemInfo.Socket > 0 and ItemInfo.Socket <= 5) then
					IsSocket = GetRandomValue(ItemInfo.Socket+1)
				elseif (ItemInfo.Socket == -2) then
					IsSocket = -2
				end
			end
		else
			IsElemental = 0 -- no elemental attributes, applies for non elemental items only
			ErrtelRank = 0	 
		end

	-- Protection against specified items which should not come with extra options
	if ItemID == MakeItemID(12,15) -- Jewel of Chaos
	or ItemID == MakeItemID(14,13) -- Jewel of Bless
	or ItemID == MakeItemID(14,14) -- Jewel of Soul
	or ItemID == MakeItemID(14,16) -- Jewel of Life
	or ItemID == MakeItemID(14,22) -- Jewel of Creation
	then
		ItemLevel = 0
		IsSkill = 0
		IsLuck = 0
		IsOption = 0
		Exc1 = -1;
		Exc2 = -1;
		Exc3 = -1;
		Exc4 = -1;
		Exc5 = -1;
		Exc6 = -1;
		Exc7 = -1;
		Exc8 = -1;
		Exc9 = -1;
		Socket1 = -1;
		Socket2 = -1;
		Socket3 = -1;
		Socket4 = -1;
		Socket5 = -1;
		IsAncient = 0
		IsSocket = 0
		IsElemental = 0
		Duration = 0
		MuunEvoItemID = 0
		ErrtelRank = 0		
	end

	-- Protection against elemental setting value to unsupported items
	if (IsElementalItem(ItemID) == false) then -- if item not elemental then set elemental to 0
		IsElemental = 0
		ErrtelRank = 0		
	elseif (IsElementalItem(ItemID) == true and IsElemental == 0) then -- if elemental item and no attribute set
		IsElemental = GetRandomValue(6) -- make a draw, 0-5
			if (IsElemental == 0) then -- if 0 then
				IsElemental = 1 -- set attribute 1
			end
	end
	
	-- Range of items 12,200 - 12,220
	if (IsPentagramItem(ItemID) == true and IsSocket == 0) then
		IsSocket = GetRandomValue(3) -- empty slots 0-2
			if (IsSocket == 0) then -- if 0
				IsSocket = 1 -- set 1
			end
	end
	
	-- New draw of option if server is configured to support option up to +16 only
	if (Is28Option() == 0 and IsOption > 4) then
		IsOption = GetRandomValue(5) -- option draw 0-4
	end

	-- Protection against socket items configured with no sockets
	if (IsSocketItem(ItemID) == true and IsSocket == 0) then
		IsSocket = 1 -- set to one socket only
	end

	if (ItemInfo.ItemType == 13 and GetItemKindA(ItemID) == ITEM_KIND_A_MUUN_INVENTORY_ITEM) then																				  
		ItemID = MakeItemID(16, ItemInfo.ItemIndex)
	end

	-- Protection against unsupported options for EvolutionStone item
	if (ItemID == MakeItemID(16, 211) or ItemID == MakeItemID(16, 510)) then
		if (ItemInfo.MuunEvolutionItemType == 13) then
			ItemInfo.MuunEvolutionItemType = 16
		end
		
		MuunEvoItemID = MakeItemID(ItemInfo.MuunEvolutionItemType, ItemInfo.MuunEvolutionItemIndex)
		IsSkill = 0
		IsLuck = 0
		IsOption = 0
		Exc1 = -1;
		Exc2 = -1;
		Exc3 = -1;
		Exc4 = -1;
		Exc5 = -1;
		Exc6 = -1;
		Exc7 = -1;
		Exc8 = -1;
		Exc9 = -1;
		Socket1 = -1;
		Socket2 = -1;
		Socket3 = -1;
		Socket4 = -1;
		Socket5 = -1;
		IsAncient = 0
		IsSocket = 0
		Duration = 0
		IsElemental = 0
		ErrtelRank = 0		
	else
		MuunEvoItemID = 0;
	end
	
	return ItemLevel, ItemDur, IsSkill, IsLuck, IsOption, IsAncient, IsElemental, IsSocket, MuunEvoItemID, Duration, Exc1, Exc2, Exc3, Exc4, Exc5, Exc6, Exc7, Exc8, Exc9, Socket1, Socket2, Socket3, Socket4, Socket5, ErrtelRank
end

-- ### /5/ Create Item (using Inventory Bag Structure) - BAG_INVENTORY ### --
function InventoryBagItemCreate(aIndex)
	local ItemID = MakeItemID(ItemInfo.ItemType, ItemInfo.ItemIndex)
	local ItemCheck = IsItem(ItemID);

	if ItemCheck == false then
		LogAdd(string.format('Wrong Item In Bag (ItemID: %d)', ItemID))
		return 0
	end

	local ItemLevel = GetBagItemLevel(ItemInfo.ItemMinLevel, ItemInfo.ItemMaxLevel)
	local ItemDur = ItemInfo.Durability
	local IsSkill = 0
	local IsLuck = 0
	local IsOption = 0
	local IsAncient = 0
	local IsSocket = 0
	local IsElemental = 0
	local Duration = ItemInfo.Duration
	local MuunEvoItemID = 0
	local Exc1 = ItemInfo.Ex1
	local Exc2 = ItemInfo.Ex2
	local Exc3 = ItemInfo.Ex3
	local Exc4 = ItemInfo.Ex4
	local Exc5 = ItemInfo.Ex5
	local Exc6 = ItemInfo.Ex6
	local Exc7 = ItemInfo.Ex7
	local Exc8 = ItemInfo.Ex8
	local Exc9 = ItemInfo.Ex9
	local Socket1 = ItemInfo.SocketInfo1
	local Socket2 = ItemInfo.SocketInfo2
	local Socket3 = ItemInfo.SocketInfo3
	local Socket4 = ItemInfo.SocketInfo4
	local Socket5 = ItemInfo.SocketInfo5
	local ErrtelRank = ItemInfo.ErrtelRank								   
	
		if (ItemInfo.Skill == 1) then -- Skill Always
			IsSkill = 1
		elseif (ItemInfo.Skill == -1) then -- Random, 50% chance for Skill
			IsSkill = GetRandomValue(2)
		else -- No Skill (protection against unsupported values)				
			IsSkill = 0
		end


		if (ItemInfo.Luck == 1) then -- Luck Always
			IsLuck = 1
		elseif (ItemInfo.Luck == -1) then -- Random, 50% chance for Luck
			IsLuck = GetRandomValue(2)
		else -- no Luck (protection against unsupported values)
			IsLuck = 0
		end


		if (ItemInfo.Option == -1) then -- Random Option
			if (GetRandomValue(3) >= 1) then -- 66% chance to get option, if greater than or equal 1 then
				if (Is28Option() == 0) then
					IsOption = GetRandomValue(5) -- +0 up to +16
				else
					IsOption = GetRandomValue(8) -- +0 up to +28
				end
			end	
		elseif (ItemInfo.Option > 0 and ItemInfo.Option <= 7) then -- options +4 (1) to +28 (7)
			IsOption = ItemInfo.Option
		else -- no option
			IsOption = 0
		end


		if (ItemInfo.Anc == 1) then -- Says item must be ancient (have to be configured as possible ancient)
			IsAncient = GetAncientOpt(ItemID)
		end


		-- Item must be of Type 2 in item list settings
		if (IsSocketItem(ItemID) == true) then
			if (ItemInfo.Socket > 0 and ItemInfo.Socket <= 5) then -- if slots value is supported (0-5)
				IsSocket = GetRandomValue(ItemInfo.Socket+1) -- set up to configured value of sockets
			elseif (ItemInfo.Socket == -2) then
				IsSocket = -2
			end
		else
			IsSocket = 0 -- no socket, applies for items of no item type 2 only
		end


		
		if (IsElementalItem(ItemID) == true) then
			if (ItemInfo.Elemental > 0 and ItemInfo.Elemental <= 5) then
				IsElemental = ItemInfo.Elemental -- Attributes selection
			elseif (ItemInfo.Elemental == -1) then -- Random attribute
				IsElemental = GetRandomValue(6)
			end
			
			if (IsPentagramItem(ItemID) == true) then
				if (ItemInfo.Socket > 0 and ItemInfo.Socket <= 5) then
					IsSocket = GetRandomValue(ItemInfo.Socket+1)
				elseif (ItemInfo.Socket == -2) then
					IsSocket = -2
				end
			end
		else
			IsElemental = 0 -- no elemental attributes, applies for non elemental items only
			ErrtelRank = 0	 
		end		   

	-- Protection against specified items which should not come with extra options

	if ItemID == MakeItemID(12,15) -- Jewel of Chaos
	or ItemID == MakeItemID(14,13) -- Jewel of Bless
	or ItemID == MakeItemID(14,14) -- Jewel of Soul
	or ItemID == MakeItemID(14,16) -- Jewel of Life
	or ItemID == MakeItemID(14,22) -- Jewel of Creation
	then
		ItemLevel = 0
		IsSkill = 0
		IsLuck = 0
		IsOption = 0
		Exc1 = -1;
		Exc2 = -1;
		Exc3 = -1;
		Exc4 = -1;
		Exc5 = -1;
		Exc6 = -1;
		Exc7 = -1;
		Exc8 = -1;
		Exc9 = -1;
		Socket1 = -1;
		Socket2 = -1;
		Socket3 = -1;
		Socket4 = -1;
		Socket5 = -1;
		IsAncient = 0
		IsSocket = 0
		IsElemental = 0
		Duration = 0
		MuunEvoItemID = 0
		ErrtelRank = 0		
	end

	-- Protection against elemental setting value to unsupported items
	if (IsElementalItem(ItemID) == false) then -- if item not elemental then set elemental to 0
		IsElemental = 0
		ErrtelRank = 0		
	elseif (IsElementalItem(ItemID) == true and IsElemental == 0) then -- if elemental item and no attribute set
		IsElemental = GetRandomValue(6) -- make a draw, 0-5
			if (IsElemental == 0) then -- if 0 then
				IsElemental = 1 -- set attribute 1
			end
	end
	
	-- Range of items 12,200 - 12,220
	if (IsPentagramItem(ItemID) == true and IsSocket == 0) then
		IsSocket = GetRandomValue(3) -- empty slots 0-2
			if (IsSocket == 0) then -- if 0
				IsSocket = 1 -- set 1
			end
	end
	
	-- New draw of option if server is configured to support option up to +16 only
	if (Is28Option() == 0 and IsOption > 4) then
		IsOption = GetRandomValue(5) -- option draw 0-4
	end

	-- Protection against socket items configured with no sockets
	if (IsSocketItem(ItemID) == true and IsSocket == 0) then
		IsSocket = 1 -- set to one socket only
	end

	if (ItemInfo.ItemType == 13 and GetItemKindA(ItemID) == ITEM_KIND_A_MUUN_INVENTORY_ITEM) then																				  
		ItemID = MakeItemID(16, ItemInfo.ItemIndex)
	end

	-- Protection against unsupported options for EvolutionStone item
	if (ItemID == MakeItemID(16, 211) or ItemID == MakeItemID(16, 510)) then
		if (ItemInfo.MuunEvolutionItemType == 13) then
			ItemInfo.MuunEvolutionItemType = 16
		end

		MuunEvoItemID = MakeItemID(ItemInfo.MuunEvolutionItemType, ItemInfo.MuunEvolutionItemIndex)
		IsSkill = 0
		IsLuck = 0
		IsOption = 0
		Exc1 = -1;
		Exc2 = -1;
		Exc3 = -1;
		Exc4 = -1;
		Exc5 = -1;
		Exc6 = -1;
		Exc7 = -1;
		Exc8 = -1;
		Exc9 = -1;
		Socket1 = -1;
		Socket2 = -1;
		Socket3 = -1;
		Socket4 = -1;
		Socket5 = -1;
		IsAncient = 0
		IsSocket = 0
		Duration = 0	  
		IsElemental = 0
		ErrtelRank = 0		
	else
		MuunEvoItemID = 0;
	end
	
	CreateItem(aIndex, 214, 0, 0, ItemID, ItemLevel, ItemDur, IsSkill, IsLuck, IsOption, aIndex, IsAncient, Duration, IsSocket, IsElemental, MuunEvoItemID, Exc1, Exc2, Exc3, Exc4, Exc5, Exc6, Exc7, Exc8, Exc9, Socket1, Socket2, Socket3, Socket4, Socket5, ErrtelRank)
	return 1		 
end