.nds
.include ".\include\symbol.s"
;.include ".\include\video.s"
;.include ".\include\background.s"
;.include ".\include\dma.s"
;.include ".\include\input.s"

;字库程序部分
;.include ".\src\arm9_hook.s"
;.include ".\src\arm9_insert.s"
;.include ".\src\overlay9_0_hook.s"
.notice "chsfunction done."

;图片汉化部分
.include ".\graphic\graphic.s"
.notice "graphic done."

;文本汉化部分
.include ".\strings\strings.s"
.notice "text done."

;data数据部分
.include ".\data\data.s"

