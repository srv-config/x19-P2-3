-- // ============================================================
-- // == INTERNATIONAL GAMING CENTER NETWORK
-- // == www.igcn.mu
-- // == (C) 2010-2023 IGC-Network (R)
-- // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- // == File is a part of IGCN Group MuOnline Server files.
-- // ============================================================

-- MasterSkillCalc Control Script, Lua v5.3
-- Skill Tree Skill Configuration (Result, Time) - Can be modified to adjust for own needs

-- SkillID refers to Index of skill in \Data\Skills\SkillList.txt

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

-- SkillID: 1078, 1088, Evil Spirit Enhancement Skill
function EvilSpiritCalc_4thEnchant(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = 0
 
 	if (Class == CLASS_WIZARD) then
		OutDamage = InDamage
	elseif (Class == CLASS_GLADIATOR) then
		OutDamage = InDamage
	end
 
 return OutDamage
end

function DeathStab_4thEnchant_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

function AngerBlow_4thEnchant(Class, InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

function FireBlow_4thEnchant_Knight(InDamage, Strength, Dexterity, Vitality, Energy)
    local OutDamage = (InDamage * ( 200 + ( Energy / 10 ) ) ) / 100;

    return OutDamage
end

function FireBlood_4thEnchant_Gladiator(InDamage, Strength, Energy)
	local OutDamage = InDamage * 2
	local SuccessRate = 6
	local DebuffDamage = Strength / 10
	local DebuffTime = 10
	
	return OutDamage, SuccessRate, DebuffDamage, DebuffTime
end

function IceBlood_4thEnchant_Gladiator(InDamage, Strength, Energy)
	local OutDamage = InDamage * 2
	local SuccessRate = 6
	local DebuffTime = 10
	
	return OutDamage, SuccessRate, DebuffTime
end

function FireSlash_4thEnchant_Gladiator(InDamage, Strength, Energy, BarrageCount)
    local OutDamage = InDamage * 2
    
    if (BarrageCount == 1) then
        OutDamage = OutDamage * 0.15
    elseif (BarrageCount == 2) then
        OutDamage = OutDamage * 0.18
    elseif (BarrageCount == 3) then
        OutDamage = OutDamage * 0.22
    elseif (BarrageCount == 4) then
        OutDamage = OutDamage * 0.25
	elseif (BarrageCount == 5) then
        OutDamage = OutDamage * 0.27
	elseif (BarrageCount == 6) then
        OutDamage = OutDamage * 0.29
    end
	
	return OutDamage
end

function WindSoul_4thEnchant_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
        OutDamage = InDamage
    elseif (BarrageCount == 2) then
        OutDamage = InDamage
    elseif (BarrageCount == 3) then
        OutDamage = InDamage
    elseif (BarrageCount == 4) then
        OutDamage = InDamage
    end
	
	return OutDamage
end

function ChaoticDiseier_4thEnchant_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

function FireBurst_4thEnchant_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 1240, Spirit Blast Enhancement Skill
function SpiritBlast_4thEnchant_Lord(InDamage, Strength, Dexterity, Vitality, Energy, Command, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = InDamage
	elseif (BarrageCount == 2) then
		OutDamage = InDamage
	elseif (BarrageCount == 3) then
		OutDamage = InDamage
	end

	return OutDamage
end

function DarkSide_4thEnchant_Fighter(InDamage, Dexterity, Energy)
	local OutDamage = (Dexterity / 8 + InDamage + Energy / 10) * (Dexterity / 8 + Energy / 10 + 100) / 100.0
 
	return OutDamage
end

function DragonRoar_4thEnchant_Fighter(InDamage, Energy)
	local OutDamage = (InDamage + Energy / 10) * (Energy / 10 + 50) / 100.0
 
	return OutDamage
end

function Breche_4thEnchant_Lancer(InDamage, Strength, SkillTreeBonus)
	local OutDamage = (InDamage * 0.5) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage
end

function MagicPin_4thEnchant_Lancer(InDamage, Dexterity, SkillTreeBonus, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * 1.1) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 4) then
		OutDamage = (InDamage * 1.2) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 5) then
		OutDamage = (InDamage * 1.3) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	end

	return OutDamage
end

function ShiningPeak_4thEnchant_Lancer(InDamage, Strength, Dexterity, SkillTreeBonus_Retailation, SkillTreeBonus_Rage)
	local OutDamage = InDamage * (((Strength / 10 + 97 + SkillTreeBonus_Retailation) + (Dexterity / 10 + 97 + SkillTreeBonus_Rage)) * 0.8) / 100.0
	OutDamage = OutDamage / 3

	return OutDamage
end

function Oversting_4thEnchant_Lancer(InDamage, Dexterity, SkillTreeBonus)
	local OutDamage = (InDamage * 1.0) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage
end

function WildBreath_4thEnchant_Lancer(InDamage, Strength, SkillTreeBonus)
	local OutDamage = (InDamage * 0.5) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage
end

function SpiritHook_4thEnchant_Fighter(InDamage, Vitality)
	local OutDamage = (InDamage + Vitality / 10) * (Vitality / 10 + 50) / 100.0
	
	return OutDamage
end

function MultiShot_4thEnchant_Elf(InDamage, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

function GiganticStorm_4thEnchant_Gladiator(InDamage, Strength, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

function TripleShot_4thEnchant_Elf(InDamage, Strength, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

function FocusShot_4thEnchant_Elf(InDamage, Strength, Dexterity, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function MeteorStorm_4thEnchant_Wizard(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function MeteorStrike_4thEnchant_Wizard(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function LightningShock_4thEnchant_Summoner(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function FireBeast_4thEnchant_Summoner(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function AquaBeast_4thEnchant_Summoner(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function DarkBlast_4thEnchant_Gladiator(InDamage, Strength, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 1214, Chaos Blade Enhancement
function ChaosBlade_4thEnchant_Gladiator(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
    local OutDamage = 0
    
    if (BarrageCount == 1) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Strength / 10 ) ) / 100;
    elseif (BarrageCount == 2) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Strength / 10 ) ) / 100;
    elseif (BarrageCount == 3) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Strength / 10 ) ) / 100;
    elseif (BarrageCount == 4) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Strength / 10 ) ) / 100;		
	elseif(BarrageCount == 5) then -- Explosion
		OutDamage = 10000
    end
    return OutDamage
end

-- SkillID: 2015, Havok Spear Enhancement
function HavokSpear_4thEnchant_Gladiator(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
    local OutDamage = 0
    
    if (BarrageCount == 1) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 2) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 3) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 4) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Energy / 10 ) ) / 100;		
	elseif(BarrageCount == 5) then -- Explosion
		OutDamage = 10000
    end
    return OutDamage
end

function MagicArrow_4thEnchant_RuneWizard(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function PlasmaBall_4thEnchant_RuneWizard(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function LightningStorm_4thEnchant_RuneWizard(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 1155, Death Scythe Enhancement
function DeadScythe_4thEnchant_Summoner(InDamage, TargetClass, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = InDamage * 0.8
	elseif (BarrageCount == 2) then
		OutDamage = InDamage * 1.0
	elseif (BarrageCount == 3) then
		OutDamage = InDamage * 1.1
	elseif (BarrageCount == 4) then
		OutDamage = InDamage * 1.2
	elseif (BarrageCount == 5) then
		OutDamage = InDamage * 1.3
	end

	return OutDamage
end

function SwordInertia_4thEnchant_Slayer(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	OutDamage = OutDamage
	
	return OutDamage
end	

function BatFlock_4thEnchant_Slayer(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	OutDamage = OutDamage * 0.5
	
	return OutDamage
end	

function PierceAttack_4thEnchant_Slayer(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	return OutDamage
end

function StrikeOfDestruction_4thEnchant_Knight(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0

	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * (Energy / 10 + 200) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (Energy / 10 + 200) / 100
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * 1.2) * (Energy / 10 + 200) / 100
	elseif (BarrageCount == 4) then
		OutDamage = (InDamage * 1.4) * (Energy / 10 + 200) / 100
	end

	return OutDamage
end

-- SkillID: 1203, Sword Blow Enhancement Skill
function SwordBlow_4thEnchant_Knight(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0

	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * (Energy / 10 + 200) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (Energy / 10 + 200) / 100
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * 1.2) * (Energy / 10 + 200) / 100
	elseif (BarrageCount == 4) then
		OutDamage = (InDamage * 1.4) * (Energy / 10 + 200) / 100
	end

	return OutDamage
end

-- SkillID: 1204, Solid Protection Enhanced
function SolidProtection_4thEnchant_Knight(NormalLevel, MasterLevel, Strength, Dexterity, Vitality, Energy)
	local AbsorbHP = 2.21
	local ConvertDamage = 2.21
	local IncAtkPower = 2.21
	local Duration = 180
	
	return AbsorbHP, IncAtkPower, ConvertDamage, Duration
end

-- SkillID: 1211, Dark Plasma Enhancement Skill
function DarkPlasma_4thEnchant_GunCrusher(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	OutDamage = InDamage * ((Energy / 8) + (Dexterity / 28) + 120) / 100

	return OutDamage
end

-- SkillID: 1212, Ice Blast Enhancement Skill
function IceBlast_4thEnchant_GunCrusher(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	OutDamage = InDamage * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	
	return OutDamage
end

-- SkillID: 1213, Busting Flare Enhancement Skill
function BurstingFlare_4thEnchant_GunCrusher(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0

	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	elseif (BarrageCount == 3) then -- Shockwave
		OutDamage = (InDamage * 1.2) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	end
	
	return OutDamage
end

-- SkillID: 1216, Spear Storm Enhancement Skill
function LightWizardSpearStorm_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200)) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200)) / 100
	elseif (BarrageCount == 3) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200)) / 100
	end

	return OutDamage
end

-- SkillID: 1217, Marvel Burst Enhancement Skill
function LemuriaMageMarvelBurst_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	
	OutDamage = InDamage * (140 + (Energy / 100)) / 100
	
	return OutDamage
end

-- SkillID: 1218, Unleash Marvel Enhancement Skill
function LemuriaMageUnleashMarvel_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	
	OutDamage = InDamage * (140 + (Energy / 100)) / 100
	
	return OutDamage
end

-- SkillID: 1219, Ultimate Force Enhancement Skill
function LemuriaMageUltimateForce_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 1.0) * (140 + (Energy / 100)) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (140 + (Energy / 100)) / 100
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * 1.0) * (140 + (Energy / 100)) / 100
	end
	
	return OutDamage
end

-- SkillID: 1220, Shining Bird Enhancement Skill
function LightWizardShiningBird_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200)) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200)) / 100
	end

	return OutDamage
end

-- SkillID: 1221, Dragon Violent Enhancement Skill
function LightWizardDragonViolent_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200)) / 100
	elseif (BarrageCount == 2) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200)) / 100
	elseif (BarrageCount == 3) then
		OutDamage = ((InDamage * 1.0) * ((Energy / 50) + 200)) / 100
	end

	return OutDamage
end

-- SkillID: 1222, Raining Arrow Enhancement Skill
function ElfRainingArrow_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = InDamage
	
	if (BarrageCount == 1) then
        OutDamage = InDamage
    elseif (BarrageCount == 2) then
        OutDamage = InDamage
    elseif (BarrageCount == 3) then
        OutDamage = InDamage
	elseif (BarrageCount == 4) then
        OutDamage = InDamage
	elseif (BarrageCount == 5) then
        OutDamage = InDamage
    end
	
	return OutDamage
end

-- SkillID: 1223, Holy Bolt Enhancement Skill
function ElfHolyBolt_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = InDamage
	
	if (BarrageCount == 1) then
        OutDamage = InDamage
    elseif (BarrageCount == 2) then
        OutDamage = InDamage
    elseif (BarrageCount == 3) then
        OutDamage = InDamage
	elseif (BarrageCount == 4) then
        OutDamage = InDamage
    end
	
	return OutDamage
end

-- SkillID: 1226, Healing Enhancement Skill
function Heal_4thEnchant_Elf(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
	local SkillEffect = 0
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_ELF) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = Energy / 5 + 5
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = Energy / 5 + 5	
		end
	elseif (Index == TargetIndex) then
		SkillEffect = Energy / 5 + 5
	end
	
	return SkillEffect
end

-- SkillID: 1227, Party Healing Enhancement
function PartyHealing_4thEnchant_Elf(Strength, Dexterity, Vitality, Energy)
	local HP = Energy / 6 + 6
	
	return HP
end

-- SkillID: 1228, Attack Enhancement Skill
function Attack_4thEnchant_Elf(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
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

-- SkillID: 1229, Defense Enhancement Skill
function Defense_4thEnchant_Elf(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
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

-- SkillID: 1224, Improve Elemental Attack Power Enhancement
function ElementalAttack_4thEnchant_Elf(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy, InEffect, InTime)
	SkillEffect = InEffect -- result of formula 36 from FormulaData.xml
	SkillTime = InTime -- result of formula 37 from FormulaData.xml
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = InEffect
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = InEffect
		elseif (Class == CLASS_ELF) then
			SkillEffect = InEffect
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = InEffect
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = InEffect
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = InEffect
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = InEffect
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = InEffect
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = InEffect
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = InEffect
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = InEffect
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = InEffect
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = InEffect
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = InEffect
		end
	elseif (Index == TargetIndex) then
		SkillEffect = InEffect
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 1225, Improve Elemental Defense Enhancement
function ElementalDefense_4thEnchant_Elf(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy, InEffect, InTime)
	SkillEffect = InEffect -- result of formula 38 from FormulaData.xml
	SkillTime = InTime -- result of formula 37 from FormulaData.xml
	
	if (Index ~= TargetIndex) then
		if (Class == CLASS_WIZARD) then
			SkillEffect = InEffect
		elseif (Class == CLASS_KNIGHT) then
			SkillEffect = InEffect
		elseif (Class == CLASS_ELF) then
			SkillEffect = InEffect
		elseif (Class == CLASS_GLADIATOR) then
			SkillEffect = InEffect
		elseif (Class == CLASS_DARKLORD) then
			SkillEffect = InEffect
		elseif (Class == CLASS_SUMMONER) then
			SkillEffect = InEffect
		elseif (Class == CLASS_RAGEFIGHTER) then
			SkillEffect = InEffect
		elseif (Class == CLASS_GROWLANCER) then
			SkillEffect = InEffect
		elseif (Class == CLASS_RUNEWIZARD) then
			SkillEffect = InEffect
		elseif (Class == CLASS_SLAYER) then
			SkillEffect = InEffect
		elseif (Class == CLASS_GUNCRUSHER) then
			SkillEffect = InEffect
		elseif (Class == CLASS_LIGHTWIZARD) then
			SkillEffect = InEffect
		elseif (Class == CLASS_LEMURIAMAGE) then
			SkillEffect = InEffect
		elseif (Class == CLASS_ILLUSIONKNIGHT) then
			SkillEffect = InEffect
		end
	elseif (Index == TargetIndex) then
		SkillEffect = InEffect
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 1230, Bless Enhancement Skill
function Bless_4thEnchant_Elf(Energy)
	local SkillEffect = Energy / 100
	
	return SkillEffect
end

-- SkillID: 1231, Charge Slash Enhancement Skill
function IllusionKnightChargeSlash_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
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

-- SkillID: 1233, Wind Glaive Enhancement Skill
function IllusionKnightWindGlaive_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 4) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	end

	return OutDamage
end

-- SkillID: 1233, Blade Storm Enhancement Skill
function IllusionKnightBladeStorm_4thEnchant_Calc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 4) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 5) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	end

	return OutDamage
end
