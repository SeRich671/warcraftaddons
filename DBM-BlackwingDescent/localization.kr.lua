﻿if GetLocale() ~= "koKR" then return end
local L

-------------------------------
--  Dark Iron Golem Council  --
-------------------------------
L = DBM:GetModLocalization(169)

L:SetWarningLocalization({
	SpecWarnActivated			= "%s 활성화 - 대상 전환!",
	specWarnGenerator			= "%s 보스가 동력 증폭장 영향을 받음!"
})

L:SetTimerLocalization({
	timerShadowConductorCast	= "암흑 전도체 변환",
	timerArcaneLockout			= "비전 파괴자 대기시간",
	timerArcaneBlowbackCast		= "폭발!",
	timerNefAblity				= "스킬 강화 대기시간"
})

L:SetOptionLocalization({
	timerShadowConductorCast	= "$spell:92053 시전 바 표시",
	timerArcaneLockout			= "$spell:79710 대기시간 바 표시",
	timerArcaneBlowbackCast		= "$spell:91879 시전 바 표시",
	timerNefAblity				= "영웅 난이도에서 골렘 스킬 강화 대기시간 바 표시",
	SpecWarnActivated			= "새로운 보스가 활성화 될 때 대상 전환 특수 경고 보기",
	specWarnGenerator			= "보스가 $spell:91557 주문의 영향을 받은 경우 특수 경고 보기",
	AcquiringTargetIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(79501),
	ConductorIcon				= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(79888),
	ShadowConductorIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(92053),
	SetIconOnActivated			= "활성화된 보스에게 전술 목표 아이콘 설정하기"
})

L:SetMiscLocalization({
	YellTargetLock				= "어둠의 휘감기! 제 주변에서 빠지세요!"
})

--------------
--  Magmaw  --
--------------
L = DBM:GetModLocalization(170)

L:SetWarningLocalization({
	SpecWarnInferno	= "곧 해골 소환 - 바닥 확인!",
})

L:SetOptionLocalization({
	SpecWarnInferno	= "$spell:92154 사전 특수 경고 보기(~4초 전)",
	RangeFrame		= "2 단계에서 거리 프레임 보기 (5m)"
})

L:SetMiscLocalization({
	Slump			= "기울입니다!",
	HeadExposed		= "노출되었습니다!",
	YellPhase2		= "이런 곤란할 데가! 이러다간 내 용암 벌레가 정말 질 수도 있겠군! 그럼... 내가 상황을 좀 바꿔 볼까?" --"Inconceivable! You may actually defeat my lava worm! Perhaps I can help... tip the scales."
})

-----------------
--  Atramedes  --
-----------------
L = DBM:GetModLocalization(171)

L:SetOptionLocalization({
	InfoFrame				= "$journal:3072 정보 프레임 보기",
	TrackingIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(78092)
})

L:SetMiscLocalization({
	NefAdd					= "아트라메데스, 적은 바로 저기에 있다!",
	Airphase				= "그래, 도망가라! 발을 디딜 때마다 맥박은 빨라지지. 점점 더 크게 울리는구나... 귀청이 터질 것만 같군! 넌 달아날 수 없다!"
})

-----------------
--  Chimaeron  --
-----------------
L = DBM:GetModLocalization(172)

L:SetOptionLocalization({
	RangeFrame		= "거리 프레임 보기 (6m)",
	SetIconOnSlime	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(82935),
	InfoFrame		= "체력 정보 프레임 보기"
})

L:SetMiscLocalization({
	HealthInfo	= "체력 정보"
})

----------------
--  Maloriak  --
----------------
L = DBM:GetModLocalization(173)

L:SetWarningLocalization({
	WarnPhase			= "%s 단계"
})

L:SetTimerLocalization({
	TimerPhase		= "다음 단계"
})

L:SetOptionLocalization({
	WarnPhase			= "단계 전환 알림 보기",
	TimerPhase			= "다음 단계 전환 바 표시",
	RangeFrame			= "푸른색 단계에서 거리 프레임 보기 (6m)",	
	SetTextures			= "암흑 단계에서 텍스쳐 투영 효과 자동으로 끄기\n(암흑 단계가 종료 되면 원상태로 복구됨)",
	FlashFreezeIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(77699),
	BitingChillIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(77760),
	ConsumingFlamesIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(77786)
})

L:SetMiscLocalization({
	YellRed			= "붉은색|r 약병을 가마솥",
	YellBlue		= "푸른색|r 약병을 가마솥",
	YellGreen		= "초록색|r 약병을 가마솥",
	YellDark		= "암흑|r 마법을 사용합니다!"
})

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization(174)

L:SetWarningLocalization({
	OnyTailSwipe			= "꼬리 채찍 (오닉시아)",
	NefTailSwipe			= "꼬리 채찍 (네파리안)",
	OnyBreath				= "암흑불길 숨결 (오닉시아)",
	NefBreath				= "암흑불길 숨결 (네파리안)",
	specWarnShadowblazeSoon	= "%s",
	warnShadowblazeSoon		= "%s"
})

L:SetTimerLocalization({
	timerNefLanding		= "네파리안 착지",
	OnySwipeTimer		= "오닉 꼬리 채찍 대기시간",
	NefSwipeTimer		= "네파 꼬리 채찍 대기시간",
	OnyBreathTimer		= "오닉 브레스 대기시간",
	NefBreathTimer		= "네파 브레스 대기시간"
})

L:SetOptionLocalization({
	OnyTailSwipe			= "오닉시아의 $spell:77827 알림 보기",
	NefTailSwipe			= "네파리안의 $spell:77827 알림 보기",
	OnyBreath				= "오닉시아의 $spell:77826 알림 보기",
	NefBreath				= "네파리안의 $spell:77826 알림 보기",
	specWarnCinderMove		= "$spell:79339 약화 효과가 5초 남았을 때 특수 경고 보기(이동)",
	warnShadowblazeSoon		= "$spell:81031 사전 알림 보기 (~5초 전/정확성을 위해 동기화 후에만 작동됨)",
	specWarnShadowblazeSoon	= "$spell:81031 사전 특수 경고 보기\n(처음에는 5초 전에 알림. 동기화 후에는 1초 전에 알림)",
	timerNefLanding			= "네파리안 착지 바 표시",
	OnySwipeTimer			= "오닉시아의 $spell:77827 대기시간 바 표시",
	NefSwipeTimer			= "네파리안의 $spell:77827 대기시간 바 표시",
	OnyBreathTimer			= "오닉시아의 $spell:77826 대기시간 바 표시",
	NefBreathTimer			= "네파리안의 $spell:77826 대기시간 바 표시",
	InfoFrame				= "$journal:3284 정보 프레임 보기",
	SetWater				= "전투 시작시 수면 자동 시점 옵션을 자동으로 끄기\n(전투가 종료 되면 원상태로 복구됨)",
	TankArrow				= "살아난 뼈다귀 전사 탱커 방향으로 DBM 화살표 보기\n(한 명의 탱커를 사용하는 경우에만 정상 작동)",--npc 41918
	SetIconOnCinder			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(79339),
	RangeFrame				= "$spell:79339 주문의 영향을 받은 경우 거리 프레임 (10 m) 보기\n(대상자는 범위내 모든 사람 보임. 대상자가 아닌 경우 대상자와 아이콘만 보임)"
})

L:SetMiscLocalization({
	NefAoe				= "전기가 튀며 파지직하는 소리가 납니다!",
	YellPhase2			= "저주받을 필멸자들! 내 소중한 작품을 이렇게 망치다니! 쓴맛을 봐야 정신을 차리겠군!",
	YellPhase3			= "품위있는 집주인답게 행동하려 했건만, 네놈들이 도무지 죽질 않는군! 겉치레는 이제 집어치우자고. 그냥 모두 없애 버리겠어!", -- "I have tried to be an accommodating host, but you simply will not die! Time to throw all pretense aside and just... KILL YOU ALL!",
	YellShadowBlaze		= "살을 재로 만들어 주마!",
	ShadowBlazeExact	= "%d초 후 암흑불길 불똥!",
	ShadowBlazeEstimate	= "약 5초 후 암흑불길 불똥!"
})

-------------------------------
--  Blackwing Descent Trash  --
-------------------------------
L = DBM:GetModLocalization("BWDTrash")

L:SetGeneralLocalization({
	name = "검은날개 강림지 일반몹"
})
