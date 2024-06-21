-- // ============================================================
-- // == INTERNATIONAL GAMING CENTER NETWORK
-- // == www.igcn.mu
-- // == (C) 2022 IGC-Network (R)
-- // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- // == File is a part of IGCN Group MuOnline Server files.
-- // ============================================================

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


-- NOTE: The below calculations must be adjusted to suit actual server max stats, otherwise the fruit points will not display correctly under 'C' window
function FruitAddStatCalc(Class, PrevAddStat, Level)
	local AddStat = PrevAddStat
	local PointPerLevel = GetClassPointPerLevel(Class);
	
	if (Level == 0) then
		AddStat = 2
	end

	if (((Level + 1) % 10) == 0) then
		if (Class == CLASS_GLADIATOR) then
			AddStat = AddStat + 3 * ( Level + 11 ) / 700 + 2;
		elseif (Class == CLASS_DARKLORD) then
			AddStat = AddStat + 3 * ( Level + 11 ) / 500 + 2;
		else
			AddStat = AddStat + 3 * ( Level + 11 ) / 400 + 2;
		end
	end
	
	return AddStat -- The right side value (y) of the display in Game Client, x/y where x are actual points
end

function FruitMinusStatCalc(Class, PrevMinusStat, Level)
	local MinusStat = PrevMinusStat
	local PointPerLevel = GetClassPointPerLevel(Class);
	
	if (Level == 0) then
		MinusStat = 2
	end
	
	if (((Level + 1) % 10) == 0) then
		if (Class == CLASS_GLADIATOR) then
			MinusStat = MinusStat + 3 * ( Level + 11 ) / 700 + 2;
		elseif (Class == CLASS_DARKLORD) then
			MinusStat = MinusStat + 3 * ( Level + 11 ) / 500 + 2;
		else
			MinusStat = MinusStat + 3 * ( Level + 11 ) / 400 + 2;
		end
	end
	
	return MinusStat -- The right side value (y) of the display in Game Client, x/y where x are actual points
end