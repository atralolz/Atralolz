local cvars = {
  
	--[[ CONTROLS ]]--
	
	autoClearAFK = "1", -- Снимает AFK-режим
	autoDismountFlying = "0", -- Автоматическое спешивание при применении заклинания с флай маунта
	autoDismount = "1", -- Автоматическое спешивание при применении заклинания
	autointeract = "0", -- Автоматическое взаимодействие
--	autoLootDefault = "1", -- Включает автолут
	autoOpenLootHistory = "0", -- Автооткрытие окна ролла лута при выпадении необычное и выше
	autoStand = "1", -- Встать при использовании способности
	autoUnshift = "0", -- Автоматическое сбрасывание формы при использовании заклинаний
	blockChannelInvites = "1", -- Блокировать приглашения в каналы чата
	blockTrades = "0", -- Блокировать обмен
	deselectOnClick = "0", -- Сброс цели при клике по пустой области
	interactOnLeftClick = "0", -- Взаимодействие по щелчку
	lootUnderMouse = "1", -- Окно лута под курсором
	synchronizeBindings = "1", -- no UI
	synchronizeConfig = "1", -- no UI
	synchronizeMacros = "1", -- no UI
	synchronizeSettings = "1", -- no UI

	--[[ COMBAT ]]--
	
	ActionButtonUseKeyDown = "1", -- Способности будут задействоваться, когда пользователь нажимает, а не отпускает клавишу
	assistAttack = "1", 
	autoSelfCast = "1", -- Автовыбор себя
	displaySpellActivationOverlays = "0", -- Проки по центру экрана
	lossOfControl = "1",
	lossOfControlDisarm = "2",
	lossOfControlFull = "2",
	lossOfControlInterrupt = "2",
	lossOfControlRoot = "2",
	lossOfControlSilence = "2",
	spellActivationOverlayOpacity = "0", -- Проки на панелях
	stopAutoAttackOnTargetChange = "0", -- Прекращение автоатаки при смене цели

	--[[ DISPLAY ]]--
	
	displayFreeBagSlots = "1", -- Показать свободные ячейки в рюкзаке
	displayWorldPVPObjectives     = "1", -- Показать PvP объекты 
	dontShowEquipmentSetsOnItems  = "0", -- no UI
	movieSubtitle = "1",
	Outline = "1", -- Quest Objectives Only
	screenEdgeFlash = "0", -- no UI
	serviceTypeFilter = "2", -- no UI
	showQuestTrackingTooltips = "1", -- no UI
	
	threatWarning = "0", -- Агрометр
    threatPlaySounds = "0", -- Звуковое оповещение об угрозе
    threatShowNumeric = "0", -- Показывать или не показывать числовую угрозу на тaргете и фокусе
    threatWorldText = "0", -- Показывать или не показывать угрозу в бою
	
	timeMgrUseLocalTime = "1", -- no UI
	BreakUpLargeNumbers = "1", -- Разделяеть запятой тысячи
	calendarShowResets = "1", -- Должны ли появляться сбросы рейдов в календаре
	showSpenderFeedback = "0", -- Отключить полоску об использовании энергии
	comboPointLocation = "0", -- Старое отображение комбопоинтов
	alwaysCompareItems = "0",-- Сравнение вещей Shift

	--[[ OBJECTIVES ]]--
	
	autoQuestWatch     = "1",
	autoQuestProgress  = "0", -- no UI
	mapFade            = "0",
--	mapQuestDifficulty = "0",
	trackQuestSorting  = "proximity",
--	watchFrameWidth    = "1",

	--[[ COSIAL ]]--
	
	chatBubbles = "0", -- Сообщения в облачках
	chatBubblesParty = "0", -- Сообщения в облачках для группы
	chatStyle = "classic", -- Стиль чата ("classic" or "im")
--	chatTimestamps           = "none",
	colorChatNamesByClass = "1", -- no UI
	guildMemberNotify = "1",
	profanityFilter = "0", -- Фильтр ненормативной лексики
	removeChatDelay = "1", -- Удалить задержку чата
	showToastWindow = "0",
	spamFilter = "1", -- Фильтр спама
	wholeChatWindowClickable = "0", -- Клик сквозь чат

	--[[ FLOATING COMBAT TEXT]]--
	
	enableFloatingCombatText        = "0",
	floatingCombatTextCombatDamageDirectionalScale = "0", -- Старый текст боя
	floatingCombatTextCombatHealingAbsorbTarget    = "0",
	floatingCombatTextLowManaHealth = "0",
	floatingCombatTextReactives     = "0",

	--[[ NAMEPLATES ]]--
	
	nameplateMotion = "1", -- Stacking, not Overlapping
	nameplateOtherBottomInset = "-1", -- don't stick nameplates to the screen edges for offscreen mobs
	nameplateOtherTopInset = "-1",
	nameplateShowAll = "1", -- Показывать неймплейты всегда, а не только в бою
	nameplateShowFriends = "0", -- Неймплейты союзников
	nameplateShowFriendlyPets = "0", -- Нейплейты петомцев союзников
	nameplateShowFriendlyGuardians = "0", -- Неймплейты стражей союзников
	nameplateShowFriendlyTotems = "0", -- Неймплейты тотемов союзников
	
	nameplateShowEnemies = "1", -- Неймплейты врагов
    nameplateShowEnemyPets = "1", -- Нейплейты вражеских петомцев
    nameplateShowEnemyGuardians = "0", -- Неймплейты вражеских стражей
    nameplateShowEnemyTotems = "1", -- Неймплейты вражеских тотемов
    ShowClassColorInNameplate = "1", -- Нейплейты под цвет класса
	
	nameplateShowEnemyMinions = "1", -- Неймплейты враждебных NPC
	nameplateShowEnemyMinus = "1", -- Неймплейты незначительных NPC
	nameplateShowSelf = "0", -- Неймплейт для себя

	--[[ UNIT FRAMES ]]--
	
	fullSizeFocusFrame   = "1", -- Размер фрейма фокуса как у фрейма цели
--	showArenaEnemyFrames = "1",
	showTargetOfTarget   = "1", -- Цель цели
	showPartyBackground = "0",
    showPartyPets = "0", -- Петомцы группы
	
	--[[ UNIT NAMES ]]--
	
	UnitNameOwn = "0", -- Имя игрока
	UnitNameGuildTitle = "0", -- Гильдейское звание
	UnitNamePlayerGuild = "0", -- Название гильдии
	UnitNamePlayerPVPTitle = "0", -- PvP звание
	
	UnitNameFriendlyGuardianName = "0", -- Имена стражей союзников
	UnitNameFriendlyPetName = "0", -- Имена петомцев союзников
	UnitNameFriendlyPlayerName = "1",-- Имена союзников
	UnitNameFriendlyTotemName = "0", -- Имена тотемов союзников
	
	UnitNameEnemyPlayerName = "1", -- Имена врагов
	UnitNameEnemyPetName         = "1", -- Имена петомцев врагов
	UnitNameEnemyGuardianName    = "1", -- Имена стражей врагов
	UnitNameEnemyTotemName       = "1", -- Имена тотемов врагов
	
	UnitNameFriendlySpecialNPCName = "1", -- Quest NPCs
	UnitNameHostleNPC = "0", -- typo accurate
	UnitNameInteractiveNPC = "0",
	UnitNameNPC = "0", -- Имена НПЦ
	ShowQuestUnitCircles = "1",
	
	--[[ RAID PROFILES ]]--
	
	raidFramesDisplayAggroHighlight = "0", -- Индикатор угрозы рейда
	raidFramesDisplayClassColor = "1", -- Цвета классов
	raidFramesDisplayOnlyDispellableDebuffs = "1", -- Показать только рассеиваемые отрицательные эффекты
	raidFramesDisplayPowerBars = "0", -- Индикаторы ресурсов
--	raidFramesHealthText = 'none', -- Отображение здоровья
--	raidFramesHeight = "36", -- Высота рамки рейда
--	raidFramesPosition = , -- Позиция рамки рейда
--	raidFramesWidth = "72", -- Ширина рамки рейда
	raidOptionDisplayMainTankAndAssist = "1", -- Показать главного танка и наводчика
	raidOptionDisplayPets = "0", -- Показать питомцев
--	raidOptionIsShown = "1", 
--	raidOptionKeepGroupsTogether = "1", -- Рейдовый интерфейс для группы
--	raidOptionLocked = 'lock' -- 
	raidOptionShowBorders = "1", -- Показать граници
	raidOptionSortMode = 'role', -- Сортировка по роли

	--[[ CAMERA ]]--
	
	cameraDistanceMaxZoomFactor = "2.5",
	cameraSmoothStyle = "1",   -- Only horizontal when moving

	--[[ HELP ]]--
	
	scriptErrors  = "1", -- Ошибки сценариев LUA
	showTutorials = "0", -- Обучение

	--[[ MISCELLANEOUS ]]--
	
	addFriendInfoShown = "1",
	screenshotFormat   = "png", -- Формат скриншота
	screenshotQuality  = "10", -- Качество скриншота
	talentFrameShown   = "1",

	--[[ GRAPHICS ]]--
	
	ffxGlow = "0", -- full screen glow
	ffxDeath = "0", 
	groundEffectDist    = "100",
	groundEffectDensity = "128",
--	maxfps              = "30",
	maxfpsbk = "15",
	pathSmoothing = "1",
	uiscale = "1", -- Размер интерфейса
	useUiScale = "1", -- never wanted this before, but its behavior is different in 7.1
	violenceLevel = "5", -- min 0, max 5


}

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function()
	SetAutoDeclineGuildInvites(true)
	ShowAccountAchievements(true) -- show ONLY account achievements
	ConsoleExec("fixedfunction 1") -- disable "tunnel vision" glow effect (not a cvar)
	ConsoleExec("extShadowQuality 0") -- disable shadows

	for cvar, value in pairs(cvars) do
		local current = tostring(GetCVar(cvar))
		if current ~= value then
			--print("SetCVar", cvar, value)
			SetCVar(cvar, value)
		end
	end
end)

hooksecurefunc("SetCVar", function(k, v)
	local o = cvars[k]
	if o and tostring(v) ~= o then
		print("|cffff9f7fSetCVar|r", k, o, "|cffff9f7f==>|r", v)
		print("Cvars : Initialized")
	end
end)
