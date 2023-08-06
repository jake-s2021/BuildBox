	.file	"led_toggle.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.global	main
	.type	main, @function
main:
.LFB6:
.LM1:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
.LM2:
	cbi 55-32,0
.LM3:
	sbi 56-32,0
.LM4:
	sbi 55-32,0
.LM5:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	rcall __eerd_byte_tn13a
	cpse r24,__zero_reg__
.L2:
.LM6:
	sbi 56-32,1
.L11:
	ldi r24,lo8(1)
.LVL0:
.LM7:
	ldi r17,lo8(2)
.LBB18:
.LBB19:
.LBB20:
.LBB21:
.LM8:
	ldi r28,lo8(10000)
	ldi r29,hi8(10000)
.L8:
.LBE21:
.LBE20:
.LBE19:
.LBE18:
.LM9:
	tst r24
	breq .L4
.LVL1:
.L10:
	sbis 54-32,0
	rjmp .L5
	ldi r24,lo8(1)
.LVL2:
	rjmp .L4
.LVL3:
.L5:
.LM10:
	in r24,56-32
.LVL4:
	eor r24,r17
	out 56-32,r24
.LBB25:
.LBB24:
.LBB23:
.LBB22:
.LM11:
	movw r24,r28
.LVL5:
/* #APP */
 ;  105 "c:/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: sbiw r24,1
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE22:
.LBE23:
.LBE24:
.LBE25:
.LM12:
	in r22,56-32
	andi r22,lo8(2)
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.LVL6:
	rcall __eewr_byte_tn13a
	ldi r24,lo8(0)
.LVL7:
.L4:
.LM13:
	sbis 54-32,0
	rjmp .L8
.LBB26:
.LBB27:
.LBB28:
.LBB29:
.LM14:
	movw r24,r28
.LVL8:
/* #APP */
 ;  105 "c:/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: sbiw r24,1
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	rjmp .L10
.LBE29:
.LBE28:
.LBE27:
.LBE26:
.LFE6:
	.size	main, .-main
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0x24
	.byte	0xc
	.uleb128 0x20
	.uleb128 0x0
	.p2align	2
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.p2align	2
.LEFDE0:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.long	.LVL0-.Ltext0
	.long	.LVL4-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8-.Ltext0
	.long	.LFE6-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x13b
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF14
	.byte	0x1
	.long	.LASF15
	.long	.LASF16
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0x7c
	.long	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.byte	0x3
	.long	0x81
	.uleb128 0x6
	.long	.LASF9
	.byte	0x2
	.byte	0x67
	.long	0x3a
	.byte	0x0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.byte	0x3
	.long	0xb2
	.uleb128 0x6
	.long	.LASF10
	.byte	0x3
	.byte	0x6e
	.long	0xb2
	.uleb128 0x7
	.long	.LASF11
	.byte	0x3
	.byte	0x70
	.long	0x3a
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x71
	.long	0xb2
	.uleb128 0x8
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x9
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x7
	.long	0x33
	.long	.LFB6
	.long	.LFE6
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0xe
	.long	0x2c
	.long	.LLST1
	.uleb128 0xb
	.long	0x81
	.long	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x1e
	.long	0x10a
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x18
	.uleb128 0xd
	.long	0x68
	.long	.Ldebug_ranges0+0x30
	.byte	0x3
	.byte	0x82
	.uleb128 0xe
	.long	0x75
	.long	.LLST2
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x81
	.long	.LBB26
	.long	.LBE26
	.byte	0x1
	.byte	0x24
	.uleb128 0x10
	.long	.LBB27
	.long	.LBE27
	.uleb128 0xf
	.long	0x68
	.long	.LBB28
	.long	.LBE28
	.byte	0x3
	.byte	0x82
	.uleb128 0xe
	.long	0x75
	.long	.LLST3
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x17
	.word	0x2
	.long	.Ldebug_info0
	.long	0x13f
	.long	0xb9
	.string	"main"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB18-.Ltext0
	.long	.LBE18-.Ltext0
	.long	.LBB25-.Ltext0
	.long	.LBE25-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB19-.Ltext0
	.long	.LBE19-.Ltext0
	.long	.LBB24-.Ltext0
	.long	.LBE24-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB20-.Ltext0
	.long	.LBE20-.Ltext0
	.long	.LBB23-.Ltext0
	.long	.LBE23-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_line
	.long	.LELT0-.LSLT0
.LSLT0:
	.word	0x2
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"c:/winavr-20100110/lib/gcc/../../avr/include"
	.byte	0
	.ascii	"c:/winavr-20100110/lib/gcc/../../avr/include/util"
	.byte	0
	.byte	0x0
	.string	"led_toggle.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/delay_basic.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/delay.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x4
	.uleb128 0x2
	.byte	0x61
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -79
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x4
	.uleb128 0x2
	.byte	0x61
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -74
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x4
	.uleb128 0x2
	.byte	0x5b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"__count"
.LASF19:
	.string	"button_rel"
.LASF16:
	.string	"C:\\Users\\jakes\\OneDrive\\Documents\\Blender\\BuildBox\\avr_files"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"_delay_loop_2"
.LASF4:
	.string	"long unsigned int"
.LASF8:
	.string	"_delay_ms"
.LASF14:
	.string	"GNU C 4.3.3"
.LASF13:
	.string	"double"
.LASF12:
	.string	"__tmp"
.LASF18:
	.string	"main"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF5:
	.string	"long long int"
.LASF17:
	.string	"uint16_t"
.LASF15:
	.string	"led_toggle.c"
.LASF11:
	.string	"__ticks"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"__ms"
