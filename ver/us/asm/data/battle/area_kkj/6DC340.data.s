.include "macro.inc"

.section .data

glabel D_802185A0_6DC340
.word D_80218718_6DC4B8, 0x00000006, 0x0000000A, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80219FC0_6DDD60, 0x00000001, D_802185A0_6DC340, D_80219F98_6DDD38, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80219FE8_6DDD88, D_80219F98_6DDD38, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80218600_6DC3A0
.word 0x00000001, 0x00610005, 0x00000000

glabel D_8021860C_6DC3AC
.word 0x00000001, 0x0061000C, 0x00000000

glabel D_80218618_6DC3B8
.word 0x00000001, 0x00000000, 0x00000000

glabel D_80218624_6DC3C4
.word 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000006, 0x00000000, 0x00000009, 0x00000000, 0x00000007, 0x00000000, 0x00000004, 0x00000000, 0x00000003, 0x00000000, 0x0000000B, 0x00000000, 0x00000005, 0x00000000, 0x0000000A, 0x00000000, 0x00000008, 0x00000000, 0x0000001F, 0x00000000, 0x00000020, 0x00000000, 0x00000025, 0x00000000, 0x00000022, 0x00000000, 0x00000024, 0x00000000, 0x00000023, 0x00000000, 0x00000021, 0x00000000, 0x00000026, 0x00000000, 0x00000027, 0x00000000, 0x00000029, 0x00000000, 0x00000000

glabel D_802186D0_6DC470
.word 0x00800000, 0x01000000, 0xF62300FF, D_80218600_6DC3A0, D_80218618_6DC3B8, 0x00000000, 0x00000000, 0x00F80000, 0x00000000, 0x00120001, 0x02000000, 0x000000FF, D_8021860C_6DC3AC, D_80218618_6DC3B8, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80218718_6DC4B8
.word 0x00000200, 0x0087630A, 0x00020000, D_802186D0_6DC470, D_80218740_6DC4E0, D_80218624_6DC3C4, 0x00000000, 0x00045000, 0x18200000, 0xF6140A14

glabel D_80218740_6DC4E0
.word 0x00000043, 0x00000003, BindTakeTurn, 0xFFFFFF81, D_802189A0_6DC740, 0x00000043, 0x00000003, BindIdle, 0xFFFFFF81, D_802187E8_6DC588, 0x00000043, 0x00000003, BindHandleEvent, 0xFFFFFF81, D_80218824_6DC5C4, 0x00000043, 0x00000003, BindNextTurn, 0xFFFFFF81, D_80219334_6DD0D4, 0x00000043, 0x00000003, SetBattleFlagBits2, 0x02000000, 0x00000001, 0x00000043, 0x00000004, SetActorVar, 0xFFFFFF81, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetActorVar, 0xFFFFFF81, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802187E4_6DC584
.word 0x00000000

glabel D_802187E8_6DC588
.word 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80218000_6DBDA0, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80218824_6DC5C4
.word 0x00000043, 0x00000003, UseIdleAnimation, 0xFFFFFF81, 0x00000000, 0x00000043, 0x00000003, GetLastEvent, 0xFFFFFF81, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000038, 0x0000001D, 0x00000001, 0x00000009, 0x0000001D, 0x00000001, 0x0000000A, 0x00000025, 0x00000002, 0xFE363C80, 0x00000001, 0x00000025, 0x00000002, 0xFE363C81, 0x0061000D, 0x00000046, 0x00000001, DoNormalHit, 0x00000046, 0x00000001, D_802195B8_6DD358, 0x00000020, 0x00000000, 0x0000001D, 0x00000001, 0x00000017, 0x0000001D, 0x00000001, 0x00000019, 0x00000025, 0x00000002, 0xFE363C80, 0x00000001, 0x00000025, 0x00000002, 0xFE363C81, 0x00610005, 0x00000046, 0x00000001, DoImmune, 0x00000046, 0x00000001, D_802195B8_6DD358, 0x00000020, 0x00000000, 0x00000016, 0x00000001, 0x00000020, 0x00000025, 0x00000002, 0xFE363C80, 0x00000001, 0x00000025, 0x00000002, 0xFE363C81, 0x0061000D, 0x00000046, 0x00000001, DoNormalHit, 0x00000008, 0x00000001, 0x0000000A, 0x00000046, 0x00000001, D_80219980_6DD720, 0x00000002, 0x00000000, 0x0000001C, 0x00000000, 0x00000023, 0x00000000, 0x00000043, 0x00000003, UseIdleAnimation, 0xFFFFFF81, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802189A0_6DC740
.word 0x00000043, 0x00000003, UseIdleAnimation, 0xFFFFFF81, 0x00000000, 0x00000043, 0x00000003, SetTargetActor, 0xFFFFFF81, 0x00000100, 0x00000043, 0x00000002, UseCamPreset, 0x0000000E, 0x00000043, 0x00000002, BattleCamTargetActor, 0xFFFFFF81, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000004, SetAnimation, 0xFFFFFF81, 0x00000001, 0x00610007, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, PlaySoundAtActor, 0xFFFFFF81, 0x0000207A, 0x00000043, 0x00000005, GetActorPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C80, 0x00000019, 0x00000027, 0x00000002, 0xFE363C81, 0x00000028, 0x00000043, 0x0000000F, PlayEffect, 0x00000013, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000001, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, UseCamPreset, 0x00000013, 0x00000043, 0x00000004, SetBattleCamTarget, 0x00000050, 0x0000005F, 0x0000000F, 0x00000043, 0x00000002, SetBattleCamZoom, 0x00000154, 0x00000043, 0x00000002, MoveBattleCamOver, 0x0000003C, 0x00000043, 0x00000003, PlaySoundAtActor, 0xFFFFFF81, 0x0000207B, 0x00000028, 0x00000002, 0xFE363C80, 0x0000000F, 0x00000027, 0x00000002, 0xFE363C81, 0x0000001E, 0x00000024, 0x00000002, 0xFE363C83, 0xFE363C81, 0x00000027, 0x00000002, 0xFE363C83, 0x00000014, 0x00000043, 0x0000000F, PlayEffect, 0x00000013, 0x00000001, 0xFE363C80, 0xFE363C83, 0xFE363C82, 0xF24A7E80, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x0000000F, PlayEffect, 0x00000013, 0x00000001, 0xFE363C80, 0xFE363C83, 0xFE363C82, 0xF24A7E80, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x0000000F, PlayEffect, 0x00000013, 0x00000001, 0xFE363C80, 0xFE363C83, 0xFE363C82, 0xF24A7E80, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x0000000F, PlayEffect, 0x00000013, 0x00000001, 0xFE363C80, 0xFE363C83, 0xFE363C82, 0xF24A7E80, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x0000000F, PlayEffect, 0x00000013, 0x00000001, 0xFE363C80, 0xFE363C83, 0xFE363C82, 0xF24A7E80, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000007, MakeEntity, 0x802EA10C, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000000, D_80000000, 0x00000024, 0x00000002, 0xFE363C89, 0xFE363C80, 0x00000043, 0x00000001, func_80218220_6DBFC0, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_8021833C_6DC0DC, 0x00000057, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0xFFFFFF81, 0x0000207C, 0x00000043, 0x00000005, b_area_kkj_GetEntityPosition, 0xFE363C89, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000005, MakeLerp, 0xFE363C83, 0x0000012C, 0x00000014, 0x00000001, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, func_802180B8_6DBE58, 0xFE363C89, 0xFE363C82, 0xFE363C80, 0xFE363C84, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000004, SetAnimation, 0xFFFFFF81, 0x00000001, 0x00610008, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, UseCamPreset, 0x00000013, 0x00000043, 0x00000004, SetBattleCamTarget, 0xFFFFFFB0, 0x00000025, 0x00000005, 0x00000043, 0x00000002, SetBattleCamZoom, 0x00000100, 0x00000043, 0x00000002, MoveBattleCamOver, 0x00000001, 0x00000043, 0x00000002, SetGoalToTarget, 0xFFFFFF81, 0x00000043, 0x00000005, GetGoalPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000058, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, AddBattleCamZoom, 0x00000064, 0x00000043, 0x00000002, MoveBattleCamOver, 0x0000000A, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000001, func_802183EC_6DC18C, 0x00000059, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0xFFFFFF81, 0x0000207D, 0x00000024, 0x00000002, 0xFE363C85, 0xFE363C81, 0x00000027, 0x00000002, 0xFE363C85, 0x000000C8, 0x00000043, 0x00000005, func_802180B8_6DBE58, 0xFE363C89, 0xFE363C80, 0xFE363C85, 0xFE363C82, 0x00000043, 0x00000005, b_area_kkj_GetEntityPosition, 0xFE363C89, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000005, MakeLerp, 0xFE363C85, 0xFE363C81, 0x00000014, 0x00000002, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, func_802180B8_6DBE58, 0xFE363C89, 0xFE363C82, 0xFE363C80, 0xFE363C84, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000001, func_8021849C_6DC23C, 0x00000058, 0x00000000, 0x00000043, 0x00000002, StartRumble, 0x00000005, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A7E80, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A8680, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A9280, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A8E80, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A8A80, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A8680, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A8280, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A7E80, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A7C80, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A7B4D, 0x00000059, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0xFFFFFF81, 0x00000001, 0x00610005, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000008, EnemyDamageTarget, 0xFFFFFF81, 0xFE363C80, 0x10000010, 0x00000000, 0x00000000, 0x00000004, 0x00000020, 0x00000024, 0x00000002, 0xFE363C8F, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C8F, 0x0000001D, 0x00000001, 0x00000000, 0x0000001D, 0x00000001, 0x00000002, 0x00000008, 0x00000001, 0x00000013, 0x00000043, 0x00000002, UseCamPreset, 0x00000002, 0x00000020, 0x00000000, 0x00000023, 0x00000000, 0x00000043, 0x00000003, GetLastDamage, 0x00000100, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x00000013, 0x00000043, 0x00000004, SetBattleCamTarget, 0x00000045, 0x0000000E, 0xFFFFFFEE, 0x00000043, 0x00000002, SetBattleCamZoom, 0x00000154, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x0000003E, 0x00000043, 0x00000002, MoveBattleCamOver, 0x00000014, 0x00000043, 0x00000002, FreezeBattleCam, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000056, 0x00000000, 0x00000043, 0x00000002, SetGoalToHome, 0xFFFFFF81, 0x00000043, 0x00000005, AddGoalPos, 0xFFFFFF81, 0x0000000A, 0x00000005, 0x00000000, 0x00000043, 0x00000005, FlyToGoal, 0xFFFFFF81, 0x00000006, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000006, ActorSpeak, 0x0013009A, 0xFFFFFF81, 0x00000001, 0x00610006, 0x00610005, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, FreezeBattleCam, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x00000002, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, UseIdleAnimation, 0xFFFFFF81, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80219334_6DD0D4
.word 0x00000043, 0x00000003, UseIdleAnimation, 0xFFFFFF81, 0x00000000, 0x00000043, 0x00000002, GetBattlePhase, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, GetActorVar, 0xFFFFFF81, 0x00000000, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x00000013, 0x00000043, 0x00000004, SetBattleCamTarget, 0x00000045, 0x0000000E, 0xFFFFFFEE, 0x00000043, 0x00000002, SetBattleCamZoom, 0x00000154, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x0000003E, 0x00000043, 0x00000002, MoveBattleCamOver, 0x00000014, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000006, ActorSpeak, 0x00130093, 0xFFFFFF81, 0x00000001, 0x00610006, 0x00610005, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, UseCamPreset, 0x00000013, 0x00000043, 0x00000004, SetBattleCamTarget, 0xFFFFFFC8, 0xFFFFFFF7, 0xFFFFFFEE, 0x00000043, 0x00000002, SetBattleCamZoom, 0x00000154, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x0000003E, 0x00000043, 0x00000002, MoveBattleCamOver, 0x00000001, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, ActorSpeak, 0x00130094, 0x00000100, 0x00000001, 0x0020000D, 0x00200008, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, UseCamPreset, 0x00000013, 0x00000043, 0x00000004, SetBattleCamTarget, 0xFFFFFFBE, 0xFFFFFFF7, 0xFFFFFFEE, 0x00000043, 0x00000002, SetBattleCamZoom, 0x00000154, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x0000003E, 0x00000043, 0x00000002, MoveBattleCamOver, 0x0000000A, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, ActorSpeak, 0x00130095, 0x00000000, 0x00000001, 0x000C0007, 0x000C0008, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, UseCamPreset, 0x00000002, 0x00000043, 0x00000004, AddActorVar, 0xFFFFFF81, 0x00000000, 0x00000001, 0x00000023, 0x00000000, 0x00000016, 0x00000001, 0x0000000C, 0x00000023, 0x00000000, 0x00000043, 0x00000003, UseIdleAnimation, 0xFFFFFF81, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802195B8_6DD358
.word 0x00000043, 0x00000002, func_8026BF48, 0x00000001, 0x00000043, 0x00000003, UseIdleAnimation, 0xFFFFFF81, 0x00000000, 0x00000043, 0x00000004, SetActorVar, 0xFFFFFF81, 0x00000001, 0x00000001, 0x00000043, 0x00000003, GetActorHP, 0xFFFFFF81, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, UseCamPreset, 0x00000013, 0x00000043, 0x00000004, SetBattleCamTarget, 0x00000045, 0x0000000E, 0xFFFFFFEE, 0x00000043, 0x00000002, SetBattleCamZoom, 0x00000154, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x0000003E, 0x00000043, 0x00000002, MoveBattleCamOver, 0x00000014, 0x00000043, 0x00000002, FreezeBattleCam, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000006, ActorSpeak, 0x00130097, 0xFFFFFF81, 0x00000001, 0x00610009, 0x00610005, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, FreezeBattleCam, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x00000002, 0x0000001D, 0x00000001, 0x00000009, 0x0000001D, 0x00000001, 0x00000008, 0x00000043, 0x00000002, UseCamPreset, 0x00000013, 0x00000043, 0x00000004, SetBattleCamTarget, 0x00000045, 0x0000000E, 0xFFFFFFEE, 0x00000043, 0x00000002, SetBattleCamZoom, 0x00000154, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x0000003E, 0x00000043, 0x00000002, MoveBattleCamOver, 0x00000014, 0x00000043, 0x00000002, FreezeBattleCam, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000006, ActorSpeak, 0x00130098, 0xFFFFFF81, 0x00000001, 0x0061000A, 0x00610005, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, FreezeBattleCam, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x00000002, 0x00000020, 0x00000000, 0x0000001D, 0x00000001, 0x00000007, 0x0000001D, 0x00000001, 0x00000006, 0x0000001D, 0x00000001, 0x00000005, 0x0000001D, 0x00000001, 0x00000004, 0x0000001D, 0x00000001, 0x00000003, 0x0000001D, 0x00000001, 0x00000002, 0x0000001D, 0x00000001, 0x00000001, 0x00000043, 0x00000004, GetActorVar, 0xFFFFFF81, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000002, 0x00000022, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x00000013, 0x00000043, 0x00000004, SetBattleCamTarget, 0x00000045, 0x0000000E, 0xFFFFFFEE, 0x00000043, 0x00000002, SetBattleCamZoom, 0x00000154, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x0000003E, 0x00000043, 0x00000002, MoveBattleCamOver, 0x00000014, 0x00000043, 0x00000002, FreezeBattleCam, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000006, ActorSpeak, 0x00130099, 0xFFFFFF81, 0x00000001, 0x00610006, 0x00610005, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, FreezeBattleCam, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x00000002, 0x00000043, 0x00000004, AddActorVar, 0xFFFFFF81, 0x00000000, 0x00000001, 0x00000020, 0x00000000, 0x00000023, 0x00000000, 0x00000043, 0x00000004, SetActorVar, 0xFFFFFF81, 0x00000001, 0x00000000, 0x00000043, 0x00000003, UseIdleAnimation, 0xFFFFFF81, 0x00000001, 0x00000043, 0x00000002, func_8026BF48, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80219980_6DD720
.word 0x00000043, 0x00000003, EnableIdleScript, 0xFFFFFF81, 0x00000000, 0x00000043, 0x00000002, func_8027D32C, 0xFFFFFF81, 0x00000043, 0x00000002, UseCamPreset, 0x0000000E, 0x00000043, 0x00000002, BattleCamTargetActor, 0xFFFFFF81, 0x00000043, 0x00000002, MoveBattleCamOver, 0x0000003C, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, SetAnimation, 0xFFFFFF81, 0x00000001, 0x00610002, 0x00000043, 0x00000005, GetActorPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C82, 0x00000001, 0x00000043, 0x00000006, SetPartPos, 0xFFFFFF81, 0x00000002, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPartFlagBits, 0xFFFFFF81, 0x00000002, 0x00000001, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0xFFFFFF81, 0x00000301, 0x00000043, 0x00000005, GetActorPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000043, 0x00000003, SetActorJumpGravity, 0xFFFFFF81, 0xF24A7DB4, 0x00000043, 0x00000005, SetGoalPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, JumpToGoal, 0xFFFFFF81, 0x0000000F, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0xFFFFFF81, 0x000020E4, 0x00000043, 0x00000002, UseCamPreset, 0x00000001, 0x00000043, 0x00000005, SetGoalPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, JumpToGoal, 0xFFFFFF81, 0x0000000A, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetGoalPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, JumpToGoal, 0xFFFFFF81, 0x00000005, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0xFFFFFF81, 0x000020E5, 0x00000043, 0x00000005, GetActorPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, ForceHomePos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, AddActorDecoration, 0xFFFFFF81, 0x00000001, 0x00000000, 0x00000003, 0x00000043, 0x00000004, SetAnimation, 0xFFFFFF81, 0x00000001, 0x00610003, 0x00000008, 0x00000001, 0x00000032, 0x00000043, 0x00000003, SetBattleFlagBits, 0x00060000, 0x00000001, 0x00000043, 0x00000004, SetActorFlagBits, 0xFFFFFF81, 0x00400000, 0x00000001, 0x00000043, 0x00000006, ActorSpeak, 0x0013009B, 0xFFFFFF81, 0x00000001, 0x00610003, 0x00610003, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, UseCamPreset, 0x00000002, 0x00000043, 0x00000002, MoveBattleCamOver, 0x0000003C, 0x00000008, 0x00000001, 0x00000028, 0x00000043, 0x00000003, SetBattleFlagBits, 0x00100000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80219CC0_6DDA60
.word 0xFFFFFFEA, 0x000000BE, 0xFFFFFFA5, 0xFFFFFFA8, 0x00000015, 0xFFFFFFA5, 0x0000003C, 0xFFFFFFFF, 0x000000BE, 0xFFFFFFA5, 0x00000058, 0x00000018, 0xFFFFFFA5, 0x0000000A, 0xFFFFFFBD, 0x000000BE, 0xFFFFFFA5, 0xFFFFFF86, 0x0000000A, 0xFFFFFFA5, 0x0000005A, 0x00000039, 0x000000BE, 0xFFFFFFA5, 0xFFFFFFFC, 0x00000011, 0xFFFFFFA5, 0x0000003C

glabel D_80219D30_6DDAD0
.word 0x00000003, 0x00000001, 0x00000000, 0x00000030, 0x00000001, D_80219CC0_6DDA60, 0x00000005, 0x00000001, 0x00000004, 0x00000033, 0x00000003, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000033, 0x00000003, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x0000000F, PlayEffect, 0x0000005E, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000001, 0x00000008, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000001, func_80218550_6DC2F0, 0x00000031, 0x00000001, 0xFE363C80, 0x00000008, 0x00000001, 0xFE363C80, 0x00000006, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80219E08_6DDBA8
.word 0xFFFFFF87, 0x00000021, 0xFFFFFF98, 0xFFFFFFE8, 0x00000029, 0xFFFFFF98, 0x00000005, 0x00000024, 0x00000029, 0xFFFFFF98, 0x00000080, 0x00000022, 0xFFFFFF98, 0x0000001E, 0x00000092, 0x00000001, 0x00000071, 0x00000026, 0xFFFFFFF1, 0x00000079, 0x00000005, 0xFFFFFFBE, 0xFFFFFFF6, 0x00000073, 0xFFFFFF65, 0x00000001, 0x00000061, 0x0000005A

glabel D_80219E78_6DDC18
.word 0x00000003, 0x00000001, 0x00000000, 0x00000030, 0x00000001, D_80219E08_6DDBA8, 0x00000005, 0x00000001, 0x00000004, 0x00000033, 0x00000003, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000033, 0x00000003, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x0000000F, PlayEffect, 0x0000005E, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000001, 0x00000005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000001, func_80218550_6DC2F0, 0x00000031, 0x00000001, 0xFE363C80, 0x00000008, 0x00000001, 0xFE363C80, 0x00000006, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80219F50_6DDCF0
.word 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000044, 0x00000001, D_80219D30_6DDAD0, 0x00000044, 0x00000001, D_80219E78_6DDC18, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80219F88_6DDD28
.word 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80219F98_6DDD38
.word D_8021A018_6DDDB8, D_8021A008_6DDDA8, D_80219FF8_6DDD98, D_80219F50_6DDCF0, D_80219F88_6DDD28, D_80219FF0_6DDD90, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80219FC0_6DDD60
.word 0x834A8381, 0x8362834E, 0x82CE82CE, 0x81698373, 0x815B8360, 0x81418365, 0x83428393, 0x834E82B9, 0x82F1816A, 0x00000000

glabel D_80219FE8_6DDD88
.word 0x6B70615F, 0x30350000

glabel D_80219FF0_6DDD90
.word 0x6B70615F, 0x62670000

glabel D_80219FF8_6DDD98
.word 0x6B6B6A5F, 0x62743032, 0x5F686974, 0x00000000

glabel D_8021A008_6DDDA8
.word 0x6B6B6A5F, 0x62743032, 0x5F736861, 0x70650000

glabel D_8021A018_6DDDB8
.word 0x6B6B6A5F, 0x74657800