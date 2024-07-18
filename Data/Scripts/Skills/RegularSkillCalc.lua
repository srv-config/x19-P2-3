-- // ============================================================
-- // == INTERNATIONAL GAMING CENTER NETWORK
-- // == www.igcn.mu
-- // == (C) 2010-2024 IGC-Network (R)
-- // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- // == File is a part of IGCN Group MuOnline Server files.
-- // ============================================================

-- RegularSkillCalc Control Script, Lua v5.3
-- Skill Configuration (Result, Time) - Can be modified to adjust for own needs

-- SkillID refers to Index of skill in \Data\Skills\SkillList.txt
-- BuffID refers to \Data\BuffEffectManager.cfg

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
CLASS_LIGHTWIZARD									  = 11
CLASS_LEMURIAMAGE									  = 12
CLASS_ILLUSIONKNIGHT								  = 13

-- SkillID: 1, Poison
function PoisonCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 2, Meteorite
function MeteoriteCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 3, Lightning
function LightningCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 4, Fire Ball
function FireBallCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 5, Flame
function FlameCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 7, Ice
function IceCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 8, Twister
function TwisterCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 9, Evil Spirit
function EvilSpiritCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
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

-- SkillID: 10, Hell Fire
function HellFireCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 11, Power Wave
function PowerWaveCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 12, Aqua Beam
function AquaBeamCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 13, Comet Fall
function CometfallCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 14, Inferno
function InfernoCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 17, Energy Ball
function EnergyBallCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 38, Decay
function DecayCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 39, Ice Storm
function IceStormCalc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 16, Soul Barrier
function WizardMagicDefense(Index, TargetIndex, TargetClass, Dexterity, Energy)
	local SkillEffect = Dexterity / 50 + Energy / 200 + 10
	local SkillTime = Energy / 40 + 60
	
	if(Index == TargetIndex and SkillEffect > 50) then -- casting spell on yourself
		SkillEffect = 50
	elseif (Index ~= TargetIndex and SkillEffect > 50)  then -- casting spell on others
		SkillEffect = 50
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 40, Nova
function Wizard_NovaSkillCalc(InDamage, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 42, Anger Blow
function AngerBlow_Calc(Class, InDamage, Strength, Dexterity, Vitality, Energy)
 local OutDamage = 0
 
 	if (Class == CLASS_KNIGHT) then
		OutDamage = InDamage * (Energy / 10 + 200) / 100
	elseif (Class == CLASS_SLAYER) then
		OutDamage = InDamage * (Energy / 10 + 200) / 100
	end
 
 return OutDamage
end

-- SkillID: 724, Meteor Strike
function WizardMeteorStrikeCalcDamage(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 725, Meteor Storm
function WizardMeteorStormCalcDamage(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 726, Soul Seeker
function WizardSoulSeekerCalcDamage(InDamage, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 19, 20, 21, 22, 23, 41, 43, 44, 49, 57, Falling Slash, Lunge, Uppercut,
-- Cyclone, Slash, Twisting Slash, Death Stab, Crescent Moon Slash, Fire Breath,
-- Spiral Slash
function Knight_Gladiator_CalcSkillBonus(SkillID, Class, InDamage, Strength, Energy)	
	local OutDamage = 0
	
	if (Class == CLASS_GLADIATOR or Class == CLASS_DARKLORD) then
		OutDamage = InDamage * 2
	else
		OutDamage = (InDamage * ( 200 + ( Energy / 10 ) ) ) / 100;
	end
		
	return OutDamage
end

-- SkillID: 48, Swell Life
function KnightSkillAddLife(Index, TargetIndex, TargetClass, Vitality, Energy, PartyBonus)
	local SkillEffect = Vitality / 100 + 12 + Energy / 20 + PartyBonus
	local SkillTime = Energy / 10 + 60
	
	return SkillEffect, SkillTime
end

-- SkillID: 232, Strike of Destruction
function StrikeOfDestructionCalc(InDamage, Energy)
	local OutDamage = InDamage * (Energy /10 + 200) / 100;
	
	return OutDamage
end

-- SkillID: 723, Fireblow - (Blade Knight)
function KnightFireBlowCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = (InDamage * ( 200 + ( Energy / 10 ) ) ) / 100;

	return OutDamage
end

-- SkillID: X, Combo Skill
function ComboSkillDamage(Class, Strength, Dexterity, Vitality, Energy, Command, InDamage)
	local Damage = 0
	local OutDamage = 0
 
 	if(Class == CLASS_WIZARD) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_KNIGHT) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_ELF) then 
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_GLADIATOR) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_DARKLORD) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_SUMMONER) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_RAGEFIGHTER) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_GROWLANCER) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_RUNEWIZARD) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_SLAYER) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_GUNCRUSHER) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_LIGHTWIZARD) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_LEMURIAMAGE) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	elseif(Class == CLASS_ILLUSIONKNIGHT) then
		Damage = (Strength * 1.5) + Dexterity + Energy
		OutDamage = InDamage
	end

 return Damage, OutDamage
end

-- SkillID: 731, Ice Blood
function GladiatorIceBloodCalcDamageAndDot(InDamage, Strength, Energy)
	local OutDamage = InDamage * 2
	local SuccessRate = 6
	local DebuffTime = 10
	
	return OutDamage, SuccessRate, DebuffTime
end

-- SkillID: 732, Fire Blood
function GladiatorFireBloodCalcDamageAndDot(InDamage, Strength, Energy)
	local OutDamage = InDamage * 2
	local SuccessRate = 6
	local DebuffDamage = Strength / 10
	local DebuffTime = 10
	
	return OutDamage, SuccessRate, DebuffDamage, DebuffTime
end

-- SkillID: 733, Dark Blast
function GladiatorDarkBlastCalcDamage(InDamage, Strength, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 46, 51, 52, Starfall, Ice Arrow, Penetration
function Elf_CalcSkillBonus(SkillID, InDamage, Dexterity, Energy)
	local OutDamage = InDamage * 2
	
	return OutDamage
end

-- SkillID: 24, Triple-Shot
function Elf_CalcTripleShot(InDamage, Strength, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 26, Heal
function ElfHeal(TargetClass, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
	local SkillEffect = 0
	
	-- LogAdd(string.format('TargetClass %d Index %d Target %d Ene %d', TargetClass, Index, TargetIndex, Energy))
	
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

-- SkillID: 28, Greater Damage
function ElfAttack(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
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

-- SkillID: 27, Greater Defense
function ElfDefense(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy)
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

-- SkillID: 234, Recovery
function ElfShieldRecovery(Energy, PlayerLevel)
 local SkillEffect = Energy / 4 + PlayerLevel
 
 return SkillEffect
end

-- SkillID: 235, Multi-Shot
function MultiShotCalc(InDamage, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 727, Focus Shot
function ElfFocusShotCalcDamage(InDamage, Strength, Dexterity, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 2023, Raining Arrow
function ElfRainingArrow(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
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

-- SkillID: 2025, Holy Bolt
function ElfHolyBolt(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
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

-- SkillID: 2026, Improve Elemental Attack Power
function ElfElementalAttack(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy, InEffect, InTime)
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

-- SkillID: 2027, Improve Elemental Defense
function ElfElementalDefense(Class, Index, TargetIndex, Strength, Dexterity, Vitality, Energy, InEffect, InTime)
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

-- SkillID: 47, Impale
function ImpaleSkillCalc(Class, InDamage, Energy)
	local OutDamage = 0
	
	if (Class == CLASS_GLADIATOR or Class == CLASS_DARKLORD) then
		OutDamage = InDamage * 2
	else
		OutDamage = ( InDamage * ( Energy / 10 + 200 )  ) / 100;
	end
		
	return OutDamage
end

-- SkillID: 55, Fire Slash
function GladiatorFireSlash(InDamage, Strength, Energy, BarrageCount)
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

-- SkillID: 56, Power Slash
function GladiatorPowerSlash(InDamage, Energy)
	local OutDamage = InDamage * 2
	
	return OutDamage
end

-- SkillID: 236, Flame Strike
function FlameStrikeCalc(InDamage, Energy)
	local OutDamage = InDamage * 2
	
	return OutDamage
end

-- SkillID: 237, Gigantic Storm
function GiganticStormCalc(InDamage, Strength, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

-- SkillID: 724, Meteor Strike
function GladiatorMeteorStrikeCalcDamage(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 2012, Chaos Blade
function GladiatorChaosBlade(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
    local OutDamage = 0
    
    if (BarrageCount == 1) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Strength / 10 ) ) / 100;
    elseif (BarrageCount == 2) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Strength / 10 ) ) / 100;
    elseif (BarrageCount == 3) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Strength / 10 ) ) / 100;		
	elseif(BarrageCount == 4) then -- Explosion
		OutDamage = 10000
    end
    return OutDamage
end

-- SkillID: 2013, Havok Spear
function GladiatorHavokSpear(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
    local OutDamage = 0
    
    if (BarrageCount == 1) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 2) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Energy / 10 ) ) / 100;
    elseif (BarrageCount == 3) then
        OutDamage = (InDamage * 0.33) * ( 200 + ( Energy / 10 ) ) / 100;	
	elseif(BarrageCount == 4) then -- Explosion
		OutDamage = 10000
    end
    return OutDamage
end

-- SkillID: 60, Force
function LordForceCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 61, Fire Burst
function LordFireBurstCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 62, Earth-Shake
function LordEarthShakeCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 64, Lord Dignity
function LordLordDignity(Index, Command, Energy)
	local SkillEffect = (Command / 25 + Energy / 30) / 10
	local SkillTime = Energy / 10 + 60
	
	return SkillEffect, SkillTime
end

-- SkillID: 65, Electric Spike
function LordElectricSpikeCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 74, Fire Blast
function LordFireBlastCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 78, Fire Scream
function LordFireScreamCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 238, Chaotic Diseier
function LordChaoticDiseierCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy, Command)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 737, Wind Soul - (Lord Emperor)
function LordWindSoulCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy, Command, BarrageCount)
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

-- SkillID: 2095, Spirit Blast
function LordSpiritBlastCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy, Command, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = InDamage
	elseif (BarrageCount == 2) then
		OutDamage = InDamage
	end

	return OutDamage
end

-- SkillID: 214, Drain Life - PVP
function SummonerDrainLife_PvP(Energy, Damage)
	local AddHP = Energy / 23 + (10 * Damage / 100)
	
	return AddHP
end

-- SkillID: 214, Drain Life - MvP
function SummonerDrainLife_Monster(Energy, MonsterLevel)
	local AddHP = (Energy / 15) + (MonsterLevel / 2.5)
	
	return AddHP
end

-- SkillID: 215, Chain Lighting
function ChainLightningCalc(InDamage, TargetNumber)
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

-- SkillID: 217, Damage Reflection
function SummonerDamageReflect(Index, TargetIndex, TargetClass, Energy)
	local Reflect = 30 + (Energy / 42)
	local Time = 30 + (Energy / 25)
	
	if (Reflect > 25) then
		Reflect = 25
	end
	
	return Reflect, Time
end

-- SkillID: 288, Death Scythe
function DeadScythe_Summoner(InDamage, TargetClass, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = InDamage * 0.8
	elseif (BarrageCount == 2) then
		OutDamage = InDamage * 1.0
	elseif (BarrageCount == 3) then
		OutDamage = InDamage * 1.1
	elseif (BarrageCount == 4) then
		OutDamage = InDamage * 1.2
	end

	return OutDamage
end

-- SkillID: 219, Sleep - MvP
function Sleep_Monster(Energy, Curse, MonsterLevel)
	local SkillSuccessRate = Energy / 30 + Curse / 6 + 20
	local SkillTime = Energy / 100 + 5 - MonsterLevel / 20
	
	return SkillSuccessRate, SkillTime
end

-- SkillID: 219, Sleep - PvP
function Sleep_PvP(Energy, Curse, PlayerLevel, TargetLevel)
	local SkillSuccessRate = Energy / 37 + Curse / 6 + 15
	local SkillTime = Energy / 250 + (PlayerLevel - TargetLevel) / 100 + 4
	
	return SkillSuccessRate, SkillTime
end

-- SkillID: 223, Explosion - Damage over time
function ExplosionDotDamage(Damage)
	local DotDamage = Damage * 60 / 100
	local Time = 5
	
	return DotDamage, Time
end

-- SkillID: 224, Requiem - Damage over time
function RequiemDotDamage(Damage)
	local DotDamage = Damage * 60 / 100
	local Time = 5
	
	return DotDamage, Time
end

-- SkillID: 230, Lightning Shock
function SummonerLightningShock(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 729, Fire Beast - (Dimension Master)
function SummonerFireBeastCalcDamage(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 730, Aqua Beast - (Dimension Master)
function SummonerAquaBeastCalcDamage(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 260, Killing Blow
function RageFighterKillingBlow(InDamage, Vitality)
	local OutDamage = InDamage * (Vitality / 10 + 50) / 100.0
	
	return OutDamage
end

-- SkillID: 261, Beast Uppercut
function RageFighterBeastUppercut(InDamage, Vitality)
	local OutDamage = InDamage * (Vitality / 10 + 50) / 100.0
	
	return OutDamage
end

-- SkillID: 262, Chain Drive
function RageFighterChainDrive(InDamage, Vitality)
	local OutDamage = (InDamage + Vitality / 10) * (Vitality / 10 + 50) / 100.0
	
	return OutDamage
end

-- SkillID: 263, Dark Side
function RageFighterDarkSideIncDamage(InDamage, Dexterity, Energy)
 local OutDamage = (Dexterity / 8 + InDamage + Energy / 10) * (Dexterity / 8 + Energy / 10 + 100) / 100.0
 
 return OutDamage
end

-- SkillID: 264, Dragon Roar
function RageFighterDragonRoar(InDamage, Energy)
	local OutDamage = (InDamage + Energy / 10) * (Energy / 10 + 50) / 100.0
	
	return OutDamage
end

-- SkillID: 265, Dragon Slasher
function RageFighterDragonSlasher(InDamage, Energy, TargetType)
	local OutDamage = 0
	
	if (TargetType == 1) then -- Player
		OutDamage = InDamage * (Energy / 10 + 50) / 100.0
	else -- Monster
		OutDamage = (InDamage * (Energy / 10 + 50) / 100.0 + 100.0) * 3.0
	end
	
	return OutDamage
end

-- SkillID: 265, 564 - Dragon Slasher - SD Reduction
function DragonSlasher_DecreaseVictimSD(SkillID, Strength, Energy)
	local SuccessRate = 0
	local DecreasePercent = 0
	
	SuccessRate = Energy / 100 + 10
	DecreasePercent = Energy / 30 + 10
	
	if (SuccessRate > 100) then
		SuccessRate = 100
	end
	
	if (DecreasePercent > 100) then
		DecreasePercent = 100
	end
	
	return SuccessRate, DecreasePercent
end
-- SkillID: 266, Ignore Defense
function FighterIgnoreEnemyDefCalcEffect(Energy)
	local SkillEffect = (Energy - 404) / 100 + 3.0
	local SkillTime = Energy / 5 + 60
	
	if (SkillEffect > 10) then
		SkillEffect = 10
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 267, Increase Health
function FighterIncLifeCalcEffect(Index, TargetIndex, TargetClass, Energy)
	local SkillEffect = (Energy - 132) / 10.0 + 30.0;
	local SkillTime = Energy / 5 + 60
	
	return SkillEffect, SkillTime
end

-- SkillID: 268, Increase Block
function FighterIncDefRateCalcEffect(Index, TargetIndex, TargetClass, Energy)
	local SkillEffect = (Energy - 80) / 10.0 + 10.0;
	local SkillTime = Energy / 5 + 60
	
	if (SkillEffect > 100) then
		SkillEffect = 100
	end
	
	return SkillEffect, SkillTime
end

-- SkillID: 269, Charge
function RageFighterCharge(InDamage, Vitality)
	local OutDamage = InDamage * (Vitality / 10 + 50) / 100.0
	
	return OutDamage
end

-- SkillID: 270, Phoenix Shot
function RageFighterPhoenixShot(InDamage, Dexterity, Vitality)
	local OutDamage = InDamage * (Vitality / 10 + 200) / 100.0
 
	return OutDamage
end

-- SkillID: 282, Spirit Hook
function RageFighterSpiritHook(InDamage, Vitality)
	local OutDamage = (InDamage + Vitality / 10) * (Vitality / 10 + 50) / 100.0
	
	return OutDamage
end											


-- SkillID: 18, Defense - (Shields Skill)
function ShieldSkill_DecreaseVictimDamage(InDamage)
 local OutDamage = InDamage / 2
 
 return OutDamage
end

-- SkillID: 76, Plasma Storm - (Fenrir Pets)
function FenrirSkillCalc(InDamage, PlayerLevel, PlayerMasterLevel)
	local DamageInc = PlayerLevel - 300 + PlayerMasterLevel
	
	if (DamageInc < 0) then
		DamageInc = 0
	end
	
	DamageInc = DamageInc / 5
	
	local OutDamage = ( InDamage * ( DamageInc + 200 ) ) / 100;
	
	return OutDamage
end

-- SkillID: 271, Spin Step
function GrowLancerSpinStep(InDamage, Dexterity, SkillTreeBonus)
	local OutDamage = (InDamage * 1.1) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	local ExplosionDamage = (InDamage * 0.7) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage, ExplosionDamage
end

-- SkillID: 276, Harsh Strike
function GrowLancerHarshStrike(InDamage, Strength, SkillTreeBonus, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 1.0) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.1) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0
	end

	return OutDamage
end

-- SkillID: 274, Magic Pin
function GrowLancerMagicPin(InDamage, Dexterity, SkillTreeBonus, BarrageCount)
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

-- SkillID: 279, Breche
function GrowLancerBreche(InDamage, Strength, SkillTreeBonus)
	local OutDamage = (InDamage * 0.5) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage
end

-- SkillID: 277, Shining Peak
function GrowLancerShiningPeak(InDamage, Strength, Dexterity, SkillTreeBonus_Retailation, SkillTreeBonus_Rage)
	local OutDamage = InDamage * (((Strength / 10 + 97 + SkillTreeBonus_Retailation) + (Dexterity / 10 + 97 + SkillTreeBonus_Rage)) * 0.8) / 100.0
	OutDamage = OutDamage / 3

	return OutDamage
end

-- SkillID: 273, Obsidian
function GrowLancerObsidian(Index, TargetIndex, TargetClass, Strength, Dexterity, Energy)
	local SkillEffect = Strength / 20
	local SkillTime = 240

	return SkillEffect, SkillTime
end

-- SkillID: 2036, Oversting
function GrowLancerOversting(InDamage, Dexterity, SkillTreeBonus)
	local OutDamage = (InDamage * 1.0) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	
	return OutDamage			   
end

-- SkillID: 2085, Wild Breath
function GrowLancerWildBreath(InDamage, Strength, SkillTreeBonus)
	local OutDamage = (InDamage * 0.5) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0
	
	return OutDamage
end

-- SkillID: X, Bastion - (BuffEffectManager.xml -> Index: 238)
function BastionBuffCalcSuccessAndMinSD(CharacterLevel)
	local SuccessRate = 50
	local MinShieldPercent = 20

	if (SuccessRate > 100) then
		SuccessRate = 100
	end
	
	return SuccessRate, MinShieldPercent
end

-- SkillID: X, Hemorrhage - (BuffEffectManager.xml -> Index: 239)
function BleedingBuffCalcSuccessAndTime(CharacterLevel)
	local SuccessRate = 10
	local Duration = CharacterLevel / 4 + 20

	if (SuccessRate > 100) then
		SuccessRate = 100
	end

	return SuccessRate, Duration
end

-- SkillID: X, Paralysis - (BuffEffectManager.xml -> Index: 240)
function ParalyzingBuffCalcSuccess(CharacterLevel)
	local SuccessRate = 10

	if (SuccessRate > 100) then
		SuccessRate = 100
	end	

	return SuccessRate
end

-- SkillID: X, Bondage - (BuffEffectManager.xml -> Index: 241)
function BindingBuffCalcSuccess(CharacterLevel)
	local SuccessRate = 10

	if (SuccessRate > 100) then
		SuccessRate = 100
	end	

	return SuccessRate
end

-- SkillID: X, Blindness - (BuffEffectManager.xml -> Index: 242)
function BlindingBuffCalcSuccessAndTime(CharacterLevel)
	local SuccessRate = 10
	local Duration = CharacterLevel / 4 + 20

	if (SuccessRate > 100) then
		SuccessRate = 100
	end
	
	return SuccessRate, Duration
end

-- SkillID: 739, Dark Phoenix Shot
function FighterDarkPhoenixShotCalcDamage(InDamage, Dexterity, Vitality)
	local OutDamage = InDamage * (Dexterity / 10 + 50) / 100.0
 
	return OutDamage
end


-- SkillID: 283, Magic Arrow
function RuneWizardMagicArrowCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 284, Plasma Ball
function RuneWizardPlasmaBallCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 285, Lightning Storm
function RuneWizardLightningStormCalcDamage(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 286, Burst
function RuneWizardBurstCalc(Energy)
	local SkillEffect1 = Energy / 30
	local SkillEffect2 = Energy / 100
	local SkillTime = Energy / 20 + 30
	
	return SkillEffect1, SkillEffect2, SkillTime
end

-- SkillID: 287, Haste
function RuneWizardHasteCalc(Index, TargetIndex, TargetClass, Energy)
	local SkillEffect1 = Energy / 100
	local SkillEffect2 = Energy / 30
	local SkillTime = Energy / 20 + 30
	
	return SkillEffect1, SkillEffect2, SkillTime
end

-- SkillID: 233: Expansion of Wizardry
function ExpansionWizardryCalc(Class, Energy)
	local SkillEffect = 0
	local SkillTime = 1800
	
	if (Class == CLASS_WIZARD) then
		SkillEffect = Energy / 9 * 0.20
	elseif (Class == CLASS_RUNEWIZARD) then
		SkillEffect = Energy / 9 * 0.20
	elseif (Class == CLASS_LEMURIAMAGE) then
		SkillEffect = Energy / 9 * 0.20
	end

	return SkillEffect, SkillTime
end

-- SkillID: 293, Bat Flock - (Damage)
function SlayerBatFlockCalc(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	OutDamage = OutDamage * 0.5
	
	return OutDamage
end

-- SkillID: 294, Pierce Attack
function SlayerPierceAttackCalc(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	return OutDamage
end

-- SkillID: 292, Sword Inertia
function SlayerSwordInertiaCalc(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	OutDamage = OutDamage
	
	return OutDamage
end

-- SkillID: 297, Demolish
function SlayerDemolishCalc(Strength, Dexterity, Vitality, Energy)
	local SkillEffect = ((Strength / 8) + (Dexterity / 28) + 120)
	local SkillTime = 60
	SkillEffect = SkillEffect * 0.03
	
	return SkillEffect, SkillTime
end

-- SkillID: 1500, Sword's Fury
function KnightSwordAngerCalc(Strength, Dexterity, Vitality, Energy)
	local SkillAddRange = 1
	local SkillTime = -10
	
	return SkillAddRange, SkillTime
end

-- SkillID: 1501, Sword Blow
function SwordBlow_Knight(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0

	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * (Energy / 10 + 200) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (Energy / 10 + 200) / 100
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * 1.2) * (Energy / 10 + 200) / 100
	end

	return OutDamage
end

-- SkillID: 1503, Solid Protection
function KnightSolidProtection (NormalLevel, MasterLevel, Strength, Dexterity, Vitality, Energy)
	local AbsorbHP = 2.21
	local ConvertDamage = 2.21
	local IncAtkPower = 2.21
	local Duration = 180

	return AbsorbHP, IncAtkPower, ConvertDamage, Duration
end

-- SkillID: 2001, Dark Plasma
function GunCrusherDarkPlasmaCalc(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	OutDamage = InDamage * ((Energy / 8) + (Dexterity / 28) + 120) / 100

	return OutDamage
end

-- SkillID: 2002, Ice Break
function GunCrusherIceBreakCalc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * 1.2) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	end
	
	return OutDamage
end

-- SkillID: 2004, Death Fire
function GunCrusherDeathFireCalc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	end
	
	return OutDamage
end

-- SkillID: 2003, Ice Blast
function GunCrusherIceBlastCalc(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	OutDamage = InDamage * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	
	return OutDamage
end

-- SkillID: 2005, Bursting Flare
function GunCrusherBurstingFlareCalc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount, IsShockwave)
	local OutDamage = 0

    if (IsShockwave == 1) then
        OutDamage = (InDamage * 1.5) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
        return OutDamage
    end

	if (BarrageCount == 1) then
		OutDamage = (InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	end
	
	return OutDamage
end

-- SkillID: 2006, Death Ice
function GunCrusherDeathIceCalc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * ((Energy / 8) + (Dexterity / 28) + 120) / 100
	end
	
	return OutDamage
end

-- SkillID: 240, Magic Shot
function LightWizardMagicShot(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 1.0) * (140 + (Energy / 100)) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (140 + (Energy / 100)) / 100
	end
	
	return OutDamage
end

-- SkillID: 241, Shining Bird
function LightWizardShiningBirdCalc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	OutDamage = (InDamage * 1.0) * ((Energy / 50) + 200) / 100

	return OutDamage
end

-- SkillID: 242, Dragon Violent
function LightWizardDragonViolentCalc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 1.0) * ((Energy / 50) + 200) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * ((Energy / 50) + 200) / 100
	end

	return OutDamage
end

-- SkillID: 243, Spear Storm
function LightWizardSpearStormCalc(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 1.0) * ((Energy / 50) + 200) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * ((Energy / 50) + 200) / 100
	end

	return OutDamage
end

-- SkillID: 244, Reflection Barrier
function LightWizardReflectionBarrierCalc(Level, MasterLevel, Strength, Dexterity, Vitality, Energy)
	local ReflectProbability = 50
	local ReflectShockDmgPercentage = 15
	local Duration = 60
	return ReflectProbability, ReflectShockDmgPercentage, Duration
end

-- SkillID: 240, Magic Shot
function LemuriaMageMagicShot(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 1.0) * (140 + (Energy / 100)) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (140 + (Energy / 100)) / 100
	end
	
	return OutDamage
end

-- SkillID: 245, Marvel Burst
function LemuriaMageMarvelBurst(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	
	OutDamage = InDamage * (140 + (Energy / 100)) / 100
	
	return OutDamage
end

-- SkillID: 246, Unleash Marvel
function LemuriaMageUnleashMarvel(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = 0
	
	OutDamage = InDamage * (140 + (Energy / 100)) / 100
	
	return OutDamage
end

-- SkillID: 247, Ultimate Force
function LemuriaMageUltimateForce(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 1.0) * (140 + (Energy / 100)) / 100
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (140 + (Energy / 100)) / 100
	end
	
	return OutDamage
end

-- SkillID: 2007, Beginner Care
function LemuriaMageHeal(TargetClass, Index, TargetIndex, Energy)
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

-- SkillID: 2008, Beginner Shield Recovery
function LemuriaMageShieldRecovery(Energy, PlayerLevel)
	local SkillEffect = Energy / 8 + PlayerLevel
 
	return SkillEffect
end

-- SkillID: 2009, Beginner Basic Defense Improvement
function LemuriaMageDefense(Class, Index, TargetIndex, Energy)
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

-- SkillID: 2010, Beginner Attack Power Improvement
function LemuriaMageAttack(Class, Index, TargetIndex, Energy)
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

-- SkillID: 2011, Beginner Bless
function LemuriaMageBless(Energy)
	local SkillEffect = Energy / 150
	
	return SkillEffect
end

-- SkillID: 2021: Fixed Fire
function GunCrusherFixedFireCalc(Strength, Dexterity, Vitality, Energy)
	local SkillAddAttackSpeed = Dexterity / 50
	return SkillAddAttackSpeed
end

-- SkillID: 2022, Bond
function BondAttack_TickDmg_Monster(Level, MasterLevel, Strength, Dexterity, Vitality, Energy, MagicDamageMin, MagicDamageMax)
	local SkillEffect = MagicDamageMax / 4
	local Duration = 3
	
	return SkillEffect, Duration
end

-- SkillID: 2022, Bond - Bonus for Light Wizard and Lemuria Mage
function BondAttack_Active(InDamage, Class, Level, MasterLevel, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage * 130 / 100
	
	return OutDamage
end

-- SkillID: 2022, Bond - Bonus for other class party members
function BondAttack_PartyMember(InDamage, Class, Level, MasterLevel, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage * 115 / 100
	
	return OutDamage
end

-- SkillID: 2028, Charge Slash
function IllusionKnightChargeSlash(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * (200 + (Strength / 30) + (Dexterity / 30))) / 100;
	end

	return OutDamage
end

-- SkillID: 2029, Wind Glaive
function IllusionKnightWindGlaive(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
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

-- SkillID: 2030, Blade Storm
function IllusionKnightBladeStorm(InDamage, Strength, Dexterity, Vitality, Energy, BarrageCount)
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

-- SkillID: 2031, Illusion Avatar, formula controls base Life and Damage before mastery improvements
function IllusionKnightAvatarCalc(Strength, Dexterity, Vitality, Energy, InDamageMin, InDamageMax, PlayerLevel, PlayerMasterLevel, PlayerMaxLife)
	local PlayerTotalLevel = PlayerLevel + PlayerMasterLevel
	local OutDamageMin = InDamageMin * 1.5
	local OutDamageMax = InDamageMax * 2
	local OutLife = (PlayerTotalLevel / 20) * PlayerMaxLife
	
	return OutDamageMin, OutDamageMax, OutLife
end
 