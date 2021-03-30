.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80059768
/* 34B68 80059768 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 34B6C 8005976C AFB50024 */  sw        $s5, 0x24($sp)
/* 34B70 80059770 0080A82D */  daddu     $s5, $a0, $zero
/* 34B74 80059774 00A0202D */  daddu     $a0, $a1, $zero
/* 34B78 80059778 AFB60028 */  sw        $s6, 0x28($sp)
/* 34B7C 8005977C 00C0B02D */  daddu     $s6, $a2, $zero
/* 34B80 80059780 AFB40020 */  sw        $s4, 0x20($sp)
/* 34B84 80059784 8FB40040 */  lw        $s4, 0x40($sp)
/* 34B88 80059788 00073840 */  sll       $a3, $a3, 1
/* 34B8C 8005978C AFB00010 */  sw        $s0, 0x10($sp)
/* 34B90 80059790 00878021 */  addu      $s0, $a0, $a3
/* 34B94 80059794 AFBF002C */  sw        $ra, 0x2c($sp)
/* 34B98 80059798 AFB3001C */  sw        $s3, 0x1c($sp)
/* 34B9C 8005979C AFB20018 */  sw        $s2, 0x18($sp)
/* 34BA0 800597A0 AFB10014 */  sw        $s1, 0x14($sp)
/* 34BA4 800597A4 8EA20008 */  lw        $v0, 8($s5)
/* 34BA8 800597A8 8EA30000 */  lw        $v1, ($s5)
/* 34BAC 800597AC 00021040 */  sll       $v0, $v0, 1
/* 34BB0 800597B0 00623021 */  addu      $a2, $v1, $v0
/* 34BB4 800597B4 00D0102B */  sltu      $v0, $a2, $s0
/* 34BB8 800597B8 1040001C */  beqz      $v0, .L8005982C
/* 34BBC 800597BC 0280902D */   daddu    $s2, $s4, $zero
/* 34BC0 800597C0 26940008 */  addiu     $s4, $s4, 8
/* 34BC4 800597C4 00C48823 */  subu      $s1, $a2, $a0
/* 34BC8 800597C8 00118843 */  sra       $s1, $s1, 1
/* 34BCC 800597CC 00118840 */  sll       $s1, $s1, 1
/* 34BD0 800597D0 32230FFF */  andi      $v1, $s1, 0xfff
/* 34BD4 800597D4 00031B00 */  sll       $v1, $v1, 0xc
/* 34BD8 800597D8 32C20FFF */  andi      $v0, $s6, 0xfff
/* 34BDC 800597DC 3C130400 */  lui       $s3, 0x400
/* 34BE0 800597E0 00531025 */  or        $v0, $v0, $s3
/* 34BE4 800597E4 00621825 */  or        $v1, $v1, $v0
/* 34BE8 800597E8 02068023 */  subu      $s0, $s0, $a2
/* 34BEC 800597EC 00108043 */  sra       $s0, $s0, 1
/* 34BF0 800597F0 0C018798 */  jal       func_80061E60
/* 34BF4 800597F4 AE430000 */   sw       $v1, ($s2)
/* 34BF8 800597F8 AE420004 */  sw        $v0, 4($s2)
/* 34BFC 800597FC 0280902D */  daddu     $s2, $s4, $zero
/* 34C00 80059800 00108040 */  sll       $s0, $s0, 1
/* 34C04 80059804 32100FFF */  andi      $s0, $s0, 0xfff
/* 34C08 80059808 00108300 */  sll       $s0, $s0, 0xc
/* 34C0C 8005980C 02D18821 */  addu      $s1, $s6, $s1
/* 34C10 80059810 32310FFF */  andi      $s1, $s1, 0xfff
/* 34C14 80059814 02338825 */  or        $s1, $s1, $s3
/* 34C18 80059818 02118025 */  or        $s0, $s0, $s1
/* 34C1C 8005981C AE500000 */  sw        $s0, ($s2)
/* 34C20 80059820 8EA40000 */  lw        $a0, ($s5)
/* 34C24 80059824 08016613 */  j         .L8005984C
/* 34C28 80059828 26940008 */   addiu    $s4, $s4, 8
.L8005982C:
/* 34C2C 8005982C 26940008 */  addiu     $s4, $s4, 8
/* 34C30 80059830 30E20FFF */  andi      $v0, $a3, 0xfff
/* 34C34 80059834 00021300 */  sll       $v0, $v0, 0xc
/* 34C38 80059838 32C30FFF */  andi      $v1, $s6, 0xfff
/* 34C3C 8005983C 3C050400 */  lui       $a1, 0x400
/* 34C40 80059840 00651825 */  or        $v1, $v1, $a1
/* 34C44 80059844 00431025 */  or        $v0, $v0, $v1
/* 34C48 80059848 AE420000 */  sw        $v0, ($s2)
.L8005984C:
/* 34C4C 8005984C 0C018798 */  jal       func_80061E60
/* 34C50 80059850 00000000 */   nop
/* 34C54 80059854 AE420004 */  sw        $v0, 4($s2)
/* 34C58 80059858 0280102D */  daddu     $v0, $s4, $zero
/* 34C5C 8005985C 8FBF002C */  lw        $ra, 0x2c($sp)
/* 34C60 80059860 8FB60028 */  lw        $s6, 0x28($sp)
/* 34C64 80059864 8FB50024 */  lw        $s5, 0x24($sp)
/* 34C68 80059868 8FB40020 */  lw        $s4, 0x20($sp)
/* 34C6C 8005986C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 34C70 80059870 8FB20018 */  lw        $s2, 0x18($sp)
/* 34C74 80059874 8FB10014 */  lw        $s1, 0x14($sp)
/* 34C78 80059878 8FB00010 */  lw        $s0, 0x10($sp)
/* 34C7C 8005987C 03E00008 */  jr        $ra
/* 34C80 80059880 27BD0030 */   addiu    $sp, $sp, 0x30