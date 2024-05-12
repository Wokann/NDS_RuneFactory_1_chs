;该部分是res文件夹内的图片资源
.open ".\.temp\root\res\font12x12.NFTR",0
;替换从shiftJIs码表亚开始的汉字，可用空间总共为2965个汉字
;新字库汉字字模
.org 0x6A8C
    ;原版汉字字体为华综体，本次也使用该字体(原版为10x11，但对汉字来说有点辨识度低，故加入扩大版11x11)
    ;.incbin ".\graphic\font\chinese_char_tile_originhuazong_10x11.2bpp"
    .incbin ".\graphic\font\chinese_char_tile_originhuazong_11x11.2bpp"
    ;点阵体
    ;.incbin ".\graphic\font\chinese_char_tile_piexlsongti_11x11.2bpp"
;新字库汉字字模统一宽度相关数据为：start width length: 01 0A 0C (10x11) 00 0B 0C (11x11)
.org 0x2146C
    ;.incbin ".\graphic\font\chinese_char_width_10x11.bin"
    .incbin ".\graphic\font\chinese_char_width_11x11.bin"
.close

.create ".\.temp\root\res\obj_input02.NCGR",0
    .incbin ".\graphic\res\obj_input02.NCGR"
.close

.create ".\.temp\root\res\obj_ok_cansel.NCGR",0
    .incbin ".\graphic\res\obj_ok_cansel.NCGR"
.close

.create ".\.temp\root\res\obj_reset.NCGR",0
    .incbin ".\graphic\res\obj_reset.NCGR"
.close

.create ".\.temp\root\res\obj_sort_button.NCGR",0
    .incbin ".\graphic\res\obj_sort_button.NCGR"
.close

.create ".\.temp\root\res\obj_title_menu01.NCGR",0
    .incbin ".\graphic\res\obj_title_menu01.NCGR"
.close

.create ".\.temp\root\res\obj_yes_no.NCGR",0
    .incbin ".\graphic\res\obj_yes_no.NCGR"
.close

.create ".\.temp\root\res\title_bgA.NCGR",0
    .incbin ".\graphic\res\title_bgA.NCGR"
.close

.create ".\.temp\root\res\title_bgB.NCGR",0
    .incbin ".\graphic\res\title_bgB.NCGR"
.close

.create ".\.temp\root\res\title_bgC.NCGR",0
    .incbin ".\graphic\res\title_bgC.NCGR"
.close

.create ".\.temp\root\res\win_caltop01.NCGR",0
    .incbin ".\graphic\res\win_caltop01.NCGR"
.close

.create ".\.temp\root\res\win_camp01.NCGR",0
    .incbin ".\graphic\res\win_camp01.NCGR"
.close

.create ".\.temp\root\res\win_camp02.NCGR",0
    .incbin ".\graphic\res\win_camp02.NCGR"
.close

.create ".\.temp\root\res\win_camp03.NCGR",0
    .incbin ".\graphic\res\win_camp03.NCGR"
.close

.create ".\.temp\root\res\win_camp04.NCGR",0
    .incbin ".\graphic\res\win_camp04.NCGR"
.close

.create ".\.temp\root\res\win_camp05.NCGR",0
    .incbin ".\graphic\res\win_camp05.NCGR"
.close

.create ".\.temp\root\res\win_camp07.NCGR",0
    .incbin ".\graphic\res\win_camp07.NCGR"
.close

.create ".\.temp\root\res\win_camp08.NCGR",0
    .incbin ".\graphic\res\win_camp08.NCGR"
.close

.create ".\.temp\root\res\win_closet01.NCGR",0
    .incbin ".\graphic\res\win_closet01.NCGR"
.close

.create ".\.temp\root\res\win_ctop01.NCGR",0
    .incbin ".\graphic\res\win_ctop01.NCGR"
.close

.create ".\.temp\root\res\win_ctop05.NCGR",0
    .incbin ".\graphic\res\win_ctop05.NCGR"
.close

.create ".\.temp\root\res\win_fridge01.NCGR",0
    .incbin ".\graphic\res\win_fridge01.NCGR"
.close

.create ".\.temp\root\res\win_intop01.NCGR",0
    .incbin ".\graphic\res\win_intop01.NCGR"
.close

.create ".\.temp\root\res\win_load01.NCGR",0
    .incbin ".\graphic\res\win_load01.NCGR"
.close

.create ".\.temp\root\res\win_pict02.NCGR",0
    .incbin ".\graphic\res\win_pict02.NCGR"
.close

.create ".\.temp\root\res\win_shop01.NCGR",0
    .incbin ".\graphic\res\win_shop01.NCGR"
.close

.create ".\.temp\root\res\win_skil11.NCGR",0
    .incbin ".\graphic\res\win_skil11.NCGR"
.close

.create ".\.temp\root\res\win_skill01.NCGR",0
    .incbin ".\graphic\res\win_skill01.NCGR"
.close

.create ".\.temp\root\res\win_sktop01.NCGR",0
    .incbin ".\graphic\res\win_sktop01.NCGR"
.close


