.func StartOf_rfTxtCalendar :: .endfunc
;文件头
HeaderOf_rfTxtCalendar:
.word (rfTxtCalendar_001 - rfTxtCalendar_000 - 1),rfTxtCalendar_000
.word (rfTxtCalendar_002 - rfTxtCalendar_001 - 1),rfTxtCalendar_001
.word (rfTxtCalendar_003 - rfTxtCalendar_002 - 1),rfTxtCalendar_002
.word (rfTxtCalendar_004 - rfTxtCalendar_003 - 1),rfTxtCalendar_003
.word (rfTxtCalendar_005 - rfTxtCalendar_004 - 1),rfTxtCalendar_004
.word (FooterOf_rfTxtCalendar - rfTxtCalendar_005 - 1),rfTxtCalendar_005

;文件正文
MainOf_rfTxtCalendar:
rfTxtCalendar_000:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "春の月{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "春の月{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtCalendar_001:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "夏の月{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "夏の月{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtCalendar_002:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "秋の月{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "秋の月{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtCalendar_003:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "冬の月{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "冬の月{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtCalendar_004:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "年{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "年{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtCalendar_005:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "日{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "日{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－



;文件尾
FooterOf_rfTxtCalendar:
;无数据
.func EndOf_rfTxtCalendar :: .endfunc
