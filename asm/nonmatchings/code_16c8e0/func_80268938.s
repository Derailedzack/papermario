.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80268938
/* 197218 80268938 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 19721C 8026893C 8C42C070 */  lw        $v0, %lo(gBattleStatus)($v0)
/* 197220 80268940 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 197224 80268944 30428000 */  andi      $v0, $v0, 0x8000
/* 197228 80268948 10400003 */  beqz      $v0, .L80268958
/* 19722C 8026894C AFBF0010 */   sw       $ra, 0x10($sp)
/* 197230 80268950 0C09A327 */  jal       func_80268C9C
/* 197234 80268954 00000000 */   nop      
.L80268958:
/* 197238 80268958 3C02802A */  lui       $v0, 0x802a
/* 19723C 8026895C 2442FBE0 */  addiu     $v0, $v0, -0x420
/* 197240 80268960 8443004A */  lh        $v1, 0x4a($v0)
/* 197244 80268964 2C620018 */  sltiu     $v0, $v1, 0x18
/* 197248 80268968 10400060 */  beqz      $v0, .L80268AEC
/* 19724C 8026896C 00031080 */   sll      $v0, $v1, 2
/* 197250 80268970 3C01802A */  lui       $at, 0x802a
/* 197254 80268974 00220821 */  addu      $at, $at, $v0
/* 197258 80268978 8C22D6A0 */  lw        $v0, -0x2960($at)
/* 19725C 8026897C 00400008 */  jr        $v0
/* 197260 80268980 00000000 */   nop      
/* 197264 80268984 0C0AA48D */  jal       func_802A9234
/* 197268 80268988 00000000 */   nop      
/* 19726C 8026898C 0809A2BB */  j         .L80268AEC
/* 197270 80268990 00000000 */   nop      
/* 197274 80268994 0C0AA4DB */  jal       func_802A936C
/* 197278 80268998 00000000 */   nop      
/* 19727C 8026899C 0809A2BB */  j         .L80268AEC
/* 197280 802689A0 00000000 */   nop      
/* 197284 802689A4 0C0AA4DE */  jal       func_802A9378
/* 197288 802689A8 00000000 */   nop      
/* 19728C 802689AC 0809A2BB */  j         .L80268AEC
/* 197290 802689B0 00000000 */   nop      
/* 197294 802689B4 0C0AA4B7 */  jal       func_802A92DC
/* 197298 802689B8 00000000 */   nop      
/* 19729C 802689BC 0809A2BB */  j         .L80268AEC
/* 1972A0 802689C0 00000000 */   nop      
/* 1972A4 802689C4 0C0AA4BC */  jal       func_802A92F0
/* 1972A8 802689C8 00000000 */   nop      
/* 1972AC 802689CC 0809A2BB */  j         .L80268AEC
/* 1972B0 802689D0 00000000 */   nop      
/* 1972B4 802689D4 0C0AA47E */  jal       func_802A91F8
/* 1972B8 802689D8 00000000 */   nop      
/* 1972BC 802689DC 0809A2BB */  j         .L80268AEC
/* 1972C0 802689E0 00000000 */   nop      
/* 1972C4 802689E4 0C0AA48A */  jal       func_802A9228
/* 1972C8 802689E8 00000000 */   nop      
/* 1972CC 802689EC 0809A2BB */  j         .L80268AEC
/* 1972D0 802689F0 00000000 */   nop      
/* 1972D4 802689F4 0C0AA4A3 */  jal       func_802A928C
/* 1972D8 802689F8 00000000 */   nop      
/* 1972DC 802689FC 0809A2BB */  j         .L80268AEC
/* 1972E0 80268A00 00000000 */   nop      
/* 1972E4 80268A04 0C0AA4A5 */  jal       func_802A9294
/* 1972E8 80268A08 00000000 */   nop      
/* 1972EC 80268A0C 0809A2BB */  j         .L80268AEC
/* 1972F0 80268A10 00000000 */   nop      
/* 1972F4 80268A14 0C0AA4A3 */  jal       func_802A928C
/* 1972F8 80268A18 00000000 */   nop      
/* 1972FC 80268A1C 0809A2BB */  j         .L80268AEC
/* 197300 80268A20 00000000 */   nop      
/* 197304 80268A24 0C0AA4A3 */  jal       func_802A928C
/* 197308 80268A28 00000000 */   nop      
/* 19730C 80268A2C 0809A2BB */  j         .L80268AEC
/* 197310 80268A30 00000000 */   nop      
/* 197314 80268A34 0C0AA4B5 */  jal       func_802A92D4
/* 197318 80268A38 00000000 */   nop      
/* 19731C 80268A3C 0809A2BB */  j         .L80268AEC
/* 197320 80268A40 00000000 */   nop      
/* 197324 80268A44 0C0AA49E */  jal       func_802A9278
/* 197328 80268A48 00000000 */   nop      
/* 19732C 80268A4C 0809A2BB */  j         .L80268AEC
/* 197330 80268A50 00000000 */   nop      
/* 197334 80268A54 0C0AA4A5 */  jal       func_802A9294
/* 197338 80268A58 00000000 */   nop      
/* 19733C 80268A5C 0809A2BB */  j         .L80268AEC
/* 197340 80268A60 00000000 */   nop      
/* 197344 80268A64 0C0AA482 */  jal       func_802A9208
/* 197348 80268A68 00000000 */   nop      
/* 19734C 80268A6C 0809A2BB */  j         .L80268AEC
/* 197350 80268A70 00000000 */   nop      
/* 197354 80268A74 0C0AA4C4 */  jal       func_802A9310
/* 197358 80268A78 00000000 */   nop      
/* 19735C 80268A7C 0809A2BB */  j         .L80268AEC
/* 197360 80268A80 00000000 */   nop      
/* 197364 80268A84 0C0AA4A8 */  jal       func_802A92A0
/* 197368 80268A88 00000000 */   nop      
/* 19736C 80268A8C 0809A2BB */  j         .L80268AEC
/* 197370 80268A90 00000000 */   nop      
/* 197374 80268A94 0C0AA4A6 */  jal       func_802A9298
/* 197378 80268A98 00000000 */   nop      
/* 19737C 80268A9C 0809A2BB */  j         .L80268AEC
/* 197380 80268AA0 00000000 */   nop      
/* 197384 80268AA4 0C0AA495 */  jal       func_802A9254
/* 197388 80268AA8 00000000 */   nop      
/* 19738C 80268AAC 0809A2BB */  j         .L80268AEC
/* 197390 80268AB0 00000000 */   nop      
/* 197394 80268AB4 0C0AA4A8 */  jal       func_802A92A0
/* 197398 80268AB8 00000000 */   nop      
/* 19739C 80268ABC 0809A2BB */  j         .L80268AEC
/* 1973A0 80268AC0 00000000 */   nop      
/* 1973A4 80268AC4 0C0AA4A6 */  jal       func_802A9298
/* 1973A8 80268AC8 00000000 */   nop      
/* 1973AC 80268ACC 0809A2BB */  j         .L80268AEC
/* 1973B0 80268AD0 00000000 */   nop      
/* 1973B4 80268AD4 0C0AA523 */  jal       func_802A948C
/* 1973B8 80268AD8 00000000 */   nop      
/* 1973BC 80268ADC 0809A2BB */  j         .L80268AEC
/* 1973C0 80268AE0 00000000 */   nop      
/* 1973C4 80268AE4 0C0AA48A */  jal       func_802A9228
/* 1973C8 80268AE8 00000000 */   nop      
.L80268AEC:
/* 1973CC 80268AEC 8FBF0010 */  lw        $ra, 0x10($sp)
/* 1973D0 80268AF0 03E00008 */  jr        $ra
/* 1973D4 80268AF4 27BD0018 */   addiu    $sp, $sp, 0x18
