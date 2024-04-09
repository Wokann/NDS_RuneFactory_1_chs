NDSFileName             equ (".\Rune_factory_1_chs.nds")
EntranceOfArm9          equ 0x02000800
;UncompressArm9          equ 


;NitroFS lib
    FS_SeekFile         equ 0x020B9290
    FS_ReadFile         equ 0x020B92FC
    FS_CloseFile        equ 0x020B9438
    FS_OpenFile         equ 0x020B9480
    FS_InitFile         equ 0x020B97D0
    FS_Init             equ 0x020B9810
    FS_TryLoadTable     equ 0x020B984C
;;FSSeekFileMode
    FS_SEEK_SET         equ 0 /* seek from begin*/
    FS_SEEK_CUR         equ 1 /* seek from current*/
    FS_SEEK_END         equ 2 /* seek from end*/

.expfunc BIT(n)         ,(1 << (n))

DS_FRAME_RATE           equ 59.8261