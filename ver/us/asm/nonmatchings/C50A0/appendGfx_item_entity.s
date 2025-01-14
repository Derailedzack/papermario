.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel appendGfx_item_entity
/* C88A4 801321A4 27BDFEB8 */  addiu     $sp, $sp, -0x148
/* C88A8 801321A8 AFB3012C */  sw        $s3, 0x12c($sp)
/* C88AC 801321AC 0080982D */  daddu     $s3, $a0, $zero
/* C88B0 801321B0 AFB40130 */  sw        $s4, 0x130($sp)
/* C88B4 801321B4 AFBF013C */  sw        $ra, 0x13c($sp)
/* C88B8 801321B8 AFB60138 */  sw        $s6, 0x138($sp)
/* C88BC 801321BC AFB50134 */  sw        $s5, 0x134($sp)
/* C88C0 801321C0 AFB20128 */  sw        $s2, 0x128($sp)
/* C88C4 801321C4 AFB10124 */  sw        $s1, 0x124($sp)
/* C88C8 801321C8 AFB00120 */  sw        $s0, 0x120($sp)
/* C88CC 801321CC F7B40140 */  sdc1      $f20, 0x140($sp)
/* C88D0 801321D0 8E640000 */  lw        $a0, ($s3)
/* C88D4 801321D4 3C020808 */  lui       $v0, 0x808
/* C88D8 801321D8 00821024 */  and       $v0, $a0, $v0
/* C88DC 801321DC 10400025 */  beqz      $v0, .L80132274
/* C88E0 801321E0 241400FF */   addiu    $s4, $zero, 0xff
/* C88E4 801321E4 3C020008 */  lui       $v0, 8
/* C88E8 801321E8 00821024 */  and       $v0, $a0, $v0
/* C88EC 801321EC 1040000C */  beqz      $v0, .L80132220
/* C88F0 801321F0 3C038080 */   lui      $v1, 0x8080
/* C88F4 801321F4 9262002F */  lbu       $v0, 0x2f($s3)
/* C88F8 801321F8 00540018 */  mult      $v0, $s4
/* C88FC 801321FC 00001012 */  mflo      $v0
/* C8900 80132200 34638081 */  ori       $v1, $v1, 0x8081
/* C8904 80132204 00000000 */  nop
/* C8908 80132208 00430018 */  mult      $v0, $v1
/* C890C 8013220C 00001810 */  mfhi      $v1
/* C8910 80132210 00621821 */  addu      $v1, $v1, $v0
/* C8914 80132214 000319C3 */  sra       $v1, $v1, 7
/* C8918 80132218 000217C3 */  sra       $v0, $v0, 0x1f
/* C891C 8013221C 0062A023 */  subu      $s4, $v1, $v0
.L80132220:
/* C8920 80132220 3C020800 */  lui       $v0, 0x800
/* C8924 80132224 00821024 */  and       $v0, $a0, $v0
/* C8928 80132228 10400012 */  beqz      $v0, .L80132274
/* C892C 8013222C 27A40118 */   addiu    $a0, $sp, 0x118
/* C8930 80132230 27A50119 */  addiu     $a1, $sp, 0x119
/* C8934 80132234 27A6011A */  addiu     $a2, $sp, 0x11a
/* C8938 80132238 0C046FA0 */  jal       get_background_color_blend
/* C893C 8013223C 27A7011B */   addiu    $a3, $sp, 0x11b
/* C8940 80132240 93A3011B */  lbu       $v1, 0x11b($sp)
/* C8944 80132244 240200FF */  addiu     $v0, $zero, 0xff
/* C8948 80132248 00431023 */  subu      $v0, $v0, $v1
/* C894C 8013224C 02820018 */  mult      $s4, $v0
/* C8950 80132250 00001012 */  mflo      $v0
/* C8954 80132254 3C038080 */  lui       $v1, 0x8080
/* C8958 80132258 34638081 */  ori       $v1, $v1, 0x8081
/* C895C 8013225C 00430018 */  mult      $v0, $v1
/* C8960 80132260 00001810 */  mfhi      $v1
/* C8964 80132264 00621821 */  addu      $v1, $v1, $v0
/* C8968 80132268 000319C3 */  sra       $v1, $v1, 7
/* C896C 8013226C 000217C3 */  sra       $v0, $v0, 0x1f
/* C8970 80132270 0062A023 */  subu      $s4, $v1, $v0
.L80132274:
/* C8974 80132274 8E620000 */  lw        $v0, ($s3)
/* C8978 80132278 3C030004 */  lui       $v1, 4
/* C897C 8013227C 00431024 */  and       $v0, $v0, $v1
/* C8980 80132280 14400002 */  bnez      $v0, .L8013228C
/* C8984 80132284 2410FFFD */   addiu    $s0, $zero, -3
/* C8988 80132288 2410FFFE */  addiu     $s0, $zero, -2
.L8013228C:
/* C898C 8013228C 86630018 */  lh        $v1, 0x18($s3)
/* C8990 80132290 24020157 */  addiu     $v0, $zero, 0x157
/* C8994 80132294 10620005 */  beq       $v1, $v0, .L801322AC
/* C8998 80132298 24020159 */   addiu    $v0, $zero, 0x159
/* C899C 8013229C 10620003 */  beq       $v1, $v0, .L801322AC
/* C89A0 801322A0 24020156 */   addiu    $v0, $zero, 0x156
/* C89A4 801322A4 14620005 */  bne       $v1, $v0, .L801322BC
/* C89A8 801322A8 00000000 */   nop
.L801322AC:
/* C89AC 801322AC 3C013F80 */  lui       $at, 0x3f80
/* C89B0 801322B0 44810000 */  mtc1      $at, $f0
/* C89B4 801322B4 00000000 */  nop
/* C89B8 801322B8 E6600030 */  swc1      $f0, 0x30($s3)
.L801322BC:
/* C89BC 801322BC 3C03800A */  lui       $v1, %hi(gCurrentCamID)
/* C89C0 801322C0 8463A634 */  lh        $v1, %lo(gCurrentCamID)($v1)
/* C89C4 801322C4 3C014334 */  lui       $at, 0x4334
/* C89C8 801322C8 44816000 */  mtc1      $at, $f12
/* C89CC 801322CC 00031080 */  sll       $v0, $v1, 2
/* C89D0 801322D0 00431021 */  addu      $v0, $v0, $v1
/* C89D4 801322D4 00021080 */  sll       $v0, $v0, 2
/* C89D8 801322D8 00431023 */  subu      $v0, $v0, $v1
/* C89DC 801322DC 000218C0 */  sll       $v1, $v0, 3
/* C89E0 801322E0 00431021 */  addu      $v0, $v0, $v1
/* C89E4 801322E4 000210C0 */  sll       $v0, $v0, 3
/* C89E8 801322E8 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* C89EC 801322EC 00220821 */  addu      $at, $at, $v0
/* C89F0 801322F0 C4201DEC */  lwc1      $f0, %lo(gCameras+0x6C)($at)
/* C89F4 801322F4 0C00A6C9 */  jal       clamp_angle
/* C89F8 801322F8 46006301 */   sub.s    $f12, $f12, $f0
/* C89FC 801322FC 27B20058 */  addiu     $s2, $sp, 0x58
/* C8A00 80132300 0240202D */  daddu     $a0, $s2, $zero
/* C8A04 80132304 C664000C */  lwc1      $f4, 0xc($s3)
/* C8A08 80132308 44901000 */  mtc1      $s0, $f2
/* C8A0C 8013230C 00000000 */  nop
/* C8A10 80132310 468010A0 */  cvt.s.w   $f2, $f2
/* C8A14 80132314 46022100 */  add.s     $f4, $f4, $f2
/* C8A18 80132318 8E650008 */  lw        $a1, 8($s3)
/* C8A1C 8013231C 8E670010 */  lw        $a3, 0x10($s3)
/* C8A20 80132320 44062000 */  mfc1      $a2, $f4
/* C8A24 80132324 0C019E40 */  jal       guTranslateF
/* C8A28 80132328 46000506 */   mov.s    $f20, $f0
/* C8A2C 8013232C 27B10098 */  addiu     $s1, $sp, 0x98
/* C8A30 80132330 4405A000 */  mfc1      $a1, $f20
/* C8A34 80132334 44800000 */  mtc1      $zero, $f0
/* C8A38 80132338 3C073F80 */  lui       $a3, 0x3f80
/* C8A3C 8013233C 44060000 */  mfc1      $a2, $f0
/* C8A40 80132340 0220202D */  daddu     $a0, $s1, $zero
/* C8A44 80132344 0C019EC8 */  jal       guRotateF
/* C8A48 80132348 AFA60010 */   sw       $a2, 0x10($sp)
/* C8A4C 8013234C 8E620000 */  lw        $v0, ($s3)
/* C8A50 80132350 30424000 */  andi      $v0, $v0, 0x4000
/* C8A54 80132354 1040000A */  beqz      $v0, .L80132380
/* C8A58 80132358 27B000D8 */   addiu    $s0, $sp, 0xd8
/* C8A5C 8013235C 8E650030 */  lw        $a1, 0x30($s3)
/* C8A60 80132360 0200202D */  daddu     $a0, $s0, $zero
/* C8A64 80132364 00A0302D */  daddu     $a2, $a1, $zero
/* C8A68 80132368 0C019DF0 */  jal       guScaleF
/* C8A6C 8013236C 00A0382D */   daddu    $a3, $a1, $zero
/* C8A70 80132370 0220202D */  daddu     $a0, $s1, $zero
/* C8A74 80132374 0200282D */  daddu     $a1, $s0, $zero
/* C8A78 80132378 0C019D80 */  jal       guMtxCatF
/* C8A7C 8013237C 0220302D */   daddu    $a2, $s1, $zero
.L80132380:
/* C8A80 80132380 0220202D */  daddu     $a0, $s1, $zero
/* C8A84 80132384 0240282D */  daddu     $a1, $s2, $zero
/* C8A88 80132388 0C019D80 */  jal       guMtxCatF
/* C8A8C 8013238C 0240302D */   daddu    $a2, $s2, $zero
/* C8A90 80132390 0240202D */  daddu     $a0, $s2, $zero
/* C8A94 80132394 0C019D40 */  jal       guMtxF2L
/* C8A98 80132398 27A50018 */   addiu    $a1, $sp, 0x18
/* C8A9C 8013239C 3C020001 */  lui       $v0, 1
/* C8AA0 801323A0 34421630 */  ori       $v0, $v0, 0x1630
/* C8AA4 801323A4 27A70018 */  addiu     $a3, $sp, 0x18
/* C8AA8 801323A8 0240282D */  daddu     $a1, $s2, $zero
/* C8AAC 801323AC 3C038007 */  lui       $v1, %hi(gMatrixListPos)
/* C8AB0 801323B0 946341F0 */  lhu       $v1, %lo(gMatrixListPos)($v1)
/* C8AB4 801323B4 3C04800A */  lui       $a0, %hi(gDisplayContext)
/* C8AB8 801323B8 8C84A674 */  lw        $a0, %lo(gDisplayContext)($a0)
/* C8ABC 801323BC 00031980 */  sll       $v1, $v1, 6
/* C8AC0 801323C0 00832021 */  addu      $a0, $a0, $v1
/* C8AC4 801323C4 00822021 */  addu      $a0, $a0, $v0
.L801323C8:
/* C8AC8 801323C8 8CF50000 */  lw        $s5, ($a3)
/* C8ACC 801323CC 8CF60004 */  lw        $s6, 4($a3)
/* C8AD0 801323D0 8CF80008 */  lw        $t8, 8($a3)
/* C8AD4 801323D4 8CF9000C */  lw        $t9, 0xc($a3)
/* C8AD8 801323D8 AC950000 */  sw        $s5, ($a0)
/* C8ADC 801323DC AC960004 */  sw        $s6, 4($a0)
/* C8AE0 801323E0 AC980008 */  sw        $t8, 8($a0)
/* C8AE4 801323E4 AC99000C */  sw        $t9, 0xc($a0)
/* C8AE8 801323E8 24E70010 */  addiu     $a3, $a3, 0x10
/* C8AEC 801323EC 14E5FFF6 */  bne       $a3, $a1, .L801323C8
/* C8AF0 801323F0 24840010 */   addiu    $a0, $a0, 0x10
/* C8AF4 801323F4 3C02DA38 */  lui       $v0, 0xda38
/* C8AF8 801323F8 34420002 */  ori       $v0, $v0, 2
/* C8AFC 801323FC 3C050001 */  lui       $a1, 1
/* C8B00 80132400 3C09800A */  lui       $t1, %hi(gMasterGfxPos)
/* C8B04 80132404 2529A66C */  addiu     $t1, $t1, %lo(gMasterGfxPos)
/* C8B08 80132408 34A51630 */  ori       $a1, $a1, 0x1630
/* C8B0C 8013240C 3C078007 */  lui       $a3, %hi(gMatrixListPos)
/* C8B10 80132410 24E741F0 */  addiu     $a3, $a3, %lo(gMatrixListPos)
/* C8B14 80132414 8D280000 */  lw        $t0, ($t1)
/* C8B18 80132418 94E40000 */  lhu       $a0, ($a3)
/* C8B1C 8013241C 0100302D */  daddu     $a2, $t0, $zero
/* C8B20 80132420 25080008 */  addiu     $t0, $t0, 8
/* C8B24 80132424 3083FFFF */  andi      $v1, $a0, 0xffff
/* C8B28 80132428 00031980 */  sll       $v1, $v1, 6
/* C8B2C 8013242C 00651821 */  addu      $v1, $v1, $a1
/* C8B30 80132430 AD280000 */  sw        $t0, ($t1)
/* C8B34 80132434 ACC20000 */  sw        $v0, ($a2)
/* C8B38 80132438 3C02800A */  lui       $v0, %hi(gDisplayContext)
/* C8B3C 8013243C 8C42A674 */  lw        $v0, %lo(gDisplayContext)($v0)
/* C8B40 80132440 3C058015 */  lui       $a1, %hi(D_80151328)
/* C8B44 80132444 8CA51328 */  lw        $a1, %lo(D_80151328)($a1)
/* C8B48 80132448 00431021 */  addu      $v0, $v0, $v1
/* C8B4C 8013244C ACC20004 */  sw        $v0, 4($a2)
/* C8B50 80132450 94A20000 */  lhu       $v0, ($a1)
/* C8B54 80132454 24840001 */  addiu     $a0, $a0, 1
/* C8B58 80132458 10400009 */  beqz      $v0, .L80132480
/* C8B5C 8013245C A4E40000 */   sh       $a0, ($a3)
/* C8B60 80132460 25020008 */  addiu     $v0, $t0, 8
/* C8B64 80132464 AD220000 */  sw        $v0, ($t1)
/* C8B68 80132468 3C02DE00 */  lui       $v0, 0xde00
/* C8B6C 8013246C AD020000 */  sw        $v0, ($t0)
/* C8B70 80132470 3C028015 */  lui       $v0, %hi(D_8014BBD8)
/* C8B74 80132474 2442BBD8 */  addiu     $v0, $v0, %lo(D_8014BBD8)
/* C8B78 80132478 0804C927 */  j         .L8013249C
/* C8B7C 8013247C AD020004 */   sw       $v0, 4($t0)
.L80132480:
/* C8B80 80132480 25020008 */  addiu     $v0, $t0, 8
/* C8B84 80132484 AD220000 */  sw        $v0, ($t1)
/* C8B88 80132488 3C02DE00 */  lui       $v0, 0xde00
/* C8B8C 8013248C AD020000 */  sw        $v0, ($t0)
/* C8B90 80132490 3C028015 */  lui       $v0, %hi(D_8014B870)
/* C8B94 80132494 2442B870 */  addiu     $v0, $v0, %lo(D_8014B870)
/* C8B98 80132498 AD020004 */  sw        $v0, 4($t0)
.L8013249C:
/* C8B9C 8013249C 3C03D9FD */  lui       $v1, 0xd9fd
/* C8BA0 801324A0 3C08800A */  lui       $t0, %hi(gMasterGfxPos)
/* C8BA4 801324A4 2508A66C */  addiu     $t0, $t0, %lo(gMasterGfxPos)
/* C8BA8 801324A8 8D070000 */  lw        $a3, ($t0)
/* C8BAC 801324AC 3463F9FF */  ori       $v1, $v1, 0xf9ff
/* C8BB0 801324B0 00E0102D */  daddu     $v0, $a3, $zero
/* C8BB4 801324B4 24E70008 */  addiu     $a3, $a3, 8
/* C8BB8 801324B8 AD070000 */  sw        $a3, ($t0)
/* C8BBC 801324BC AC430000 */  sw        $v1, ($v0)
/* C8BC0 801324C0 AC400004 */  sw        $zero, 4($v0)
/* C8BC4 801324C4 24E20008 */  addiu     $v0, $a3, 8
/* C8BC8 801324C8 AD020000 */  sw        $v0, ($t0)
/* C8BCC 801324CC 3C02DE00 */  lui       $v0, 0xde00
/* C8BD0 801324D0 ACE20000 */  sw        $v0, ($a3)
/* C8BD4 801324D4 3C028015 */  lui       $v0, %hi(D_8014C620)
/* C8BD8 801324D8 2442C620 */  addiu     $v0, $v0, %lo(D_8014C620)
/* C8BDC 801324DC ACE20004 */  sw        $v0, 4($a3)
/* C8BE0 801324E0 8E620000 */  lw        $v0, ($s3)
/* C8BE4 801324E4 3C030808 */  lui       $v1, 0x808
/* C8BE8 801324E8 00431024 */  and       $v0, $v0, $v1
/* C8BEC 801324EC 10400025 */  beqz      $v0, .L80132584
/* C8BF0 801324F0 00000000 */   nop
/* C8BF4 801324F4 3C028015 */  lui       $v0, %hi(D_80151328)
/* C8BF8 801324F8 8C421328 */  lw        $v0, %lo(D_80151328)($v0)
/* C8BFC 801324FC 94420000 */  lhu       $v0, ($v0)
/* C8C00 80132500 10400009 */  beqz      $v0, .L80132528
/* C8C04 80132504 3C04E200 */   lui      $a0, 0xe200
/* C8C08 80132508 3484001C */  ori       $a0, $a0, 0x1c
/* C8C0C 8013250C 3C030C18 */  lui       $v1, 0xc18
/* C8C10 80132510 34634348 */  ori       $v1, $v1, 0x4348
/* C8C14 80132514 24E20010 */  addiu     $v0, $a3, 0x10
/* C8C18 80132518 AD020000 */  sw        $v0, ($t0)
/* C8C1C 8013251C ACE40008 */  sw        $a0, 8($a3)
/* C8C20 80132520 0804C961 */  j         .L80132584
/* C8C24 80132524 ACE3000C */   sw       $v1, 0xc($a3)
.L80132528:
/* C8C28 80132528 3C05E200 */  lui       $a1, 0xe200
/* C8C2C 8013252C 34A5001C */  ori       $a1, $a1, 0x1c
/* C8C30 80132530 3C030050 */  lui       $v1, 0x50
/* C8C34 80132534 34634348 */  ori       $v1, $v1, 0x4348
/* C8C38 80132538 3C06FC30 */  lui       $a2, 0xfc30
/* C8C3C 8013253C 34C6B261 */  ori       $a2, $a2, 0xb261
/* C8C40 80132540 3C04FF2F */  lui       $a0, 0xff2f
/* C8C44 80132544 3484FFFF */  ori       $a0, $a0, 0xffff
/* C8C48 80132548 24E20010 */  addiu     $v0, $a3, 0x10
/* C8C4C 8013254C AD020000 */  sw        $v0, ($t0)
/* C8C50 80132550 24E20018 */  addiu     $v0, $a3, 0x18
/* C8C54 80132554 ACE50008 */  sw        $a1, 8($a3)
/* C8C58 80132558 ACE3000C */  sw        $v1, 0xc($a3)
/* C8C5C 8013255C AD020000 */  sw        $v0, ($t0)
/* C8C60 80132560 24E20020 */  addiu     $v0, $a3, 0x20
/* C8C64 80132564 ACE60010 */  sw        $a2, 0x10($a3)
/* C8C68 80132568 ACE40014 */  sw        $a0, 0x14($a3)
/* C8C6C 8013256C AD020000 */  sw        $v0, ($t0)
/* C8C70 80132570 3C02FA00 */  lui       $v0, 0xfa00
/* C8C74 80132574 ACE20018 */  sw        $v0, 0x18($a3)
/* C8C78 80132578 2402FF00 */  addiu     $v0, $zero, -0x100
/* C8C7C 8013257C 02821025 */  or        $v0, $s4, $v0
/* C8C80 80132580 ACE2001C */  sw        $v0, 0x1c($a3)
.L80132584:
/* C8C84 80132584 8E620000 */  lw        $v0, ($s3)
/* C8C88 80132588 3C030004 */  lui       $v1, 4
/* C8C8C 8013258C 00431024 */  and       $v0, $v0, $v1
/* C8C90 80132590 144000CE */  bnez      $v0, .L801328CC
/* C8C94 80132594 3C05F500 */   lui      $a1, 0xf500
/* C8C98 80132598 34A50100 */  ori       $a1, $a1, 0x100
/* C8C9C 8013259C 3C060703 */  lui       $a2, 0x703
/* C8CA0 801325A0 3C0F800A */  lui       $t7, %hi(gMasterGfxPos)
/* C8CA4 801325A4 25EFA66C */  addiu     $t7, $t7, %lo(gMasterGfxPos)
/* C8CA8 801325A8 34C6C000 */  ori       $a2, $a2, 0xc000
/* C8CAC 801325AC 3C02FD10 */  lui       $v0, 0xfd10
/* C8CB0 801325B0 8DEE0000 */  lw        $t6, ($t7)
/* C8CB4 801325B4 3C10E600 */  lui       $s0, 0xe600
/* C8CB8 801325B8 01C0202D */  daddu     $a0, $t6, $zero
/* C8CBC 801325BC 25CE0008 */  addiu     $t6, $t6, 8
/* C8CC0 801325C0 ADEE0000 */  sw        $t6, ($t7)
/* C8CC4 801325C4 AC820000 */  sw        $v0, ($a0)
/* C8CC8 801325C8 9263002D */  lbu       $v1, 0x2d($s3)
/* C8CCC 801325CC 25C20008 */  addiu     $v0, $t6, 8
/* C8CD0 801325D0 ADE20000 */  sw        $v0, ($t7)
/* C8CD4 801325D4 25C20010 */  addiu     $v0, $t6, 0x10
/* C8CD8 801325D8 ADE20000 */  sw        $v0, ($t7)
/* C8CDC 801325DC 25C20018 */  addiu     $v0, $t6, 0x18
/* C8CE0 801325E0 ADE20000 */  sw        $v0, ($t7)
/* C8CE4 801325E4 3C028015 */  lui       $v0, %hi(gHudElementCacheTablePalette)
/* C8CE8 801325E8 8C4212D0 */  lw        $v0, %lo(gHudElementCacheTablePalette)($v0)
/* C8CEC 801325EC 000318C0 */  sll       $v1, $v1, 3
/* C8CF0 801325F0 00621821 */  addu      $v1, $v1, $v0
/* C8CF4 801325F4 8C630004 */  lw        $v1, 4($v1)
/* C8CF8 801325F8 25C20020 */  addiu     $v0, $t6, 0x20
/* C8CFC 801325FC ADE20000 */  sw        $v0, ($t7)
/* C8D00 80132600 3C02E800 */  lui       $v0, 0xe800
/* C8D04 80132604 AC830004 */  sw        $v1, 4($a0)
/* C8D08 80132608 ADC20000 */  sw        $v0, ($t6)
/* C8D0C 8013260C 3C020700 */  lui       $v0, 0x700
/* C8D10 80132610 ADC2000C */  sw        $v0, 0xc($t6)
/* C8D14 80132614 3C02F000 */  lui       $v0, 0xf000
/* C8D18 80132618 ADC20018 */  sw        $v0, 0x18($t6)
/* C8D1C 8013261C 3C028015 */  lui       $v0, %hi(D_80151328)
/* C8D20 80132620 8C421328 */  lw        $v0, %lo(D_80151328)($v0)
/* C8D24 80132624 3C11E700 */  lui       $s1, 0xe700
/* C8D28 80132628 ADC00004 */  sw        $zero, 4($t6)
/* C8D2C 8013262C ADC50008 */  sw        $a1, 8($t6)
/* C8D30 80132630 ADD00010 */  sw        $s0, 0x10($t6)
/* C8D34 80132634 ADC00014 */  sw        $zero, 0x14($t6)
/* C8D38 80132638 ADC6001C */  sw        $a2, 0x1c($t6)
/* C8D3C 8013263C ADD10020 */  sw        $s1, 0x20($t6)
/* C8D40 80132640 ADC00024 */  sw        $zero, 0x24($t6)
/* C8D44 80132644 94430000 */  lhu       $v1, ($v0)
/* C8D48 80132648 25C20028 */  addiu     $v0, $t6, 0x28
/* C8D4C 8013264C 10600060 */  beqz      $v1, .L801327D0
/* C8D50 80132650 ADE20000 */   sw       $v0, ($t7)
/* C8D54 80132654 3C03FD48 */  lui       $v1, 0xfd48
/* C8D58 80132658 3463000B */  ori       $v1, $v1, 0xb
/* C8D5C 8013265C 3C07F548 */  lui       $a3, 0xf548
/* C8D60 80132660 34E70400 */  ori       $a3, $a3, 0x400
/* C8D64 80132664 3C05070A */  lui       $a1, 0x70a
/* C8D68 80132668 34A50280 */  ori       $a1, $a1, 0x280
/* C8D6C 8013266C 3C0B0702 */  lui       $t3, 0x702
/* C8D70 80132670 356BE05C */  ori       $t3, $t3, 0xe05c
/* C8D74 80132674 3C04F540 */  lui       $a0, 0xf540
/* C8D78 80132678 34840400 */  ori       $a0, $a0, 0x400
/* C8D7C 8013267C 3C0C010A */  lui       $t4, 0x10a
/* C8D80 80132680 358C0280 */  ori       $t4, $t4, 0x280
/* C8D84 80132684 3C0AF240 */  lui       $t2, 0xf240
/* C8D88 80132688 354A0400 */  ori       $t2, $t2, 0x400
/* C8D8C 8013268C 3C080145 */  lui       $t0, 0x145
/* C8D90 80132690 3508C45C */  ori       $t0, $t0, 0xc45c
/* C8D94 80132694 3C09001A */  lui       $t1, 0x1a
/* C8D98 80132698 35290280 */  ori       $t1, $t1, 0x280
/* C8D9C 8013269C 3C06F510 */  lui       $a2, 0xf510
/* C8DA0 801326A0 34C60900 */  ori       $a2, $a2, 0x900
/* C8DA4 801326A4 3C0D020F */  lui       $t5, 0x20f
/* C8DA8 801326A8 35ADC000 */  ori       $t5, $t5, 0xc000
/* C8DAC 801326AC 25C20030 */  addiu     $v0, $t6, 0x30
/* C8DB0 801326B0 ADE20000 */  sw        $v0, ($t7)
/* C8DB4 801326B4 ADC30028 */  sw        $v1, 0x28($t6)
/* C8DB8 801326B8 9263002C */  lbu       $v1, 0x2c($s3)
/* C8DBC 801326BC 25C20038 */  addiu     $v0, $t6, 0x38
/* C8DC0 801326C0 ADE20000 */  sw        $v0, ($t7)
/* C8DC4 801326C4 25C20040 */  addiu     $v0, $t6, 0x40
/* C8DC8 801326C8 ADE20000 */  sw        $v0, ($t7)
/* C8DCC 801326CC 25C20048 */  addiu     $v0, $t6, 0x48
/* C8DD0 801326D0 ADE20000 */  sw        $v0, ($t7)
/* C8DD4 801326D4 25C20050 */  addiu     $v0, $t6, 0x50
/* C8DD8 801326D8 ADE20000 */  sw        $v0, ($t7)
/* C8DDC 801326DC 25C20058 */  addiu     $v0, $t6, 0x58
/* C8DE0 801326E0 ADE20000 */  sw        $v0, ($t7)
/* C8DE4 801326E4 25C20060 */  addiu     $v0, $t6, 0x60
/* C8DE8 801326E8 ADE20000 */  sw        $v0, ($t7)
/* C8DEC 801326EC 25C20068 */  addiu     $v0, $t6, 0x68
/* C8DF0 801326F0 ADE20000 */  sw        $v0, ($t7)
/* C8DF4 801326F4 25C20070 */  addiu     $v0, $t6, 0x70
/* C8DF8 801326F8 ADE20000 */  sw        $v0, ($t7)
/* C8DFC 801326FC 3C028015 */  lui       $v0, %hi(gHudElementCacheTableRaster)
/* C8E00 80132700 8C4212C8 */  lw        $v0, %lo(gHudElementCacheTableRaster)($v0)
/* C8E04 80132704 000318C0 */  sll       $v1, $v1, 3
/* C8E08 80132708 00621821 */  addu      $v1, $v1, $v0
/* C8E0C 8013270C 8C630004 */  lw        $v1, 4($v1)
/* C8E10 80132710 25C20078 */  addiu     $v0, $t6, 0x78
/* C8E14 80132714 ADE20000 */  sw        $v0, ($t7)
/* C8E18 80132718 3C02F400 */  lui       $v0, 0xf400
/* C8E1C 8013271C ADC20040 */  sw        $v0, 0x40($t6)
/* C8E20 80132720 3C020200 */  lui       $v0, 0x200
/* C8E24 80132724 ADC2006C */  sw        $v0, 0x6c($t6)
/* C8E28 80132728 3C02F200 */  lui       $v0, 0xf200
/* C8E2C 8013272C ADC70030 */  sw        $a3, 0x30($t6)
/* C8E30 80132730 ADC50034 */  sw        $a1, 0x34($t6)
/* C8E34 80132734 ADD00038 */  sw        $s0, 0x38($t6)
/* C8E38 80132738 ADC0003C */  sw        $zero, 0x3c($t6)
/* C8E3C 8013273C ADCB0044 */  sw        $t3, 0x44($t6)
/* C8E40 80132740 ADD10048 */  sw        $s1, 0x48($t6)
/* C8E44 80132744 ADC0004C */  sw        $zero, 0x4c($t6)
/* C8E48 80132748 ADC40050 */  sw        $a0, 0x50($t6)
/* C8E4C 8013274C ADCC0054 */  sw        $t4, 0x54($t6)
/* C8E50 80132750 ADCA0058 */  sw        $t2, 0x58($t6)
/* C8E54 80132754 ADC8005C */  sw        $t0, 0x5c($t6)
/* C8E58 80132758 ADC40060 */  sw        $a0, 0x60($t6)
/* C8E5C 8013275C ADC90064 */  sw        $t1, 0x64($t6)
/* C8E60 80132760 ADC60068 */  sw        $a2, 0x68($t6)
/* C8E64 80132764 ADC20070 */  sw        $v0, 0x70($t6)
/* C8E68 80132768 ADCD0074 */  sw        $t5, 0x74($t6)
/* C8E6C 8013276C ADC3002C */  sw        $v1, 0x2c($t6)
/* C8E70 80132770 8E620000 */  lw        $v0, ($s3)
/* C8E74 80132774 3C030808 */  lui       $v1, 0x808
/* C8E78 80132778 00431024 */  and       $v0, $v0, $v1
/* C8E7C 8013277C 1040000A */  beqz      $v0, .L801327A8
/* C8E80 80132780 27A40058 */   addiu    $a0, $sp, 0x58
/* C8E84 80132784 0000282D */  daddu     $a1, $zero, $zero
/* C8E88 80132788 00A0302D */  daddu     $a2, $a1, $zero
/* C8E8C 8013278C 24070018 */  addiu     $a3, $zero, 0x18
/* C8E90 80132790 00E0102D */  daddu     $v0, $a3, $zero
/* C8E94 80132794 AFA20010 */  sw        $v0, 0x10($sp)
/* C8E98 80132798 0C052479 */  jal       func_801491E4
/* C8E9C 8013279C AFB40014 */   sw       $s4, 0x14($sp)
/* C8EA0 801327A0 0804CA27 */  j         .L8013289C
/* C8EA4 801327A4 00000000 */   nop
.L801327A8:
/* C8EA8 801327A8 0000282D */  daddu     $a1, $zero, $zero
/* C8EAC 801327AC 00A0302D */  daddu     $a2, $a1, $zero
/* C8EB0 801327B0 24070018 */  addiu     $a3, $zero, 0x18
/* C8EB4 801327B4 00E0102D */  daddu     $v0, $a3, $zero
/* C8EB8 801327B8 AFA20010 */  sw        $v0, 0x10($sp)
/* C8EBC 801327BC 240200FF */  addiu     $v0, $zero, 0xff
/* C8EC0 801327C0 0C052479 */  jal       func_801491E4
/* C8EC4 801327C4 AFA20014 */   sw       $v0, 0x14($sp)
/* C8EC8 801327C8 0804CA27 */  j         .L8013289C
/* C8ECC 801327CC 00000000 */   nop
.L801327D0:
/* C8ED0 801327D0 3C03FD48 */  lui       $v1, 0xfd48
/* C8ED4 801327D4 3463000B */  ori       $v1, $v1, 0xb
/* C8ED8 801327D8 3C05F548 */  lui       $a1, 0xf548
/* C8EDC 801327DC 34A50400 */  ori       $a1, $a1, 0x400
/* C8EE0 801327E0 3C04070A */  lui       $a0, 0x70a
/* C8EE4 801327E4 34840280 */  ori       $a0, $a0, 0x280
/* C8EE8 801327E8 3C080702 */  lui       $t0, 0x702
/* C8EEC 801327EC 3508E05C */  ori       $t0, $t0, 0xe05c
/* C8EF0 801327F0 3C0AF540 */  lui       $t2, 0xf540
/* C8EF4 801327F4 354A0400 */  ori       $t2, $t2, 0x400
/* C8EF8 801327F8 3C09000A */  lui       $t1, 0xa
/* C8EFC 801327FC 35290280 */  ori       $t1, $t1, 0x280
/* C8F00 80132800 3C07F240 */  lui       $a3, 0xf240
/* C8F04 80132804 34E70400 */  ori       $a3, $a3, 0x400
/* C8F08 80132808 3C060045 */  lui       $a2, 0x45
/* C8F0C 8013280C 34C6C45C */  ori       $a2, $a2, 0xc45c
/* C8F10 80132810 25C20030 */  addiu     $v0, $t6, 0x30
/* C8F14 80132814 ADE20000 */  sw        $v0, ($t7)
/* C8F18 80132818 ADC30028 */  sw        $v1, 0x28($t6)
/* C8F1C 8013281C 9263002C */  lbu       $v1, 0x2c($s3)
/* C8F20 80132820 25C20038 */  addiu     $v0, $t6, 0x38
/* C8F24 80132824 ADE20000 */  sw        $v0, ($t7)
/* C8F28 80132828 25C20040 */  addiu     $v0, $t6, 0x40
/* C8F2C 8013282C ADE20000 */  sw        $v0, ($t7)
/* C8F30 80132830 25C20048 */  addiu     $v0, $t6, 0x48
/* C8F34 80132834 ADE20000 */  sw        $v0, ($t7)
/* C8F38 80132838 25C20050 */  addiu     $v0, $t6, 0x50
/* C8F3C 8013283C ADE20000 */  sw        $v0, ($t7)
/* C8F40 80132840 25C20058 */  addiu     $v0, $t6, 0x58
/* C8F44 80132844 ADE20000 */  sw        $v0, ($t7)
/* C8F48 80132848 3C028015 */  lui       $v0, %hi(gHudElementCacheTableRaster)
/* C8F4C 8013284C 8C4212C8 */  lw        $v0, %lo(gHudElementCacheTableRaster)($v0)
/* C8F50 80132850 000318C0 */  sll       $v1, $v1, 3
/* C8F54 80132854 00621821 */  addu      $v1, $v1, $v0
/* C8F58 80132858 8C630004 */  lw        $v1, 4($v1)
/* C8F5C 8013285C 25C20060 */  addiu     $v0, $t6, 0x60
/* C8F60 80132860 ADE20000 */  sw        $v0, ($t7)
/* C8F64 80132864 3C02F400 */  lui       $v0, 0xf400
/* C8F68 80132868 ADC50030 */  sw        $a1, 0x30($t6)
/* C8F6C 8013286C ADC40034 */  sw        $a0, 0x34($t6)
/* C8F70 80132870 ADD00038 */  sw        $s0, 0x38($t6)
/* C8F74 80132874 ADC0003C */  sw        $zero, 0x3c($t6)
/* C8F78 80132878 ADC20040 */  sw        $v0, 0x40($t6)
/* C8F7C 8013287C ADC80044 */  sw        $t0, 0x44($t6)
/* C8F80 80132880 ADD10048 */  sw        $s1, 0x48($t6)
/* C8F84 80132884 ADC0004C */  sw        $zero, 0x4c($t6)
/* C8F88 80132888 ADCA0050 */  sw        $t2, 0x50($t6)
/* C8F8C 8013288C ADC90054 */  sw        $t1, 0x54($t6)
/* C8F90 80132890 ADC70058 */  sw        $a3, 0x58($t6)
/* C8F94 80132894 ADC6005C */  sw        $a2, 0x5c($t6)
/* C8F98 80132898 ADC3002C */  sw        $v1, 0x2c($t6)
.L8013289C:
/* C8F9C 8013289C 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* C8FA0 801328A0 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* C8FA4 801328A4 8C620000 */  lw        $v0, ($v1)
/* C8FA8 801328A8 0040202D */  daddu     $a0, $v0, $zero
/* C8FAC 801328AC 24420008 */  addiu     $v0, $v0, 8
/* C8FB0 801328B0 AC620000 */  sw        $v0, ($v1)
/* C8FB4 801328B4 3C02DE00 */  lui       $v0, 0xde00
/* C8FB8 801328B8 AC820000 */  sw        $v0, ($a0)
/* C8FBC 801328BC 3C028015 */  lui       $v0, %hi(D_8014C678)
/* C8FC0 801328C0 2442C678 */  addiu     $v0, $v0, %lo(D_8014C678)
/* C8FC4 801328C4 0804CAFF */  j         .L80132BFC
/* C8FC8 801328C8 AC820004 */   sw       $v0, 4($a0)
.L801328CC:
/* C8FCC 801328CC 34A50100 */  ori       $a1, $a1, 0x100
/* C8FD0 801328D0 3C060703 */  lui       $a2, 0x703
/* C8FD4 801328D4 3C0F800A */  lui       $t7, %hi(gMasterGfxPos)
/* C8FD8 801328D8 25EFA66C */  addiu     $t7, $t7, %lo(gMasterGfxPos)
/* C8FDC 801328DC 34C6C000 */  ori       $a2, $a2, 0xc000
/* C8FE0 801328E0 3C02FD10 */  lui       $v0, 0xfd10
/* C8FE4 801328E4 8DEE0000 */  lw        $t6, ($t7)
/* C8FE8 801328E8 3C10E600 */  lui       $s0, 0xe600
/* C8FEC 801328EC 01C0202D */  daddu     $a0, $t6, $zero
/* C8FF0 801328F0 25CE0008 */  addiu     $t6, $t6, 8
/* C8FF4 801328F4 ADEE0000 */  sw        $t6, ($t7)
/* C8FF8 801328F8 AC820000 */  sw        $v0, ($a0)
/* C8FFC 801328FC 9263002D */  lbu       $v1, 0x2d($s3)
/* C9000 80132900 25C20008 */  addiu     $v0, $t6, 8
/* C9004 80132904 ADE20000 */  sw        $v0, ($t7)
/* C9008 80132908 25C20010 */  addiu     $v0, $t6, 0x10
/* C900C 8013290C ADE20000 */  sw        $v0, ($t7)
/* C9010 80132910 25C20018 */  addiu     $v0, $t6, 0x18
/* C9014 80132914 ADE20000 */  sw        $v0, ($t7)
/* C9018 80132918 3C028015 */  lui       $v0, %hi(gHudElementCacheTablePalette)
/* C901C 8013291C 8C4212D0 */  lw        $v0, %lo(gHudElementCacheTablePalette)($v0)
/* C9020 80132920 000318C0 */  sll       $v1, $v1, 3
/* C9024 80132924 00621821 */  addu      $v1, $v1, $v0
/* C9028 80132928 8C630004 */  lw        $v1, 4($v1)
/* C902C 8013292C 25C20020 */  addiu     $v0, $t6, 0x20
/* C9030 80132930 ADE20000 */  sw        $v0, ($t7)
/* C9034 80132934 3C02E800 */  lui       $v0, 0xe800
/* C9038 80132938 AC830004 */  sw        $v1, 4($a0)
/* C903C 8013293C ADC20000 */  sw        $v0, ($t6)
/* C9040 80132940 3C020700 */  lui       $v0, 0x700
/* C9044 80132944 ADC2000C */  sw        $v0, 0xc($t6)
/* C9048 80132948 3C02F000 */  lui       $v0, 0xf000
/* C904C 8013294C ADC20018 */  sw        $v0, 0x18($t6)
/* C9050 80132950 3C028015 */  lui       $v0, %hi(D_80151328)
/* C9054 80132954 8C421328 */  lw        $v0, %lo(D_80151328)($v0)
/* C9058 80132958 3C11E700 */  lui       $s1, 0xe700
/* C905C 8013295C ADC00004 */  sw        $zero, 4($t6)
/* C9060 80132960 ADC50008 */  sw        $a1, 8($t6)
/* C9064 80132964 ADD00010 */  sw        $s0, 0x10($t6)
/* C9068 80132968 ADC00014 */  sw        $zero, 0x14($t6)
/* C906C 8013296C ADC6001C */  sw        $a2, 0x1c($t6)
/* C9070 80132970 ADD10020 */  sw        $s1, 0x20($t6)
/* C9074 80132974 ADC00024 */  sw        $zero, 0x24($t6)
/* C9078 80132978 94430000 */  lhu       $v1, ($v0)
/* C907C 8013297C 25C20028 */  addiu     $v0, $t6, 0x28
/* C9080 80132980 10600060 */  beqz      $v1, .L80132B04
/* C9084 80132984 ADE20000 */   sw       $v0, ($t7)
/* C9088 80132988 3C03FD48 */  lui       $v1, 0xfd48
/* C908C 8013298C 3463000F */  ori       $v1, $v1, 0xf
/* C9090 80132990 3C07F548 */  lui       $a3, 0xf548
/* C9094 80132994 34E70400 */  ori       $a3, $a3, 0x400
/* C9098 80132998 3C05070A */  lui       $a1, 0x70a
/* C909C 8013299C 34A50280 */  ori       $a1, $a1, 0x280
/* C90A0 801329A0 3C0B0703 */  lui       $t3, 0x703
/* C90A4 801329A4 356BE07C */  ori       $t3, $t3, 0xe07c
/* C90A8 801329A8 3C04F540 */  lui       $a0, 0xf540
/* C90AC 801329AC 34840400 */  ori       $a0, $a0, 0x400
/* C90B0 801329B0 3C0C010A */  lui       $t4, 0x10a
/* C90B4 801329B4 358C0280 */  ori       $t4, $t4, 0x280
/* C90B8 801329B8 3C0AF240 */  lui       $t2, 0xf240
/* C90BC 801329BC 354A0400 */  ori       $t2, $t2, 0x400
/* C90C0 801329C0 3C080147 */  lui       $t0, 0x147
/* C90C4 801329C4 3508C47C */  ori       $t0, $t0, 0xc47c
/* C90C8 801329C8 3C09001A */  lui       $t1, 0x1a
/* C90CC 801329CC 35290280 */  ori       $t1, $t1, 0x280
/* C90D0 801329D0 3C06F510 */  lui       $a2, 0xf510
/* C90D4 801329D4 34C60900 */  ori       $a2, $a2, 0x900
/* C90D8 801329D8 3C0D020F */  lui       $t5, 0x20f
/* C90DC 801329DC 35ADC000 */  ori       $t5, $t5, 0xc000
/* C90E0 801329E0 25C20030 */  addiu     $v0, $t6, 0x30
/* C90E4 801329E4 ADE20000 */  sw        $v0, ($t7)
/* C90E8 801329E8 ADC30028 */  sw        $v1, 0x28($t6)
/* C90EC 801329EC 9263002C */  lbu       $v1, 0x2c($s3)
/* C90F0 801329F0 25C20038 */  addiu     $v0, $t6, 0x38
/* C90F4 801329F4 ADE20000 */  sw        $v0, ($t7)
/* C90F8 801329F8 25C20040 */  addiu     $v0, $t6, 0x40
/* C90FC 801329FC ADE20000 */  sw        $v0, ($t7)
/* C9100 80132A00 25C20048 */  addiu     $v0, $t6, 0x48
/* C9104 80132A04 ADE20000 */  sw        $v0, ($t7)
/* C9108 80132A08 25C20050 */  addiu     $v0, $t6, 0x50
/* C910C 80132A0C ADE20000 */  sw        $v0, ($t7)
/* C9110 80132A10 25C20058 */  addiu     $v0, $t6, 0x58
/* C9114 80132A14 ADE20000 */  sw        $v0, ($t7)
/* C9118 80132A18 25C20060 */  addiu     $v0, $t6, 0x60
/* C911C 80132A1C ADE20000 */  sw        $v0, ($t7)
/* C9120 80132A20 25C20068 */  addiu     $v0, $t6, 0x68
/* C9124 80132A24 ADE20000 */  sw        $v0, ($t7)
/* C9128 80132A28 25C20070 */  addiu     $v0, $t6, 0x70
/* C912C 80132A2C ADE20000 */  sw        $v0, ($t7)
/* C9130 80132A30 3C028015 */  lui       $v0, %hi(gHudElementCacheTableRaster)
/* C9134 80132A34 8C4212C8 */  lw        $v0, %lo(gHudElementCacheTableRaster)($v0)
/* C9138 80132A38 000318C0 */  sll       $v1, $v1, 3
/* C913C 80132A3C 00621821 */  addu      $v1, $v1, $v0
/* C9140 80132A40 8C630004 */  lw        $v1, 4($v1)
/* C9144 80132A44 25C20078 */  addiu     $v0, $t6, 0x78
/* C9148 80132A48 ADE20000 */  sw        $v0, ($t7)
/* C914C 80132A4C 3C02F400 */  lui       $v0, 0xf400
/* C9150 80132A50 ADC20040 */  sw        $v0, 0x40($t6)
/* C9154 80132A54 3C020200 */  lui       $v0, 0x200
/* C9158 80132A58 ADC2006C */  sw        $v0, 0x6c($t6)
/* C915C 80132A5C 3C02F200 */  lui       $v0, 0xf200
/* C9160 80132A60 ADC70030 */  sw        $a3, 0x30($t6)
/* C9164 80132A64 ADC50034 */  sw        $a1, 0x34($t6)
/* C9168 80132A68 ADD00038 */  sw        $s0, 0x38($t6)
/* C916C 80132A6C ADC0003C */  sw        $zero, 0x3c($t6)
/* C9170 80132A70 ADCB0044 */  sw        $t3, 0x44($t6)
/* C9174 80132A74 ADD10048 */  sw        $s1, 0x48($t6)
/* C9178 80132A78 ADC0004C */  sw        $zero, 0x4c($t6)
/* C917C 80132A7C ADC40050 */  sw        $a0, 0x50($t6)
/* C9180 80132A80 ADCC0054 */  sw        $t4, 0x54($t6)
/* C9184 80132A84 ADCA0058 */  sw        $t2, 0x58($t6)
/* C9188 80132A88 ADC8005C */  sw        $t0, 0x5c($t6)
/* C918C 80132A8C ADC40060 */  sw        $a0, 0x60($t6)
/* C9190 80132A90 ADC90064 */  sw        $t1, 0x64($t6)
/* C9194 80132A94 ADC60068 */  sw        $a2, 0x68($t6)
/* C9198 80132A98 ADC20070 */  sw        $v0, 0x70($t6)
/* C919C 80132A9C ADCD0074 */  sw        $t5, 0x74($t6)
/* C91A0 80132AA0 ADC3002C */  sw        $v1, 0x2c($t6)
/* C91A4 80132AA4 8E620000 */  lw        $v0, ($s3)
/* C91A8 80132AA8 3C030808 */  lui       $v1, 0x808
/* C91AC 80132AAC 00431024 */  and       $v0, $v0, $v1
/* C91B0 80132AB0 1040000A */  beqz      $v0, .L80132ADC
/* C91B4 80132AB4 27A40058 */   addiu    $a0, $sp, 0x58
/* C91B8 80132AB8 0000282D */  daddu     $a1, $zero, $zero
/* C91BC 80132ABC 00A0302D */  daddu     $a2, $a1, $zero
/* C91C0 80132AC0 24070020 */  addiu     $a3, $zero, 0x20
/* C91C4 80132AC4 00E0102D */  daddu     $v0, $a3, $zero
/* C91C8 80132AC8 AFA20010 */  sw        $v0, 0x10($sp)
/* C91CC 80132ACC 0C052479 */  jal       func_801491E4
/* C91D0 80132AD0 AFB40014 */   sw       $s4, 0x14($sp)
/* C91D4 80132AD4 0804CAF4 */  j         .L80132BD0
/* C91D8 80132AD8 00000000 */   nop
.L80132ADC:
/* C91DC 80132ADC 0000282D */  daddu     $a1, $zero, $zero
/* C91E0 80132AE0 00A0302D */  daddu     $a2, $a1, $zero
/* C91E4 80132AE4 24070020 */  addiu     $a3, $zero, 0x20
/* C91E8 80132AE8 00E0102D */  daddu     $v0, $a3, $zero
/* C91EC 80132AEC AFA20010 */  sw        $v0, 0x10($sp)
/* C91F0 80132AF0 240200FF */  addiu     $v0, $zero, 0xff
/* C91F4 80132AF4 0C052479 */  jal       func_801491E4
/* C91F8 80132AF8 AFA20014 */   sw       $v0, 0x14($sp)
/* C91FC 80132AFC 0804CAF4 */  j         .L80132BD0
/* C9200 80132B00 00000000 */   nop
.L80132B04:
/* C9204 80132B04 3C03FD48 */  lui       $v1, 0xfd48
/* C9208 80132B08 3463000F */  ori       $v1, $v1, 0xf
/* C920C 80132B0C 3C05F548 */  lui       $a1, 0xf548
/* C9210 80132B10 34A50400 */  ori       $a1, $a1, 0x400
/* C9214 80132B14 3C04070A */  lui       $a0, 0x70a
/* C9218 80132B18 34840280 */  ori       $a0, $a0, 0x280
/* C921C 80132B1C 3C080703 */  lui       $t0, 0x703
/* C9220 80132B20 3508E07C */  ori       $t0, $t0, 0xe07c
/* C9224 80132B24 3C0AF540 */  lui       $t2, 0xf540
/* C9228 80132B28 354A0400 */  ori       $t2, $t2, 0x400
/* C922C 80132B2C 3C09000A */  lui       $t1, 0xa
/* C9230 80132B30 35290280 */  ori       $t1, $t1, 0x280
/* C9234 80132B34 3C07F240 */  lui       $a3, 0xf240
/* C9238 80132B38 34E70400 */  ori       $a3, $a3, 0x400
/* C923C 80132B3C 3C060047 */  lui       $a2, 0x47
/* C9240 80132B40 34C6C47C */  ori       $a2, $a2, 0xc47c
/* C9244 80132B44 25C20030 */  addiu     $v0, $t6, 0x30
/* C9248 80132B48 ADE20000 */  sw        $v0, ($t7)
/* C924C 80132B4C ADC30028 */  sw        $v1, 0x28($t6)
/* C9250 80132B50 9263002C */  lbu       $v1, 0x2c($s3)
/* C9254 80132B54 25C20038 */  addiu     $v0, $t6, 0x38
/* C9258 80132B58 ADE20000 */  sw        $v0, ($t7)
/* C925C 80132B5C 25C20040 */  addiu     $v0, $t6, 0x40
/* C9260 80132B60 ADE20000 */  sw        $v0, ($t7)
/* C9264 80132B64 25C20048 */  addiu     $v0, $t6, 0x48
/* C9268 80132B68 ADE20000 */  sw        $v0, ($t7)
/* C926C 80132B6C 25C20050 */  addiu     $v0, $t6, 0x50
/* C9270 80132B70 ADE20000 */  sw        $v0, ($t7)
/* C9274 80132B74 25C20058 */  addiu     $v0, $t6, 0x58
/* C9278 80132B78 ADE20000 */  sw        $v0, ($t7)
/* C927C 80132B7C 3C028015 */  lui       $v0, %hi(gHudElementCacheTableRaster)
/* C9280 80132B80 8C4212C8 */  lw        $v0, %lo(gHudElementCacheTableRaster)($v0)
/* C9284 80132B84 000318C0 */  sll       $v1, $v1, 3
/* C9288 80132B88 00621821 */  addu      $v1, $v1, $v0
/* C928C 80132B8C 8C630004 */  lw        $v1, 4($v1)
/* C9290 80132B90 25C20060 */  addiu     $v0, $t6, 0x60
/* C9294 80132B94 ADE20000 */  sw        $v0, ($t7)
/* C9298 80132B98 3C02F400 */  lui       $v0, 0xf400
/* C929C 80132B9C ADC50030 */  sw        $a1, 0x30($t6)
/* C92A0 80132BA0 ADC40034 */  sw        $a0, 0x34($t6)
/* C92A4 80132BA4 ADD00038 */  sw        $s0, 0x38($t6)
/* C92A8 80132BA8 ADC0003C */  sw        $zero, 0x3c($t6)
/* C92AC 80132BAC ADC20040 */  sw        $v0, 0x40($t6)
/* C92B0 80132BB0 ADC80044 */  sw        $t0, 0x44($t6)
/* C92B4 80132BB4 ADD10048 */  sw        $s1, 0x48($t6)
/* C92B8 80132BB8 ADC0004C */  sw        $zero, 0x4c($t6)
/* C92BC 80132BBC ADCA0050 */  sw        $t2, 0x50($t6)
/* C92C0 80132BC0 ADC90054 */  sw        $t1, 0x54($t6)
/* C92C4 80132BC4 ADC70058 */  sw        $a3, 0x58($t6)
/* C92C8 80132BC8 ADC6005C */  sw        $a2, 0x5c($t6)
/* C92CC 80132BCC ADC3002C */  sw        $v1, 0x2c($t6)
.L80132BD0:
/* C92D0 80132BD0 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* C92D4 80132BD4 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* C92D8 80132BD8 8C620000 */  lw        $v0, ($v1)
/* C92DC 80132BDC 0040202D */  daddu     $a0, $v0, $zero
/* C92E0 80132BE0 24420008 */  addiu     $v0, $v0, 8
/* C92E4 80132BE4 AC620000 */  sw        $v0, ($v1)
/* C92E8 80132BE8 3C02DE00 */  lui       $v0, 0xde00
/* C92EC 80132BEC AC820000 */  sw        $v0, ($a0)
/* C92F0 80132BF0 3C028015 */  lui       $v0, %hi(D_8014C6A0)
/* C92F4 80132BF4 2442C6A0 */  addiu     $v0, $v0, %lo(D_8014C6A0)
/* C92F8 80132BF8 AC820004 */  sw        $v0, 4($a0)
.L80132BFC:
/* C92FC 80132BFC 3C03D838 */  lui       $v1, 0xd838
/* C9300 80132C00 3C04800A */  lui       $a0, %hi(gMasterGfxPos)
/* C9304 80132C04 2484A66C */  addiu     $a0, $a0, %lo(gMasterGfxPos)
/* C9308 80132C08 8C820000 */  lw        $v0, ($a0)
/* C930C 80132C0C 34630002 */  ori       $v1, $v1, 2
/* C9310 80132C10 0040282D */  daddu     $a1, $v0, $zero
/* C9314 80132C14 24420008 */  addiu     $v0, $v0, 8
/* C9318 80132C18 AC820000 */  sw        $v0, ($a0)
/* C931C 80132C1C ACA30000 */  sw        $v1, ($a1)
/* C9320 80132C20 24030040 */  addiu     $v1, $zero, 0x40
/* C9324 80132C24 ACA30004 */  sw        $v1, 4($a1)
/* C9328 80132C28 24430008 */  addiu     $v1, $v0, 8
/* C932C 80132C2C AC830000 */  sw        $v1, ($a0)
/* C9330 80132C30 3C03E700 */  lui       $v1, 0xe700
/* C9334 80132C34 AC430000 */  sw        $v1, ($v0)
/* C9338 80132C38 AC400004 */  sw        $zero, 4($v0)
/* C933C 80132C3C 86630018 */  lh        $v1, 0x18($s3)
/* C9340 80132C40 24020157 */  addiu     $v0, $zero, 0x157
/* C9344 80132C44 14620003 */  bne       $v1, $v0, .L80132C54
/* C9348 80132C48 00000000 */   nop
/* C934C 80132C4C 0C04C2C3 */  jal       draw_coin_sparkles
/* C9350 80132C50 0260202D */   daddu    $a0, $s3, $zero
.L80132C54:
/* C9354 80132C54 8FBF013C */  lw        $ra, 0x13c($sp)
/* C9358 80132C58 8FB60138 */  lw        $s6, 0x138($sp)
/* C935C 80132C5C 8FB50134 */  lw        $s5, 0x134($sp)
/* C9360 80132C60 8FB40130 */  lw        $s4, 0x130($sp)
/* C9364 80132C64 8FB3012C */  lw        $s3, 0x12c($sp)
/* C9368 80132C68 8FB20128 */  lw        $s2, 0x128($sp)
/* C936C 80132C6C 8FB10124 */  lw        $s1, 0x124($sp)
/* C9370 80132C70 8FB00120 */  lw        $s0, 0x120($sp)
/* C9374 80132C74 D7B40140 */  ldc1      $f20, 0x140($sp)
/* C9378 80132C78 03E00008 */  jr        $ra
/* C937C 80132C7C 27BD0148 */   addiu    $sp, $sp, 0x148
