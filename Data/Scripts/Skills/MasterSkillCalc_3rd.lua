-- // ============================================================
-- // == INTERNATIONAL GAMING CENTER NETWORK
-- // == www.igcn.mu
-- // == (C) 2010-2024 IGC-Network (R)
-- // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- // == File is a part of IGCN Group MuOnline Server files.
-- // ============================================================

-- MasterSkillCalc Control Script, Lua v5.3
-- Skill Tree Skill Configuration (Result, Time) - Can be modified to adjust for own needs

-- SkillID refers to Index of skill in \Data\Skills\SkillList.xml

-- Character Classes
CLASS_WIZARD                                          = 0	-- Fairy Elf, Muse Elf, High Elf
CLASS_KNIGHT                                          = 1	-- Dark Wizard, Soul Master, Grand Master
CLASS_ELF                                             = 2	-- Dark Knight, Blade Knight, Blade Master
CLASS_GLADIATOR                                       = 3	-- Magic Gladiator, Duel Master
CLASS_DARKLORD                                        = 4	-- Dark Lord, Lord Emperor
CLASS_SUMMONER                                        = 5	-- Summoner, Bloody Summoner, Dimension Master
CLASS_RAGEFIGHTER                                     = 6	-- Rage Fighter, Fist Master
CLASS_GROWLANCER									  = 7	-- Grow Lancer, Mirage Lancer
CLASS_RUNEWIZARD									  = 8	-- Rune Wizard, Rune Spell Master, Grand Rune Master
CLASS_SLAYER									  	  = 9	-- Slayer, Royal Slayer, Master Slayer, Slaughterer
CLASS_GUNCRUSHER									  = 10	-- Gun Crusher, Gun Breaker, Master Gun Breaker, Heist Gun Crusher
CLASS_LIGHTWIZARD									  = 11	-- Light Wizard, Shining Wizard, Luminous Wizard
CLASS_LEMURIAMAGE									  = 12	-- Lemuria Mage, Warmage, Archmage, Mystic Mage
CLASS_ILLUSIONKNIGHT								  = 13	-- Illusion Knight, Mirage Knight, Illusion Master, Mystic Knight

-- SkillID: 378, 483, Flame Strengthener
function FlameCalc_Master(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 379, 480, Lightning Strengthener
function LightningCalc_Master(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 381, 486, Inferno Strengthener
function InfernoCalc_Master(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 382, 484, Blast Strengthener
function BlastCalc_Master(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 384, Poison Strengthener
function PoisonCalc_Master(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 387, Decay Strengthener
function DecayCalc_Master(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 388, Hell Fire Strengthener
function HellFireCalc_Master(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 389, 489, Ice Strengthener
function IceCalc_Master(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 390, Meteor Strengthener
function MeteorCalc_Master(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 391, Ice Storm Strengthener
function IceStormCalc_Master(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 385, 487, Evil Spirit Strengthener
function EvilSpirit_MasterLevel1_Calc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = 0
 
 	if (Class == CLASS_WIZARD) then
		OutDamage = InDamage
	elseif (Class == CLASS_GLADIATOR) then
		OutDamage = InDamage
	elseif (Class == CLASS_RUNEWIZARD) then
		OutDamage = InDamage
	end
 
 return OutDamage
end

-- SkillID: 392, Nova Strengthener - (Grand Master)
function NovaSkillCalc_Master_Wizard(InDamage, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 403, Soul Barrier Strengthener - (Grand Master)
function WizardMagicDefense_Level1(Index, TargetIndex, TargetClass, Dexterity, Energy)
	local SkillEffect = Dexterity / 50 + Energy / 200 + 10
	local SkillTime = Energy / 40 + 60
	
	if (Index == TargetIndex and SkillEffect > 60) then -- casting spell on yourself
		SkillEffect = 60
	elseif (Index ~= TargetIndex and SkillEffect > 50) then -- casting spell on others
		SkillEffect = 50
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 404, Soul Barrier Proficiency - (Grand Master)
function WizardMagicDefense_Level2(Index, TargetIndex, TargetClass, Dexterity, Energy)
	local SkillEffect = Dexterity / 50 + Energy / 200 + 10
	local SkillTime = Energy / 40 + 60
	
	if (Index == TargetIndex and SkillEffect > 70) then -- casting spell on yourself
		SkillEffect = 70
	elseif (Index ~= TargetIndex and SkillEffect > 50) then -- casting spell on others
		SkillEffect = 50
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 406, Soul Barrier Mastery (Grand Master)
function WizardMagicDefense_Level3(Index, TargetIndex, TargetClass, Dexterity, Energy)
	local SkillEffect = Dexterity / 50 + Energy / 200 + 10
	local SkillTime = Energy / 40 + 60
	
	if (Index == TargetIndex and SkillEffect > 75) then -- casting spell on yourself
		SkillEffect = 75
	elseif (Index ~= TargetIndex and SkillEffect > 50) then -- casting spell on others
		SkillEffect = 60
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 330, Twisting Slash Strengthener - (Blade Master)
function TwistingSlashCalc_Master_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 326, Cyclone Strengthener - (Blade Master)
function CycloneCalc_Master_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 327, Slash Strengthener - (Blade Master)
function SlashCalc_Master_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 328, Falling Slash Strengthener - (Blade Master)
function FallingSlashCalc_Master_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 329, Lunge Strengthener - (Blade Master)
function LungeCalc_Master_Knight(Class, InDamage, Energy)
	local OutDamage = 0

	if (Class == CLASS_KNIGHT) then
		OutDamage = InDamage * (Energy / 10 + 200) / 100
	elseif (Class == CLASS_GROWLANCER) then
		OutDamage = InDamage * (Energy / 10 + 200) / 100
	end

	return OutDamage
end

-- SkillID: 331, 812, Anger Blow Strengthener
function AngerBlow_Master_Level1(Class, SkillId, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = 0
 
 	if (Class == CLASS_KNIGHT and SkillId == 812) then
		OutDamage = InDamage * (Energy / 10 + 200) / 100
	elseif (Class == CLASS_SLAYER and SkillId == 331) then
		OutDamage = InDamage * (Energy / 10 + 200) / 100
	end
 
 return OutDamage
end

-- SkillID: 336, Death Stab Strengthener - (Blade Master)
function DeathStab_MasterLevel1_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 339, Death Stab Proficiency - (Blade Master)
function DeathStab_MasterLevel2_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 344, Blood Storm - (Blade Master)
function BloodStormCalc_MasterLevel1_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 346, Blood Storm Strengthener
function BloodStormCalc_MasterLevel2_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 356, Swell Life Strengthener - (Blade Master)
function KnightSkillAddLife_Level1(Index, TargetIndex, TargetClass, Vitality, Energy, PartyBonus)
	local SkillEffect = Vitality / 100 + 12 + Energy / 20 + PartyBonus
	local SkillTime = Energy / 10 + 60
	
	return SkillEffect, SkillTime
end

-- SkillID: 360, Swell Life Proficiency - (Blade Master)
function KnightSkillAddLife_Level2(Index, TargetIndex, TargetClass, Vitality, Energy, PartyBonus)
	local SkillEffect = Vitality / 100 + 12 + Energy / 20 + PartyBonus
	local SkillTime = Energy / 10 + 60
	
	return SkillEffect, SkillTime
end

-- SkillID: 363, Swell Life Mastery - (Blade Master)
function KnightSkillAddLife_Level3(Index, TargetIndex, TargetClass, Vitality, Energy, PartyBonus)
	local SkillEffect = Vitality / 100 + 12 + Energy / 20 + PartyBonus
	local SkillTime = Energy / 10 + 60
	
	return SkillEffect, SkillTime
end

-- SkillID: 411, Multi-Shot Strengthener - (High Elf)
function MultiShotCalc_Master_Elf(InDamage, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 413, Heal Strengthener - (High Elf)
function ElfHeal_Level1(TargetClass, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
	local SkillEffect = 0
	
	if (Index ~= TargetIndex) then
		if (TargetClass == CLASS_WIZARD) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_KNIGHT) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_ELF) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_GLADIATOR) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_DARKLORD) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_SUMMONER) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_RAGEFIGHTER) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_GROWLANCER) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_RUNEWIZARD) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_SLAYER) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_GUNCRUSHER) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_LIGHTWIZARD) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_LEMURIAMAGE) then
			SkillEffect = Energy / 5 + 5
		elseif (TargetClass == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = Energy / 5 + 5
		end
	elseif (Index == TargetIndex) then
		SkillEffect = Energy / 5 + 5
	end
	
	return SkillEffect
end

-- SkillID: 414, Triple-Shot Strengthener - (High Elf)
function Elf_CalcTripleShot_Level1(InDamage, Strength, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 416, Penetration Strengthener - (High Elf)
function PenetrationCalc_Master_Elf(InDamage, Energy)
	local OutDamage = InDamage * 2
	
	return OutDamage
end

-- SkillID: 417, Defense Increase Strengthener - (High Elf)
function ElfDefense_Level1(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
	local SkillEffect = 0
	local SkillTime = 60
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_ELF) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = 2 + Energy / 8
		end
	elseif (Index == TargetIndex) then
		SkillEffect = 2 + Energy / 8
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 418, Triple Shot Mastery - (High Elf)
function Elf_CalcTripleShot_Level2(InDamage, Strength, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 423, Defense Increase Mastery - (High Elf)
function ElfDefense_Level2(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
	local SkillEffect = 0
	local SkillTime = 60
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_ELF) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = 2 + Energy / 8
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = 2 + Energy / 8
		end
	elseif (Index == TargetIndex) then
		SkillEffect = 2 + Energy / 8
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 420, Attack Increase Strengthener - (High Elf)
function ElfAttack_Level1(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
	local SkillEffect = 0
	local SkillTime = 60
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_ELF) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = 3 + Energy / 7
		end
	elseif (Index == TargetIndex) then
		SkillEffect = 3 + Energy / 7
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 422, Attack Increase Mastery - (High Elf)
function ElfAttack_Level2(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
	local SkillEffect = 0
	local SkillTime = 60
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_ELF) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = 3 + Energy / 7
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = 3 + Energy / 7
		end
	elseif (Index == TargetIndex) then
		SkillEffect = 3 + Energy / 7
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 424, Ice Arrow Strengthener - (High Elf)
function IceArrowCalc_Master_Elf(InDamage, Energy)
	local OutDamage = InDamage * 2
	
	return OutDamage
end

-- SkillID: 427, Poison Arrow - (Damage over time) - (High Elf)
function PoisonArrow_MasterLevel1_DotDamage(InDamage)
	local DotDamage = InDamage / 10
	local Time = 10
	local Rate = 30
	
	return DotDamage, Time, Rate
end

-- SkillID: 436, Poison Arrow Strengthener - (Damage over time) - (High Elf)
function PoisonArrow_MasterLevel2_DotDamage(InDamage, MasterEffect)
	local DotDamage = (InDamage / 10) + MasterEffect
	local Time = 10
	local Rate = 30
	
	return DotDamage, Time, Rate
end

-- SkillID: 429, Party Healing Strengthener - (High Elf)
function ElfPartyHealing(Strength, Dexterity, Vitality, Energy)
	local HP = Energy / 6 + 6
	
	return HP
end

-- SkillID: 430, Bless - (High ELf)
function ElfBless_Level1(Index, TargetIndex, TargetClass, Energy)
	local SkillEffect = Energy / 100
	
	return SkillEffect
end

-- SkillID: 433, Bless Strengthener - (High Elf)
function ElfBless_Level2(Index, TargetIndex, TargetClass, Energy)
	local SkillEffect = Energy / 100
	
	return SkillEffect
end

-- SkillID: 876, Holy Bolt Strengthener - (High Elf)
function ElfHolyBolt_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = InDamage
	
	if (BarrageCount == 1) then
        OutDamage = InDamage
    elseif (BarrageCount == 2) then
        OutDamage = InDamage
    elseif (BarrageCount == 3) then
        OutDamage = InDamage
    end
	
	return OutDamage
end

-- SkillID: 344, Blood Storm - (Duel Master)
function BloodStormCalc_MasterLevel1_Gladiator(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 346, Blood Storm Strengthener - (Duel Master)
function BloodStormCalc_MasterLevel2_Gladiator(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 479, Cyclone Strengthener - (Duel Master)
function CycloneCalc_Master_Gladiator(InDamage, Energy)
	local OutDamage = InDamage * 2
	
	return OutDamage
end

-- SkillID: 481, Twisting Slash Strengthener - (Duel Master)
function TwistingSlashCalc_Master_Gladiator(InDamage, Energy)
	local OutDamage = InDamage * 2
	
	return OutDamage
end

-- SkillID: 482, Power Slash Strengthener - (Duel Master)
function PowerSlash_Master_Gladiator(InDamage, Energy)
	local OutDamage = InDamage * 2
	
	return OutDamage
end

-- SkillID: 490, Fire Slash Strengthener - (Duel Master)
function FireSlash_MasterLevel1_Gladiator(InDamage, Strength, Energy, BarrageCount)
    local OutDamage = 0
    
    if (BarrageCount == 1) then
        OutDamage = (InDamage * 0.15) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 2) then
        OutDamage = (InDamage * 0.18) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 3) then
        OutDamage = (InDamage * 0.22) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 4) then
        OutDamage = (InDamage * 0.25) * ( 200 + ( Energy / 10 ) ) / 100;
    end
	
    return OutDamage
end

-- SkillID: 492, Flame Strike Strengthener - (Duel Master)
function FlameStrike_MasterLevel1_Gladiator(InDamage, Energy)
	local OutDamage = InDamage * 2
	
	return OutDamage
end

-- SkillID: 493, Fire Slash Mastery - (Duel Master)
function FireSlash_MasterLevel2_Gladiator(InDamage, Strength, Energy, BarrageCount)
    local OutDamage = 0
    
    if (BarrageCount == 1) then
        OutDamage = (InDamage * 0.15) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 2) then
        OutDamage = (InDamage * 0.18) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 3) then
        OutDamage = (InDamage * 0.22) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 4) then
        OutDamage = (InDamage * 0.25) * ( 200 + ( Energy / 10 ) ) / 100;
    end
	
    return OutDamage
end

-- SkillID: 495, Earth Prison - (Duel Master)
function EarthPrison_Level1()
 local DebuffSuccessRate = 5
 local DebuffTime = 5
 
 return DebuffSuccessRate, DebuffTime
end

-- SkillID: 496, Gigantic Storm Strengthener - (Duel Master)
function GiganticStormCalc_Master_Gladiator(InDamage, Strength, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 497, Earth Prison Strengthener - (Duel Master)
function EarthPrison_Level2()
 local DebuffSuccessRate = 5
 local DebuffTime = 5
 
 return DebuffSuccessRate, DebuffTime
end

-- SkillID: 508, Fire Burst Strengthener - (Lord Emperor)
function FireBurst_MasterLevel1_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 509, Force Wave Strengthener - (Lord Emperor)
function ForceWave_Master_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 511, Lord Dignity Strengthener - (Lord Emperor)
function LordDignity_Level1_Lord(Index, Command, Energy)
	local SkillEffect = (Command / 25 + Energy / 30) / 10
	local SkillTime = Energy / 10 + 60
	
	return SkillEffect, SkillTime
end

-- SkillID: 512, Earth-Shake Strengthener - (Lord Emperor)
function EarthShake_MasterLevel1_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 518, Fire Scream Strengthener - (Lord Emperor)
function FireScream_MasterLevel1_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 520, Fire Scream Mastery - (Lord Emperor)
function FireScream_MasterLevel2_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 519, Electric Spark Strengthener - (Lord Emperor)
function ElectricSpark_Master_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 523, Chaotic Diseier Strengthener - (Lord Emperor)
function ChaoticDiseier_Master_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 911, Spirit Blast Strengthener
function LordSpiritBlast_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy, Command, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = InDamage
	elseif (BarrageCount == 2) then
		OutDamage = InDamage
	end

	return OutDamage
end

-- SkillID: 454, Sleep Strengthener - MvP - (Dimension Master)
function Sleep_Monster_Level1(Energy, Curse, MonsterLevel)
	local SkillSuccessRate = Energy / 30 + Curse / 6 + 20
	local SkillTime = Energy / 100 + 5 - MonsterLevel / 20
	
	return SkillSuccessRate, SkillTime
end

-- SkillID: 454, Sleep Strengthener - PvP - (Dimension Master)
function Sleep_PvP_Level1(Energy, Curse, PlayerLevel, TargetLevel)
	local SkillSuccessRate = Energy / 37 + Curse / 6 + 15
	local SkillTime = Energy / 250 + (PlayerLevel - TargetLevel) / 100 + 4
	
	return SkillSuccessRate, SkillTime
end

-- SkillID: 455, Chain Lightning Strengthener - (Dimension Master)
function ChainLightning_Master_Summoner(InDamage, TargetNumber)
	local DamagePercent = 0
	
	if(TargetNumber == 1) then
		DamagePercent = 100
	elseif(TargetNumber == 2) then
		DamagePercent = 70
	elseif(TargetNumber == 3) then
		DamagePercent = 50
	else
		DamagePercent = 0
	end
		
	local OutDamage = InDamage * DamagePercent / 100
	
	return OutDamage
end

-- SkillID: 456, Lightning Shock - (Dimension Master)
function LightningShock_Master_Summoner(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 458, Drain Life Strengthener - MvP - (Dimension Master)
function SummonerDrainLife_Monster_Level1(Energy, MonsterLevel)
	local AddHP = (Energy / 15) + MonsterLevel / 2.5
	
	return AddHP
end

-- SkillID: 458, Drain Life Skill - PvP - (Dimension Master)
function SummonerDrainLife_PvP_Level1(Energy, Damage)
	local AddHP = Energy / 23 + 10 * Damage / 100
	
	return AddHP
end

-- SkillID: 554, Killing Blow Mastery - (Fist Master)
function KillingBlow_Master(InDamage, Vitality)
	local OutDamage = InDamage * (Vitality / 10 + 50) / 100.0
 
	return OutDamage
end

-- SkillID: 555, Beast Uppercut Mastery - (Fist Master)
function BeastUppercut_Master(InDamage, Vitality)
	local OutDamage = InDamage * (Vitality / 10 + 50) / 100.0
 
	return OutDamage
end

-- SkillID: 558, Chain Drive Mastery - (Fist Master)
function ChainDrive_Master(InDamage, Vitality)
	local OutDamage = (InDamage + Vitality / 10) * (Vitality / 10 + 50) / 100.0
 
	return OutDamage
end

-- SkillID: 563, Dark Side Strengthener - (Fist Master)
function RageFighterDarkSideIncDamage_Master(InDamage, Dexterity, Energy)
	local OutDamage = (Dexterity / 8 + InDamage + Energy / 10) * (Dexterity / 8 + Energy / 10 + 100) / 100.0
 
	return OutDamage
end

-- SkillID: 560: Dragon Roar Mastery - (Fist Master)
function DragonRoar_Master(InDamage, Energy)
	local OutDamage = (InDamage + Energy / 10) * (Energy / 10 + 50) / 100.0
 
	return OutDamage
end

-- SkillID: 564, Dragon Slasher Strengthener - (Fist Master)
function DragonSlasher_Level1(InDamage, SkillBonus, Energy, TargetType)
	local OutDamage = 0
 
	if (TargetType == 1) then -- User
 		OutDamage = (InDamage + SkillBonus) * (Energy / 10 + 50) / 100.0
 	else -- Monster
 		OutDamage = ((InDamage + SkillBonus) * (Energy / 10 + 50) / 100.0 + 100.0) * 3.0
 	end
 
	return OutDamage
end

-- SkillID: 565, Blood Howling - (Fist Master)
function BloodHowl_Level1(TargetHP)
 	local SkillEffect = 200 -- TargetHP * 5 / 100
 	local SkillSuccessRate = 10 -- 1
 	local SkillTime = 10

 	return SkillEffect, SkillSuccessRate, SkillTime
end

-- SkillID: 567, Blood Howling Strengthener - (Fist Master)
function BloodHowl_Level2(TargetHP)
 	local SkillEffect = 200 -- TargetHP * 5 / 100
 	local SkillSuccessRate = 10 -- 1
 	local SkillTime = 10

 	return SkillEffect, SkillSuccessRate, SkillTime
end

-- SkillID: 573, Stamina Increase Strengthener - (Fist Master)
function FighterIncLifeCalcEffect_Level1(Index, TargetIndex, TargetClass, Energy)
	local SkillEffect = (Energy - 132) / 10.0 + 30.0;
	local SkillTime = Energy / 5 + 60
	
	return SkillEffect, SkillTime
end

-- SkillID: 569, Def SuccessRate Increase PowUp - (Fist Master)
function FighterIncDefRateCalcEffect_Level1(Index, TargetIndex, TargetClass, Energy)
	local SkillEffect = (Energy - 80) / 10.0 + 10.0;
	local SkillTime = Energy / 5 + 60
	
	if (SkillEffect > 100) then
		SkillEffect = 100
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 572, DefSuccessRate Increase Mastery - (Fist Master)
function FighterIncDefRateCalcEffect_Level2(Index, TargetIndex, TargetClass, Energy)
	local SkillEffect = (Energy - 80) / 10.0 + 10.0;
	local SkillTime = Energy / 5 + 60
	
	if (SkillEffect > 100) then
		SkillEffect = 100
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 631, 813, Rush
function RushCalc_Master(Class, SkillId, InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	
	if (Class == CLASS_KNIGHT and SkillId == 813) then
		OutDamage = InDamage * (Energy / 10 + 200) / 100
	elseif (Class == CLASS_SLAYER and SkillId == 631) then
		OutDamage = InDamage * (Energy / 10 + 200) / 100
	end
	
	return OutDamage
end

-- SkillID: 652, Evasion
function EvasionCalc_Master(NormalLevel, MasterLevel, Strength, Dexterity, Vitality, Energy)
	local SkillEffect = 50
	local SkillTime = 7
	
	return SkillEffect, SkillTime
end

-- SkillID: 687, Spin Step PowUp - (Mirage Lancer)
function GrowLancerSpinStep_Level1(InDamage, Dexterity, SkillTreeBonus)
	local OutDamage = (InDamage * 1.1) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	local ExplosionDamage = (InDamage * 0.7) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage, ExplosionDamage
end

-- SkillID: 690, Spin Step Mastery - (Mirage Lancer)
function GrowLancerSpinStep_Level2(InDamage, Dexterity, SkillTreeBonus)
	local OutDamage = (InDamage * 1.1) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	local ExplosionDamage = (InDamage * 0.7) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage, ExplosionDamage
end

-- SkillID: 688, Harsh Strike PowUp - (Mirage Lancer)
function GrowLancerHarshStrike_Level1(InDamage, Strength, SkillTreeBonus, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 1.0) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.1) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0
	end

	return OutDamage
end

-- SkillID: 691, Harsh Strike Mastery - (Mirage Lancer)
function GrowLancerHarshStrike_Level2(InDamage, Strength, SkillTreeBonus, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 1.0) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.1) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0
	elseif(BarrageCount == 3) then
		OutDamage = (InDamage * 1.2) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0
	end

	return OutDamage
end

-- SkillID: 692, Magic Pin PowUp - (Mirage Lancer)
function GrowLancerMagicPin_Level1(InDamage, Dexterity, SkillTreeBonus, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * 1.1) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	end

	return OutDamage
end

-- SkillID: 695, Magic Pin Master - (Mirage Lancer)
function GrowLancerMagicPin_Level2(InDamage, Dexterity, SkillTreeBonus, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * 1.1) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	end

	return OutDamage
end

-- SkillID: 696, Breche PowUp - (Mirage Lancer)
function GrowLancerBreche_Level1(InDamage, Strength, SkillTreeBonus)
	local OutDamage = (InDamage * 0.5) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage
end

-- SkillID: 698, Breche Mastery - (Mirage Lancer)
function GrowLancerBreche_Level2(InDamage, Strength, SkillTreeBonus)
	local OutDamage = (InDamage * 0.5) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage
end

-- SkillID: 688, Shining Peak PowUp - (Mirage Lancer)
function GrowLancerShiningPeak_Level1(InDamage, Strength, Dexterity, SkillTreeBonus_Retailation, SkillTreeBonus_Rage)
	local OutDamage = InDamage * (((Strength / 10 + 97 + SkillTreeBonus_Retailation) + (Dexterity / 10 + 97 + SkillTreeBonus_Rage)) * 0.8) / 100.0
	OutDamage = OutDamage / 3

	return OutDamage
end

-- SkillID: 693, Obsidian PowUp - (Mirage Lancer)
function GrowLancerObsidian_Level1(Index, TargetIndex, TargetClass, Strength, Dexterity, Energy)
	local SkillEffect = Strength / 20
	local SkillTime = 240

	return SkillEffect, SkillTime
end

-- SkillID: 894, Oversting
function GrowLancerOversting_Level1(InDamage, Dexterity, SkillTreeBonus)
	local OutDamage = (InDamage * 1.0) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage
end

-- SkillID: 896, Wild Breath
function GrowLancerWildBreath_Level1(InDamage, Strength, SkillTreeBonus)
	local OutDamage = (InDamage * 0.5) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage
end

-- SkillID: 744, Phoenix Shot Strengthener - (Fist Master)
function RageFighterPhoenixShot_Level1(InDamage, Dexterity, Vitality)
	local OutDamage = InDamage * (Vitality / 10 + 200) / 100.0
 
	return OutDamage
end

-- SkillID: 745, Phoenix Shot Mastery - (Fist Master)
function RageFighterPhoenixShot_Level2(InDamage, Dexterity, Vitality)
	local OutDamage = InDamage * (Vitality / 10 + 200) / 100.0
 
	return OutDamage
end

-- SkillID: 765, Burst Strengthener - (Grand Rune Master)
function RuneWizardBurstCalc_Level1(Energy)
	local SkillEffect1 = Energy / 30
	local SkillEffect2 = Energy / 100
	local SkillTime = Energy / 20 + 30
	
	return SkillEffect1, SkillEffect2, SkillTime
end

-- SkillID: 766, Burst Mastery - (Grand Rune Master)
function RuneWizardBurstCalc_Level2(Energy)
	local SkillEffect1 = Energy / 30
	local SkillEffect2 = Energy / 100
	local SkillTime = Energy / 20 + 30
	
	return SkillEffect1, SkillEffect2, SkillTime
end

-- SkillID: 768, Haste Strengthener - (Grand Rune Master)
function RuneWizardHasteCalc_Level1(Index, TargetIndex, TargetClass, Energy)
	local SkillEffect1 = Energy / 100
	local SkillEffect2 = Energy / 30
	local SkillTime = Energy / 20 + 30
	
	return SkillEffect1, SkillEffect2, SkillTime
end

-- SkillID: 769, Haste Mastery - (Grand Rune Master)
function RuneWizardHasteCalc_Level2(Index, TargetIndex, TargetClass, Energy)
	local SkillEffect1 = Energy / 100
	local SkillEffect2 = Energy / 30
	local SkillTime = Energy / 20 + 30
	
	return SkillEffect1, SkillEffect2, SkillTime
end

-- SkillID: 748, Magic Arrow Enhancement - (Grand Rune Master)
function RuneWizardMagicArrowCalcDamage_Level1(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 750, Plasma Ball Strengthening - (Grand Rune Master)
function RuneWizardPlasmaBallCalcDamage_Level1(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 749, Magic Arrow Mastery - (Grand Rune Master)
function RuneWizardMagicArrowCalcDamage_Level2(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 751, Plasma Ball Mastery - (Grand Rune Master)
function RuneWizardPlasmaBallCalcDamage_Level2(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 380: Expansion of Wizardry Power Up
function ExpansionWizardryCalc_Level1(Class, Energy, MagicDamageMax, SkillTreeValue)
	local SkillEffect1 = 0
	local SkillEffect2 = 0
	local SkillTime = 1800
	
	if (Class == CLASS_WIZARD) then
		SkillEffect1 = Energy / 9 * 0.20
		SkillEffect2 = MagicDamageMax / 100.0 * SkillTreeValue
	elseif (Class == CLASS_LIGHTWIZARD) then
		SkillEffect1 = Energy / 9 * 0.20
		SkillEffect2 = MagicDamageMax / 100.0 * SkillTreeValue
	elseif (Class == CLASS_LEMURIAMAGE) then
		SkillEffect1 = Energy / 9 * 0.20
		SkillEffect2 = MagicDamageMax / 100.0 * SkillTreeValue
	end

	return SkillEffect1, SkillEffect2, SkillTime
end

-- SkillID: 383: Expansion of Wizardry Mastery
function ExpansionWizardryCalc_Level2(Class, Energy, MagicDamageMax, SkillTreeValue)
	local SkillEffect1 = 0
	local SkillEffect2 = 0
	local SkillTime = 1800
	
	if (Class == CLASS_WIZARD) then
		SkillEffect1 = Energy / 9 * 0.20
		SkillEffect2 = MagicDamageMax / 100.0 * SkillTreeValue
	elseif (Class == CLASS_LIGHTWIZARD) then
		SkillEffect1 = Energy / 9 * 0.20
		SkillEffect2 = MagicDamageMax / 100.0 * SkillTreeValue
	elseif (Class == CLASS_LEMURIAMAGE) then
		SkillEffect1 = Energy / 9 * 0.20
		SkillEffect2 = MagicDamageMax / 100.0 * SkillTreeValue
	end

	return SkillEffect1, SkillEffect2, SkillTime
end

-- SkillID: 781, Bat Flock Strengthener - (Damage) - (Slayer, Royal Slayer, Master Slayer, Slaughterer)
function SlayerBatFlock_MasterLevel1_Calc(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	OutDamage = OutDamage * 0.5
	
	return OutDamage
end

-- SkillID: 782, Bat Flock Mastery - (Damage) - (Slayer, Royal Slayer, Master Slayer, Slaughterer)
function SlayerBatFlock_MasterLevel2_Calc(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	OutDamage = OutDamage * 0.5
	
	return OutDamage
end

-- SkillID: 779, Sword Inertia Strengthener - (Slayer, Royal Slayer, Master Slayer, Slaughterer)
function SlayerSwordInertia_MasterLevel1_Calc(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	OutDamage = OutDamage
	
	return OutDamage
end

-- SkillID: 780, Sword Inertia Mastery - (Slayer, Royal Slayer, Master Slayer, Slaughterer)
function SlayerSwordInertia_MasterLevel2_Calc(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	OutDamage = OutDamage
	
	return OutDamage
end

-- SkillID: 787, Demolish Strengthener - (Slayer, Royal Slayer, Master Slayer, Slaughterer)
function SlayerDemolish_MasterLevel1_Calc(Strength, Dexterity, Vitality, Energy, SkillTreeValue)
	local SkillEffect = ((Strength / 8) + (Dexterity / 28) + 120)
	local SkillTime = 60
	SkillEffect = SkillEffect * 0.03 + SkillTreeValue
	
	return SkillEffect, SkillTime
end

-- SkillID: 788, Demolish Mastery - (Slayer, Royal Slayer, Master Slayer, Slaughterer)
function SlayerDemolish_MasterLevel2_Calc(Strength, Dexterity, Vitality, Energy, SkillTreeValue)
	local SkillEffect = ((Strength / 8) + (Dexterity / 28) + 120)
	local SkillTime = 60
	SkillEffect = SkillEffect * 0.03 + SkillTreeValue
	
	return SkillEffect, SkillTime
end

-- SkillID: 802, Sword's Fury Mastery
function KnightSwordAngerCalc_MasterLevel2(Strength, Dexterity, Vitality, Energy, SkillTreeValue)
	local BaseAddRange = 1
	local SkillTime = -10
	
	local SkillAddRange = BaseAddRange + SkillTreeValue
	
	return SkillAddRange, SkillTime
end

-- SkillID: 803, Solid Protection Strengthener (1)
function KnightSolidProtection_MasterLevel1 (NormalLevel, MasterLevel, Strength, Dexterity, Vitality, Energy)
	local AbsorbHP = 2.21
	local ConvertDamage = 2.21
	local IncAtkPower = 2.21
	local Duration = 180
	
	return AbsorbHP, IncAtkPower, ConvertDamage, Duration
end

-- SkillID: 804, Solid Protection Strengthener (2)
function KnightSolidProtection_MasterLevel2 (NormalLevel, MasterLevel, Strength, Dexterity, Vitality, Energy)
	local AbsorbHP = 2.21
	local ConvertDamage = 2.21
	local IncAtkPower = 2.21
	local Duration = 180
	
	return AbsorbHP, IncAtkPower, ConvertDamage, Duration
end

-- SkillID: 806, Solid Protection Mastery
function KnightSolidProtection_MasterLevel3 (NormalLevel, MasterLevel, Strength, Dexterity, Vitality, Energy)
	local AbsorbHP = 2.21
	local ConvertDamage = 2.21
	local IncAtkPower = 2.21
	local Duration = 180
	
	return AbsorbHP, IncAtkPower, ConvertDamage, Duration
end

-- SkillID: 807, Strike of Destruction Strengthener - (Blade Master)
function StrikeOfDestructionCalc_MasterLevel1_Knight(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0

	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * (Energy / 10 + 200) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (Energy / 10 + 200) / 100
	end

	return OutDamage
end

-- SkillID: 809, Strike of Destruction Mastery - (Blade Master)
function StrikeOfDestructionCalc_MasterLevel2_Knight(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0

	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 0.8) * (Energy / 10 + 200) + SkillTreeValue) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * (Energy / 10 + 200) + SkillTreeValue) / 100
	end

	return OutDamage
end

-- SkillID: 811, Tornado Cutting Strengthener
function TorandoCuttingCalc_Level1(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

-- SkillID: 820, Dark Plasma Strengthener - (Master Gun Breaker, Heist Gun Crusher)
function GunCrusherDarkPlasma_Level1(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	OutDamage = InDamage * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	
	return OutDamage
end

-- SkillID: 821, Dark Plasma Proficiency - (Master Gun Breaker, Heist Gun Crusher)
function GunCrusherDarkPlasma_Level2(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	OutDamage = InDamage * ((Energy / 8) + (Dexterity / 28) + 120) / 100

	return OutDamage
end

-- SkillID: 822, Dark Plasma Mastery - (Master Gun Breaker, Heist Gun Crusher)
function GunCrusherDarkPlasma_Level3(InDamage, Strength, Dexterity, Vitality, Energy, SkillTreeValue)
	local OutDamage = 0
	OutDamage = InDamage * (((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100

	return OutDamage
end

-- SkillID: 823, Ice Break Strengthener - (Master Gun Breaker, Heist Gun Crusher)
function GunCrusherIceBreak_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 0.8) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	elseif (BarrageCount == 3) then
		OutDamage = ((InDamage * 1.2) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	end
	
	return OutDamage
end

-- SkillID: 824, Ice Break Mastery - (Master Gun Breaker, Heist Gun Crusher)
function GunCrusherIceBreak_MasterLevel2_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 0.8) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	elseif (BarrageCount == 3) then
		OutDamage = ((InDamage * 1.2) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	end
	
	return OutDamage
end

-- SkillID: 825, Death Fire Strengthener - (Master Gun Breaker, Heist Gun Crusher)
function GunCrusherDeathFire_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 0.8) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	end
	
	return OutDamage
end

-- SkillID: 826, Death Fire Mastery - (Master Gun Breaker, Heist Gun Crusher)
function GunCrusherDeathFire_MasterLevel2_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 0.8) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	end
	
	return OutDamage
end

-- SkillID: 828: Fixed Fire Strengthener
function GunCrusherFixedFire_MasterLevel1_Calc(Strength, Dexterity, Vitality, Energy)
	local SkillAddAttackSpeed = Dexterity / 50
	return SkillAddAttackSpeed
end

-- SkillID: 829: Fixed Fire Mastery
function GunCrusherFixedFire_MasterLevel2_Calc(Strength, Dexterity, Vitality, Energy)
	local SkillAddAttackSpeed = Dexterity / 50
	return SkillAddAttackSpeed
end

-- SkillID: 835, Death Ice Strengthener - (Master Gun Breaker, Heist Gun Crusher)
function GunCrusherDeathIce_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 0.8) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	end
	
	return OutDamage
end

-- SkillID: 836, Death Ice Mastery - (Master Gun Breaker, Heist Gun Crusher)
function GunCrusherDeathIce_MasterLevel2_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 0.8) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) + SkillTreeValue) / 100
	end
	
	return OutDamage
end

-- SkillID: 843, Shining Bird Strengthener
function LightWizardShiningBird_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0
	
	OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200) + SkillTreeValue) / 100

	return OutDamage
end

-- SkillID: 844, Shining Bird Mastery
function LightWizardShiningBird_MasterLevel2_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0
	
	OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200) + SkillTreeValue) / 100

	return OutDamage
end

-- SkillID: 846, Dragon Violent Strengthener
function LightWizardDragonViolent_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200) + SkillTreeValue) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200) + SkillTreeValue) / 100
	end

	return OutDamage
end

-- SkillID: 847, Dragon Violent Mastery
function LightWizardDragonViolent_MasterLevel2_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, SkillTreeValue)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200) + SkillTreeValue) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200) + SkillTreeValue) / 100
	end

	return OutDamage
end

-- SkillID: 861, Reflection Barrier Strengthener
function LightWizardReflectionBarrier_MasterLevel1_Calc(Level, MasterLevel, Strength, Dexterity, Vitality, Energy, SkillTreeValue)
	local ReflectProbability = 50
	local ReflectShockDmgPercentage = 15 + SkillTreeValue
	local Duration = 60
	return ReflectProbability, ReflectShockDmgPercentage, Duration
end

-- SkillID: 862, Reflection Barrier Skills
function LightWizardReflectionBarrier_MasterLevel2_Calc(Level, MasterLevel, Strength, Dexterity, Vitality, Energy, SkillTreeValue, SkillTreeValue2)
	local ReflectProbability = 50
	local ReflectShockDmgPercentage = 15 + SkillTreeValue
	local Duration = 60 + SkillTreeValue2
	return ReflectProbability, ReflectShockDmgPercentage, Duration
end

-- SkillID: 863, Reflection Barrier Mastery
function LightWizardReflectionBarrier_MasterLevel3_Calc(Level, MasterLevel, Strength, Dexterity, Vitality, Energy, SkillTreeValue, SkillTreeValue2)
	local ReflectProbability = 50
	local ReflectShockDmgPercentage = 15 + SkillTreeValue
	local Duration = 60 + SkillTreeValue2
	return ReflectProbability, ReflectShockDmgPercentage, Duration
end

-- SkillID: 848, Marvel Burst Strengthener
function LemuriaMageMarvelBurst_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	
	OutDamage = InDamage * (140 + (Energy / 100)) / 100
	
	return OutDamage
end

-- SkillID: 849, Marvel Burst Mastery
function LemuriaMageMarvelBurst_MasterLevel2_Calc(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	
	OutDamage = InDamage * (140 + (Energy / 100)) / 100
	
	return OutDamage
end

-- SkillID: 851, Beginner Defense Improvement Strengthener
function LemuriaMageDefense_Level1(Class, Index, TargetIndex, Energy)
	local SkillEffect = 0
	local SkillTime = 60
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_ELF) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = 2 + Energy / 16
		end
	elseif (Index == TargetIndex) then
		SkillEffect = 2 + Energy / 16
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 852, Beginner Defense Improvement Mastery
function LemuriaMageDefense_Level2(Class, Index, TargetIndex, Energy)
	local SkillEffect = 0
	local SkillTime = 60
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_ELF) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = 2 + Energy / 16
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = 2 + Energy / 16
		end
	elseif (Index == TargetIndex) then
		SkillEffect = 2 + Energy / 16
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 853, Beginner Attack Power Improvement Strengthener
function LemuriaMageAttack_Level1(Class, Index, TargetIndex, Energy)
	local SkillEffect = 0
	local SkillTime = 60
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_ELF) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = 3 + Energy / 15
		end
	elseif (Index == TargetIndex) then
		SkillEffect = 3 + Energy / 15
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 854, Beginner Attack Power Improvement Mastery
function LemuriaMageAttack_Level2(Class, Index, TargetIndex, Energy)
	local SkillEffect = 0
	local SkillTime = 60
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_ELF) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = 3 + Energy / 15
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = 3 + Energy / 15
		end
	elseif (Index == TargetIndex) then
		SkillEffect = 3 + Energy / 15
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 855, Unleash Marvel Strengthener
function LemuriaMageUnleashMarvel_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	
	OutDamage = InDamage * (140 + (Energy / 100)) / 100
	
	return OutDamage
end

-- SkillID: 856, Unleash Marvel Mastery
function LemuriaMageUnleashMarvel_MasterLevel2_Calc(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	
	OutDamage = InDamage * (140 + (Energy / 100)) / 100
	
	return OutDamage
end

-- SkillID: 857, Beginner Bless Strengthener
function LemuriaMageBless_Level1(Energy)
	local SkillEffect = Energy / 150
	
	return SkillEffect
end

-- SkillID: 858, Intensive Care Strengthener
function LemuriaMageHeal_Level1(TargetClass, Index, TargetIndex, Energy)
	local SkillEffect = 0
	
	if (Index ~= TargetIndex) then
		if (TargetClass == CLASS_WIZARD) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_KNIGHT) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_ELF) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_GLADIATOR) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_DARKLORD) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_SUMMONER) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_RAGEFIGHTER) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_GROWLANCER) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_RUNEWIZARD) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_SLAYER) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_GUNCRUSHER) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_LIGHTWIZARD) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_LEMURIAMAGE) then
			SkillEffect = Energy / 10 + 5
		elseif (TargetClass == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = Energy / 10 + 5
		end
	elseif (Index == TargetIndex) then
		SkillEffect = Energy / 10 + 5
	end
	
	return SkillEffect
end

-- SkillID: 877, Charge Slash Strengthener
function IllusionKnightChargeSlash_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	end
	
	return OutDamage
end

-- SkillID: 878, Charge Slash Mastery
function IllusionKnightChargeSlash_MasterLevel2_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	end

	return OutDamage
end

-- SkillID: 879, Wind Glaive Strengthener
function IllusionKnightWindGlaive_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	end

	return OutDamage
end

-- SkillID: 880, Wind Glaive Mastery
function IllusionKnightWindGlaive_MasterLevel2_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	end

	return OutDamage
end

-- SkillID: 881, Blade Storm Strengthener
function IllusionKnightBladeStorm_MasterLevel2_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	end

	return OutDamage
end

-- SkillID: 882, Blade Storm Mastery
function IllusionKnightBladeStorm_MasterLevel1_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	end

	return OutDamage
end
