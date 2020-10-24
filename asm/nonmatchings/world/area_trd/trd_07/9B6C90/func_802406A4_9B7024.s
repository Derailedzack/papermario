.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802406A4_9B7024
/* 9B7024 802406A4 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 9B7028 802406A8 AFB3005C */  sw        $s3, 0x5c($sp)
/* 9B702C 802406AC 0080982D */  daddu     $s3, $a0, $zero
/* 9B7030 802406B0 AFBF0068 */  sw        $ra, 0x68($sp)
/* 9B7034 802406B4 AFB50064 */  sw        $s5, 0x64($sp)
/* 9B7038 802406B8 AFB40060 */  sw        $s4, 0x60($sp)
/* 9B703C 802406BC AFB20058 */  sw        $s2, 0x58($sp)
/* 9B7040 802406C0 AFB10054 */  sw        $s1, 0x54($sp)
/* 9B7044 802406C4 AFB00050 */  sw        $s0, 0x50($sp)
/* 9B7048 802406C8 8E710148 */  lw        $s1, 0x148($s3)
/* 9B704C 802406CC 86240008 */  lh        $a0, 8($s1)
/* 9B7050 802406D0 0C00EABB */  jal       get_npc_unsafe
/* 9B7054 802406D4 00A0802D */   daddu    $s0, $a1, $zero
/* 9B7058 802406D8 8E63000C */  lw        $v1, 0xc($s3)
/* 9B705C 802406DC 0260202D */  daddu     $a0, $s3, $zero
/* 9B7060 802406E0 8C650000 */  lw        $a1, ($v1)
/* 9B7064 802406E4 0C0B1EAF */  jal       get_variable
/* 9B7068 802406E8 0040902D */   daddu    $s2, $v0, $zero
/* 9B706C 802406EC AFA00028 */  sw        $zero, 0x28($sp)
/* 9B7070 802406F0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9B7074 802406F4 8C630030 */  lw        $v1, 0x30($v1)
/* 9B7078 802406F8 AFA3002C */  sw        $v1, 0x2c($sp)
/* 9B707C 802406FC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9B7080 80240700 8C63001C */  lw        $v1, 0x1c($v1)
/* 9B7084 80240704 AFA30030 */  sw        $v1, 0x30($sp)
/* 9B7088 80240708 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9B708C 8024070C 8C630024 */  lw        $v1, 0x24($v1)
/* 9B7090 80240710 AFA30034 */  sw        $v1, 0x34($sp)
/* 9B7094 80240714 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9B7098 80240718 8C630028 */  lw        $v1, 0x28($v1)
/* 9B709C 8024071C 27B50028 */  addiu     $s5, $sp, 0x28
/* 9B70A0 80240720 AFA30038 */  sw        $v1, 0x38($sp)
/* 9B70A4 80240724 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9B70A8 80240728 3C0142C8 */  lui       $at, 0x42c8
/* 9B70AC 8024072C 44810000 */  mtc1      $at, $f0
/* 9B70B0 80240730 8C63002C */  lw        $v1, 0x2c($v1)
/* 9B70B4 80240734 0040A02D */  daddu     $s4, $v0, $zero
/* 9B70B8 80240738 E7A00040 */  swc1      $f0, 0x40($sp)
/* 9B70BC 8024073C A7A00044 */  sh        $zero, 0x44($sp)
/* 9B70C0 80240740 12000009 */  beqz      $s0, .L80240768
/* 9B70C4 80240744 AFA3003C */   sw       $v1, 0x3c($sp)
/* 9B70C8 80240748 864300A8 */  lh        $v1, 0xa8($s2)
/* 9B70CC 8024074C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9B70D0 80240750 AE20008C */  sw        $zero, 0x8c($s1)
/* 9B70D4 80240754 A22000B5 */  sb        $zero, 0xb5($s1)
/* 9B70D8 80240758 34420008 */  ori       $v0, $v0, 8
/* 9B70DC 8024075C AE230084 */  sw        $v1, 0x84($s1)
/* 9B70E0 80240760 080901DE */  j         .L80240778
/* 9B70E4 80240764 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240768:
/* 9B70E8 80240768 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9B70EC 8024076C 30420004 */  andi      $v0, $v0, 4
/* 9B70F0 80240770 10400047 */  beqz      $v0, .L80240890
/* 9B70F4 80240774 00000000 */   nop      
.L80240778:
/* 9B70F8 80240778 AE600070 */  sw        $zero, 0x70($s3)
/* 9B70FC 8024077C A640008E */  sh        $zero, 0x8e($s2)
/* 9B7100 80240780 8E2300CC */  lw        $v1, 0xcc($s1)
/* 9B7104 80240784 2404F7FF */  addiu     $a0, $zero, -0x801
/* 9B7108 80240788 A2200007 */  sb        $zero, 7($s1)
/* 9B710C 8024078C 8E420000 */  lw        $v0, ($s2)
/* 9B7110 80240790 8C630000 */  lw        $v1, ($v1)
/* 9B7114 80240794 00441024 */  and       $v0, $v0, $a0
/* 9B7118 80240798 AE420000 */  sw        $v0, ($s2)
/* 9B711C 8024079C AE430028 */  sw        $v1, 0x28($s2)
/* 9B7120 802407A0 96220086 */  lhu       $v0, 0x86($s1)
/* 9B7124 802407A4 A64200A8 */  sh        $v0, 0xa8($s2)
/* 9B7128 802407A8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9B712C 802407AC AE200090 */  sw        $zero, 0x90($s1)
/* 9B7130 802407B0 8C420034 */  lw        $v0, 0x34($v0)
/* 9B7134 802407B4 14400006 */  bnez      $v0, .L802407D0
/* 9B7138 802407B8 2403FDFF */   addiu    $v1, $zero, -0x201
/* 9B713C 802407BC 8E420000 */  lw        $v0, ($s2)
/* 9B7140 802407C0 2403FFF7 */  addiu     $v1, $zero, -9
/* 9B7144 802407C4 34420200 */  ori       $v0, $v0, 0x200
/* 9B7148 802407C8 080901F7 */  j         .L802407DC
/* 9B714C 802407CC 00431024 */   and      $v0, $v0, $v1
.L802407D0:
/* 9B7150 802407D0 8E420000 */  lw        $v0, ($s2)
/* 9B7154 802407D4 00431024 */  and       $v0, $v0, $v1
/* 9B7158 802407D8 34420008 */  ori       $v0, $v0, 8
.L802407DC:
/* 9B715C 802407DC AE420000 */  sw        $v0, ($s2)
/* 9B7160 802407E0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9B7164 802407E4 30420004 */  andi      $v0, $v0, 4
/* 9B7168 802407E8 1040001E */  beqz      $v0, .L80240864
/* 9B716C 802407EC 24040002 */   addiu    $a0, $zero, 2
/* 9B7170 802407F0 0240282D */  daddu     $a1, $s2, $zero
/* 9B7174 802407F4 0000302D */  daddu     $a2, $zero, $zero
/* 9B7178 802407F8 24020063 */  addiu     $v0, $zero, 0x63
/* 9B717C 802407FC AE620070 */  sw        $v0, 0x70($s3)
/* 9B7180 80240800 AE600074 */  sw        $zero, 0x74($s3)
/* 9B7184 80240804 864300A8 */  lh        $v1, 0xa8($s2)
/* 9B7188 80240808 3C013F80 */  lui       $at, 0x3f80
/* 9B718C 8024080C 44810000 */  mtc1      $at, $f0
/* 9B7190 80240810 3C014000 */  lui       $at, 0x4000
/* 9B7194 80240814 44811000 */  mtc1      $at, $f2
/* 9B7198 80240818 3C01C1A0 */  lui       $at, 0xc1a0
/* 9B719C 8024081C 44812000 */  mtc1      $at, $f4
/* 9B71A0 80240820 24020028 */  addiu     $v0, $zero, 0x28
/* 9B71A4 80240824 AFA2001C */  sw        $v0, 0x1c($sp)
/* 9B71A8 80240828 44833000 */  mtc1      $v1, $f6
/* 9B71AC 8024082C 00000000 */  nop       
/* 9B71B0 80240830 468031A0 */  cvt.s.w   $f6, $f6
/* 9B71B4 80240834 44073000 */  mfc1      $a3, $f6
/* 9B71B8 80240838 27A20048 */  addiu     $v0, $sp, 0x48
/* 9B71BC 8024083C AFA20020 */  sw        $v0, 0x20($sp)
/* 9B71C0 80240840 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9B71C4 80240844 E7A20014 */  swc1      $f2, 0x14($sp)
/* 9B71C8 80240848 0C01BFA4 */  jal       fx_emote
/* 9B71CC 8024084C E7A40018 */   swc1     $f4, 0x18($sp)
/* 9B71D0 80240850 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9B71D4 80240854 2403FFFB */  addiu     $v1, $zero, -5
/* 9B71D8 80240858 00431024 */  and       $v0, $v0, $v1
/* 9B71DC 8024085C 08090224 */  j         .L80240890
/* 9B71E0 80240860 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240864:
/* 9B71E4 80240864 8E220000 */  lw        $v0, ($s1)
/* 9B71E8 80240868 3C034000 */  lui       $v1, 0x4000
/* 9B71EC 8024086C 00431024 */  and       $v0, $v0, $v1
/* 9B71F0 80240870 10400007 */  beqz      $v0, .L80240890
/* 9B71F4 80240874 3C03BFFF */   lui      $v1, 0xbfff
/* 9B71F8 80240878 2402000C */  addiu     $v0, $zero, 0xc
/* 9B71FC 8024087C AE620070 */  sw        $v0, 0x70($s3)
/* 9B7200 80240880 8E220000 */  lw        $v0, ($s1)
/* 9B7204 80240884 3463FFFF */  ori       $v1, $v1, 0xffff
/* 9B7208 80240888 00431024 */  and       $v0, $v0, $v1
/* 9B720C 8024088C AE220000 */  sw        $v0, ($s1)
.L80240890:
/* 9B7210 80240890 8E220090 */  lw        $v0, 0x90($s1)
/* 9B7214 80240894 1840000C */  blez      $v0, .L802408C8
/* 9B7218 80240898 2442FFFF */   addiu    $v0, $v0, -1
/* 9B721C 8024089C 14400087 */  bnez      $v0, .L80240ABC
/* 9B7220 802408A0 AE220090 */   sw       $v0, 0x90($s1)
/* 9B7224 802408A4 3C03FFAA */  lui       $v1, 0xffaa
/* 9B7228 802408A8 8E420028 */  lw        $v0, 0x28($s2)
/* 9B722C 802408AC 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* 9B7230 802408B0 00431021 */  addu      $v0, $v0, $v1
/* 9B7234 802408B4 2C420002 */  sltiu     $v0, $v0, 2
/* 9B7238 802408B8 10400003 */  beqz      $v0, .L802408C8
/* 9B723C 802408BC 3C020055 */   lui      $v0, 0x55
/* 9B7240 802408C0 3442000C */  ori       $v0, $v0, 0xc
/* 9B7244 802408C4 AE420028 */  sw        $v0, 0x28($s2)
.L802408C8:
/* 9B7248 802408C8 8E630070 */  lw        $v1, 0x70($s3)
/* 9B724C 802408CC 2402000C */  addiu     $v0, $zero, 0xc
/* 9B7250 802408D0 10620048 */  beq       $v1, $v0, .L802409F4
/* 9B7254 802408D4 2862000D */   slti     $v0, $v1, 0xd
/* 9B7258 802408D8 1040000F */  beqz      $v0, .L80240918
/* 9B725C 802408DC 24100001 */   addiu    $s0, $zero, 1
/* 9B7260 802408E0 1070001E */  beq       $v1, $s0, .L8024095C
/* 9B7264 802408E4 28620002 */   slti     $v0, $v1, 2
/* 9B7268 802408E8 10400005 */  beqz      $v0, .L80240900
/* 9B726C 802408EC 24020002 */   addiu    $v0, $zero, 2
/* 9B7270 802408F0 10600015 */  beqz      $v1, .L80240948
/* 9B7274 802408F4 0260202D */   daddu    $a0, $s3, $zero
/* 9B7278 802408F8 08090294 */  j         .L80240A50
/* 9B727C 802408FC 00000000 */   nop      
.L80240900:
/* 9B7280 80240900 1062001C */  beq       $v1, $v0, .L80240974
/* 9B7284 80240904 24020003 */   addiu    $v0, $zero, 3
/* 9B7288 80240908 10620035 */  beq       $v1, $v0, .L802409E0
/* 9B728C 8024090C 0260202D */   daddu    $a0, $s3, $zero
/* 9B7290 80240910 08090294 */  j         .L80240A50
/* 9B7294 80240914 00000000 */   nop      
.L80240918:
/* 9B7298 80240918 2402000E */  addiu     $v0, $zero, 0xe
/* 9B729C 8024091C 1062003F */  beq       $v1, $v0, .L80240A1C
/* 9B72A0 80240920 0062102A */   slt      $v0, $v1, $v0
/* 9B72A4 80240924 14400038 */  bnez      $v0, .L80240A08
/* 9B72A8 80240928 0260202D */   daddu    $a0, $s3, $zero
/* 9B72AC 8024092C 2402000F */  addiu     $v0, $zero, 0xf
/* 9B72B0 80240930 10620040 */  beq       $v1, $v0, .L80240A34
/* 9B72B4 80240934 24020063 */   addiu    $v0, $zero, 0x63
/* 9B72B8 80240938 10620043 */  beq       $v1, $v0, .L80240A48
/* 9B72BC 8024093C 00000000 */   nop      
/* 9B72C0 80240940 08090294 */  j         .L80240A50
/* 9B72C4 80240944 00000000 */   nop      
.L80240948:
/* 9B72C8 80240948 0280282D */  daddu     $a1, $s4, $zero
/* 9B72CC 8024094C 0C012568 */  jal       func_800495A0
/* 9B72D0 80240950 02A0302D */   daddu    $a2, $s5, $zero
/* 9B72D4 80240954 96220086 */  lhu       $v0, 0x86($s1)
/* 9B72D8 80240958 A64200A8 */  sh        $v0, 0xa8($s2)
.L8024095C:
/* 9B72DC 8024095C 0260202D */  daddu     $a0, $s3, $zero
/* 9B72E0 80240960 0280282D */  daddu     $a1, $s4, $zero
/* 9B72E4 80240964 0C0125AE */  jal       func_800496B8
/* 9B72E8 80240968 02A0302D */   daddu    $a2, $s5, $zero
/* 9B72EC 8024096C 08090294 */  j         .L80240A50
/* 9B72F0 80240970 00000000 */   nop      
.L80240974:
/* 9B72F4 80240974 0260202D */  daddu     $a0, $s3, $zero
/* 9B72F8 80240978 0280282D */  daddu     $a1, $s4, $zero
/* 9B72FC 8024097C 0C0126D1 */  jal       func_80049B44
/* 9B7300 80240980 02A0302D */   daddu    $a2, $s5, $zero
/* 9B7304 80240984 8E230088 */  lw        $v1, 0x88($s1)
/* 9B7308 80240988 24020006 */  addiu     $v0, $zero, 6
/* 9B730C 8024098C 14620014 */  bne       $v1, $v0, .L802409E0
/* 9B7310 80240990 0260202D */   daddu    $a0, $s3, $zero
/* 9B7314 80240994 0C00A67F */  jal       rand_int
/* 9B7318 80240998 24040064 */   addiu    $a0, $zero, 0x64
/* 9B731C 8024099C 28420021 */  slti      $v0, $v0, 0x21
/* 9B7320 802409A0 5040000F */  beql      $v0, $zero, .L802409E0
/* 9B7324 802409A4 0260202D */   daddu    $a0, $s3, $zero
/* 9B7328 802409A8 8E22008C */  lw        $v0, 0x8c($s1)
/* 9B732C 802409AC 10400005 */  beqz      $v0, .L802409C4
/* 9B7330 802409B0 3C020055 */   lui      $v0, 0x55
/* 9B7334 802409B4 3442002F */  ori       $v0, $v0, 0x2f
/* 9B7338 802409B8 AE20008C */  sw        $zero, 0x8c($s1)
/* 9B733C 802409BC 08090274 */  j         .L802409D0
/* 9B7340 802409C0 A22000B5 */   sb       $zero, 0xb5($s1)
.L802409C4:
/* 9B7344 802409C4 3442002E */  ori       $v0, $v0, 0x2e
/* 9B7348 802409C8 AE30008C */  sw        $s0, 0x8c($s1)
/* 9B734C 802409CC A23000B5 */  sb        $s0, 0xb5($s1)
.L802409D0:
/* 9B7350 802409D0 AE420028 */  sw        $v0, 0x28($s2)
/* 9B7354 802409D4 24020007 */  addiu     $v0, $zero, 7
/* 9B7358 802409D8 080902AF */  j         .L80240ABC
/* 9B735C 802409DC AE220090 */   sw       $v0, 0x90($s1)
.L802409E0:
/* 9B7360 802409E0 0280282D */  daddu     $a1, $s4, $zero
/* 9B7364 802409E4 0C012701 */  jal       func_80049C04
/* 9B7368 802409E8 02A0302D */   daddu    $a2, $s5, $zero
/* 9B736C 802409EC 08090294 */  j         .L80240A50
/* 9B7370 802409F0 00000000 */   nop      
.L802409F4:
/* 9B7374 802409F4 0260202D */  daddu     $a0, $s3, $zero
/* 9B7378 802409F8 0280282D */  daddu     $a1, $s4, $zero
/* 9B737C 802409FC 0C0900C4 */  jal       func_80240310_9B6C90
/* 9B7380 80240A00 02A0302D */   daddu    $a2, $s5, $zero
/* 9B7384 80240A04 0260202D */  daddu     $a0, $s3, $zero
.L80240A08:
/* 9B7388 80240A08 0280282D */  daddu     $a1, $s4, $zero
/* 9B738C 80240A0C 0C0900E3 */  jal       func_8024038C_9B6D0C
/* 9B7390 80240A10 02A0302D */   daddu    $a2, $s5, $zero
/* 9B7394 80240A14 08090294 */  j         .L80240A50
/* 9B7398 80240A18 00000000 */   nop      
.L80240A1C:
/* 9B739C 80240A1C 0260202D */  daddu     $a0, $s3, $zero
/* 9B73A0 80240A20 0280282D */  daddu     $a1, $s4, $zero
/* 9B73A4 80240A24 0C090130 */  jal       func_802404C0_9B6E40
/* 9B73A8 80240A28 02A0302D */   daddu    $a2, $s5, $zero
/* 9B73AC 80240A2C 08090294 */  j         .L80240A50
/* 9B73B0 80240A30 00000000 */   nop      
.L80240A34:
/* 9B73B4 80240A34 0280282D */  daddu     $a1, $s4, $zero
/* 9B73B8 80240A38 0C090189 */  jal       func_80240624_9B6FA4
/* 9B73BC 80240A3C 02A0302D */   daddu    $a2, $s5, $zero
/* 9B73C0 80240A40 08090294 */  j         .L80240A50
/* 9B73C4 80240A44 00000000 */   nop      
.L80240A48:
/* 9B73C8 80240A48 0C0129CF */  jal       func_8004A73C
/* 9B73CC 80240A4C 0260202D */   daddu    $a0, $s3, $zero
.L80240A50:
/* 9B73D0 80240A50 8E230088 */  lw        $v1, 0x88($s1)
/* 9B73D4 80240A54 24020006 */  addiu     $v0, $zero, 6
/* 9B73D8 80240A58 14620019 */  bne       $v1, $v0, .L80240AC0
/* 9B73DC 80240A5C 0000102D */   daddu    $v0, $zero, $zero
/* 9B73E0 80240A60 8E22008C */  lw        $v0, 0x8c($s1)
/* 9B73E4 80240A64 10400003 */  beqz      $v0, .L80240A74
/* 9B73E8 80240A68 24020001 */   addiu    $v0, $zero, 1
/* 9B73EC 80240A6C 0809029E */  j         .L80240A78
/* 9B73F0 80240A70 A22200B5 */   sb       $v0, 0xb5($s1)
.L80240A74:
/* 9B73F4 80240A74 A22000B5 */  sb        $zero, 0xb5($s1)
.L80240A78:
/* 9B73F8 80240A78 8E22008C */  lw        $v0, 0x8c($s1)
/* 9B73FC 80240A7C 1040000F */  beqz      $v0, .L80240ABC
/* 9B7400 80240A80 3C03FFAA */   lui      $v1, 0xffaa
/* 9B7404 80240A84 8E420028 */  lw        $v0, 0x28($s2)
/* 9B7408 80240A88 3463FFFC */  ori       $v1, $v1, 0xfffc
/* 9B740C 80240A8C 00431821 */  addu      $v1, $v0, $v1
/* 9B7410 80240A90 2C620015 */  sltiu     $v0, $v1, 0x15
/* 9B7414 80240A94 10400009 */  beqz      $v0, .L80240ABC
/* 9B7418 80240A98 00031080 */   sll      $v0, $v1, 2
/* 9B741C 80240A9C 3C018024 */  lui       $at, 0x8024
/* 9B7420 80240AA0 00220821 */  addu      $at, $at, $v0
/* 9B7424 80240AA4 8C224828 */  lw        $v0, 0x4828($at)
/* 9B7428 80240AA8 00400008 */  jr        $v0
/* 9B742C 80240AAC 00000000 */   nop      
/* 9B7430 80240AB0 8E420028 */  lw        $v0, 0x28($s2)
/* 9B7434 80240AB4 24420001 */  addiu     $v0, $v0, 1
/* 9B7438 80240AB8 AE420028 */  sw        $v0, 0x28($s2)
.L80240ABC:
/* 9B743C 80240ABC 0000102D */  daddu     $v0, $zero, $zero
.L80240AC0:
/* 9B7440 80240AC0 8FBF0068 */  lw        $ra, 0x68($sp)
/* 9B7444 80240AC4 8FB50064 */  lw        $s5, 0x64($sp)
/* 9B7448 80240AC8 8FB40060 */  lw        $s4, 0x60($sp)
/* 9B744C 80240ACC 8FB3005C */  lw        $s3, 0x5c($sp)
/* 9B7450 80240AD0 8FB20058 */  lw        $s2, 0x58($sp)
/* 9B7454 80240AD4 8FB10054 */  lw        $s1, 0x54($sp)
/* 9B7458 80240AD8 8FB00050 */  lw        $s0, 0x50($sp)
/* 9B745C 80240ADC 03E00008 */  jr        $ra
/* 9B7460 80240AE0 27BD0070 */   addiu    $sp, $sp, 0x70