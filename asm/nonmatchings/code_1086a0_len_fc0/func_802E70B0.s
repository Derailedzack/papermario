.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802E70B0
/* 108930 802E70B0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 108934 802E70B4 AFB10014 */  sw        $s1, 0x14($sp)
/* 108938 802E70B8 0080882D */  daddu     $s1, $a0, $zero
/* 10893C 802E70BC AFBF0018 */  sw        $ra, 0x18($sp)
/* 108940 802E70C0 AFB00010 */  sw        $s0, 0x10($sp)
/* 108944 802E70C4 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 108948 802E70C8 C6200064 */  lwc1      $f0, 0x64($s1)
/* 10894C 802E70CC 3C014334 */  lui       $at, 0x4334
/* 108950 802E70D0 44816000 */  mtc1      $at, $f12
/* 108954 802E70D4 0C00A6C9 */  jal       clamp_angle
/* 108958 802E70D8 46006301 */   sub.s    $f12, $f12, $f0
/* 10895C 802E70DC 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* 108960 802E70E0 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* 108964 802E70E4 C62C0048 */  lwc1      $f12, 0x48($s1)
/* 108968 802E70E8 C62E0050 */  lwc1      $f14, 0x50($s1)
/* 10896C 802E70EC 8E060028 */  lw        $a2, 0x28($s0)
/* 108970 802E70F0 8E070030 */  lw        $a3, 0x30($s0)
/* 108974 802E70F4 0C00A720 */  jal       atan2
/* 108978 802E70F8 46000506 */   mov.s    $f20, $f0
/* 10897C 802E70FC 0C00A6C9 */  jal       clamp_angle
/* 108980 802E7100 46000306 */   mov.s    $f12, $f0
/* 108984 802E7104 4600A501 */  sub.s     $f20, $f20, $f0
/* 108988 802E7108 8E020004 */  lw        $v0, 4($s0)
/* 10898C 802E710C 30420001 */  andi      $v0, $v0, 1
/* 108990 802E7110 1440002F */  bnez      $v0, .L802E71D0
/* 108994 802E7114 4600A505 */   abs.s    $f20, $f20
/* 108998 802E7118 92220006 */  lbu       $v0, 6($s1)
/* 10899C 802E711C 30420001 */  andi      $v0, $v0, 1
/* 1089A0 802E7120 1440002B */  bnez      $v0, .L802E71D0
/* 1089A4 802E7124 00000000 */   nop      
/* 1089A8 802E7128 3C014220 */  lui       $at, 0x4220
/* 1089AC 802E712C 44810000 */  mtc1      $at, $f0
/* 1089B0 802E7130 00000000 */  nop       
/* 1089B4 802E7134 4600A03E */  c.le.s    $f20, $f0
/* 1089B8 802E7138 00000000 */  nop       
/* 1089BC 802E713C 45010008 */  bc1t      .L802E7160
/* 1089C0 802E7140 00000000 */   nop      
/* 1089C4 802E7144 3C0143A0 */  lui       $at, 0x43a0
/* 1089C8 802E7148 44810000 */  mtc1      $at, $f0
/* 1089CC 802E714C 00000000 */  nop       
/* 1089D0 802E7150 4614003E */  c.le.s    $f0, $f20
/* 1089D4 802E7154 00000000 */  nop       
/* 1089D8 802E7158 4500001D */  bc1f      .L802E71D0
/* 1089DC 802E715C 00000000 */   nop      
.L802E7160:
/* 1089E0 802E7160 8E220000 */  lw        $v0, ($s1)
/* 1089E4 802E7164 34421000 */  ori       $v0, $v0, 0x1000
/* 1089E8 802E7168 AE220000 */  sw        $v0, ($s1)
/* 1089EC 802E716C 8E020004 */  lw        $v0, 4($s0)
/* 1089F0 802E7170 30420010 */  andi      $v0, $v0, 0x10
/* 1089F4 802E7174 1040001A */  beqz      $v0, .L802E71E0
/* 1089F8 802E7178 00000000 */   nop      
/* 1089FC 802E717C 92220006 */  lbu       $v0, 6($s1)
/* 108A00 802E7180 30420008 */  andi      $v0, $v0, 8
/* 108A04 802E7184 10400016 */  beqz      $v0, .L802E71E0
/* 108A08 802E7188 00000000 */   nop      
/* 108A0C 802E718C 0C043F5A */  jal       func_8010FD68
/* 108A10 802E7190 0220202D */   daddu    $a0, $s1, $zero
/* 108A14 802E7194 8E240040 */  lw        $a0, 0x40($s1)
/* 108A18 802E7198 A0800004 */  sb        $zero, 4($a0)
/* 108A1C 802E719C 8E220000 */  lw        $v0, ($s1)
/* 108A20 802E71A0 2403EFFF */  addiu     $v1, $zero, -0x1001
/* 108A24 802E71A4 00431024 */  and       $v0, $v0, $v1
/* 108A28 802E71A8 AE220000 */  sw        $v0, ($s1)
/* 108A2C 802E71AC 8C820010 */  lw        $v0, 0x10($a0)
/* 108A30 802E71B0 10400003 */  beqz      $v0, .L802E71C0
/* 108A34 802E71B4 00000000 */   nop      
/* 108A38 802E71B8 0C03805E */  jal       disable_player_input
/* 108A3C 802E71BC 00000000 */   nop      
.L802E71C0:
/* 108A40 802E71C0 0C03BCF9 */  jal       func_800EF3E4
/* 108A44 802E71C4 00000000 */   nop      
/* 108A48 802E71C8 080B9C78 */  j         .L802E71E0
/* 108A4C 802E71CC 00000000 */   nop      
.L802E71D0:
/* 108A50 802E71D0 8E220000 */  lw        $v0, ($s1)
/* 108A54 802E71D4 2403EFFF */  addiu     $v1, $zero, -0x1001
/* 108A58 802E71D8 00431024 */  and       $v0, $v0, $v1
/* 108A5C 802E71DC AE220000 */  sw        $v0, ($s1)
.L802E71E0:
/* 108A60 802E71E0 8FBF0018 */  lw        $ra, 0x18($sp)
/* 108A64 802E71E4 8FB10014 */  lw        $s1, 0x14($sp)
/* 108A68 802E71E8 8FB00010 */  lw        $s0, 0x10($sp)
/* 108A6C 802E71EC D7B40020 */  ldc1      $f20, 0x20($sp)
/* 108A70 802E71F0 03E00008 */  jr        $ra
/* 108A74 802E71F4 27BD0028 */   addiu    $sp, $sp, 0x28
