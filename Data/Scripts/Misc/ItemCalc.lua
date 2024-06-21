-- Character Classes
CLASS_WIZARD                                          = 0
CLASS_KNIGHT                                          = 1
CLASS_ELF                                             = 2
CLASS_GLADIATOR                                       = 3
CLASS_DARKLORD                                        = 4
CLASS_SUMMONER                                        = 5
CLASS_RAGEFIGHTER                                     = 6
CLASS_GROWLANCER									  = 7
CLASS_RUNEWIZARD									  = 8
CLASS_SLAYER									  	  = 9
CLASS_GUNCRUSHER									  = 10
CLASS_WHITEWIZARD									  = 11
CLASS_LEMURIAMAGE									  = 12
CLASS_ILLUSIONKNIGHT								  = 13								  

-- Item Kind B Wings List
ITEM_KIND_B_SMALL_WING = 22
ITEM_KIND_B_WING_1ST = 23
ITEM_KIND_B_WING_2ND = 24
ITEM_KIND_B_WING_3RD = 25
ITEM_KIND_B_LORD_CAPE = 26
ITEM_KIND_B_RAGEFIGHTER_CAPE = 27
ITEM_KIND_B_MONSTER_WING = 28
ITEM_KIND_B_CCF_WING = 60
ITEM_KIND_B_GOLDCOLOSSUS_WING = 62
ITEM_KIND_B_WING_4TH = 76
ITEM_KIND_B_POWER_WING = 80
ITEM_KIND_B_WING_5TH = 106
	
function MakeItemID(ItemType, ItemIndex)
	return ItemType * 512 + ItemIndex;
end

function Wings_CalcAbsorb(WingID, WingLevel, WingKindB, MLS_WingOption)
	local OutAbsorb = 0
	local BaseValue = 0
	
	if (WingKindB == ITEM_KIND_B_SMALL_WING) then
		if (WingID == MakeItemID(12,130) or WingID == MakeItemID(12,135) or WingID == MakeItemID(12,278)) then
			BaseValue = 20
		else
			BaseValue = 12
		end
		
		OutAbsorb = BaseValue + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_WING_1ST) then
		OutAbsorb = 12 + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_WING_2ND) then
		OutAbsorb = 25 + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_LORD_CAPE) then
		OutAbsorb = 25 + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_RAGEFIGHTER_CAPE) then	
		OutAbsorb = 10 + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_WING_3RD) then			
		OutAbsorb = 39 + (WingLevel * 2)
		
		if (WingID ~= MakeItemID(12,268)) then
			OutAbsorb = OutAbsorb + MLS_WingOption
		end
	elseif (WingKindB == ITEM_KIND_B_MONSTER_WING) then
		if (WingID == MakeItemID(12,262) or WingID == MakeItemID(12,279) or WingID == MakeItemID(12,284) or WingID == MakeItemID(12,263) or WingID == MakeItemID(12,280) or WingID == MakeItemID(12,285)) then
			BaseValue = 30
		elseif (WingID == MakeItemID(12,264) or WingID == MakeItemID(12,281) or WingID == MakeItemID(12,286) or WingID == MakeItemID(12,265) or WingID == MakeItemID(12,282) or WingID == MakeItemID(12,287)) then
			BaseValue = 29
		end
		
		OutAbsorb = BaseValue + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_CCF_WING) then
		OutAbsorb = 71
	elseif (WingKindB == ITEM_KIND_B_GOLDCOLOSSUS_WING) then
		OutAbsorb = 60 + WingLevel
	elseif (WingKindB == ITEM_KIND_B_WING_4TH or WingKindB == ITEM_KIND_B_WING_5TH) then
		OutAbsorb = 43 + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_POWER_WING) then
		OutAbsorb = 65
	else
		OutAbsorb = 0
	end
	
	return OutAbsorb
end

function Wings_CalcIncAttack(WingID, WingLevel, WingKindB)
	local OutIncAttack = 0
	local BaseValue = 0
	
	if (WingKindB == ITEM_KIND_B_SMALL_WING) then
		if (WingID == MakeItemID(12,130) or WingID == MakeItemID(12,135) or WingID == MakeItemID(12,278)) then
			BaseValue = 20
		else
			BaseValue = 12
		end
	
		OutIncAttack = BaseValue + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_WING_1ST) then
		OutIncAttack = 12 + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_WING_2ND) then
		OutIncAttack = 32 + WingLevel
	elseif (WingKindB == ITEM_KIND_B_RAGEFIGHTER_CAPE or WingKindB == ITEM_KIND_B_LORD_CAPE) then	
		OutIncAttack = 20 + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_WING_3RD) then
		OutIncAttack = 39 + (WingLevel * 2)
	elseif (WingKindB == ITEM_KIND_B_MONSTER_WING) then
		if (WingID == MakeItemID(12,262) or WingID == MakeItemID(12,279) or WingID == MakeItemID(12,284)) then
			BaseValue = 21
		elseif (WingID == MakeItemID(12,263) or WingID == MakeItemID(12,280) or WingID == MakeItemID(12,285)) then
			BaseValue = 33
		elseif (WingID == MakeItemID(12,264) or WingID == MakeItemID(12,281) or WingID == MakeItemID(12,286) or WingID == MakeItemID(12,265) or WingID == MakeItemID(12,282) or WingID == MakeItemID(12,287)) then
			BaseValue = 35
		end
		
		OutIncAttack = BaseValue + WingLevel
	elseif (WingKindB == ITEM_KIND_B_CCF_WING) then
		OutIncAttack = 71
	elseif (WingKindB == ITEM_KIND_B_GOLDCOLOSSUS_WING) then
		OutIncAttack = 60 + WingLevel
	elseif (WingKindB == ITEM_KIND_B_WING_4TH or WingKindB == ITEM_KIND_B_WING_5TH) then
		OutIncAttack = 55 + WingLevel
	elseif (WingKindB == ITEM_KIND_B_POWER_WING) then
		OutIncAttack = 65
	else
		OutIncAttack = 0
	end
	
	return OutIncAttack
end

function Wings_DecreaseHP(WingID, WingDur, Class, Skill)
	local HPDec = 0
	
	if (WingID == MakeItemID(12,266) and Class ~= CLASS_RAGEFIGHTER and WingDur > 0) then
		HPDec = 3
	elseif (Class == CLASS_WIZARD or Class == CLASS_ELF or Class == CLASS_SUMMONER or Class == CLASS_RUNEWIZARD or Class == CLASS_SLAYER) then
		HPDec = 1
	elseif (Class == CLASS_RAGEFIGHTER) then
		if (Skill == 263 or Skill == 559 or Skill == 563 or Skill == 269 or Skill == 262 or Skill == 558 or Skill == 562) then
			HPDec = 4
		elseif (Skill == 265 or Skill == 564 or Skill == 566) then
			HPDec = 100
		elseif (Skill == 260 or Skill == 261 or Skill == 264 or Skill == 551 or Skill == 554 or Skill == 552 or Skill == 555 or Skill == 560 or Skill == 561 or Skill == 270) then
			HPDec = 2
		else
			HPDec = 3
		end
	elseif (Class == CLASS_GROWLANCER) then
		if (WingID == MakeItemID(12,269) and WingDur > 0) then
			HPDec = 1
		elseif (WingID == MakeItemID(12,270) and WingDur > 0) then
			HPDec = 3
		elseif (WingID == MakeItemID(12,421) and WingDur > 0) then
			HPDec = 3
		end
	else
		HPDec = 3
	end
	
	if (Class == CLASS_LEMURIAMAGE and (Skill == 246 or Skill == 855 or Skill == 856 or Skill == 1218)) then
		HPDec = 0
	end
	
	return HPDec
end
	
function DarkSpirit_CalcValues(Command, PetLevel)
	local AttackDamageMin = PetLevel * 15 + Command / 8 + 180
	local AttackDamageMax = PetLevel * 15 + Command / 4 + 200
	
	local CriticalDamage = 30
	local ExcellentDamage = Command / 200 + 3 + PetLevel / 20
	local DoubleDamage = Command / 300 + 2 + PetLevel / 30
	local IgnoreEnemy = Command / 400 + 1 + PetLevel / 40
	
	local AttackSpeed = PetLevel * 4 / 5 + Command / 50 + 20
	local SuccessAtkRate = PetLevel + PetLevel / 15 + 1000
	
	return AttackDamageMin, AttackDamageMax, CriticalDamage, ExcellentDamage, DoubleDamage, IgnoreEnemy, AttackSpeed, SuccessAtkRate
end

function DivineSpirit_CalcValues(Command, Energy, PetLevel, CharacterLevel, InAttackDamageMin, InAttackDamageMax)
    local OutAttackDamageMin = InAttackDamageMin
    local OutAttackDamageMax = InAttackDamageMax

    local CriticalDamage = 30
    local ExcellentDamage = Command / 200 + 3 + PetLevel / 20
    local DoubleDamage = Command / 300 + 2 + PetLevel / 30
    local IgnoreEnemy = Command / 400 + 1 + PetLevel / 40

    return OutAttackDamageMin, OutAttackDamageMax, CriticalDamage, ExcellentDamage, DoubleDamage, IgnoreEnemy
end

function GoldHellMaine_DropWing()
	local WingDropRate = GetLargeRandomValue(1000000)
	local WingCountRate = GetRandomValue(100)
	local WingCount = 0
	local WingExpireTime = 2419200 -- seconds
	
	if (WingDropRate < 50000) then
		if (WingCountRate >= 75) then
			if (WingCountRate >= 90) then
				if (WingCountRate >= 95) then
					if(WingCountRate >= 98) then
						WingCount = 5
					else
						WingCount = 4
					end
				else
					WingCount = 3
				end
			else
				WingCount = 2
			end
		else
			WingCount = 1
		end
	else
		WingCount = 0
	end
	
	return WingCount, WingExpireTime
end

function GoldKundun_DropWing()
	local WingDropRate = GetLargeRandomValue(1000000)
	local WingCountRate = GetRandomValue(100)
	local WingCount = 0
	local WingExpireTime = 2419200 -- seconds
	
	if (WingDropRate < 200000) then
		if (WingCountRate >= 75) then
			if (WingCountRate >= 90) then
				if (WingCountRate >= 95) then
					if(WingCountRate >= 98) then
						WingCount = 5
					else
						WingCount = 4
					end
				else
					WingCount = 3
				end
			else
				WingCount = 2
			end
		else
			WingCount = 1
		end
	else
		WingCount = 0
	end
	
	return WingCount, WingExpireTime
end

function DarkHorse_CalcAbsorb(PetLevel)
	local Absorb = (PetLevel + 30) / 2
	return Absorb
end
		