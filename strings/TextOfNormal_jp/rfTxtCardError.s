.func StartOf_rfTxtCardError :: .endfunc
;文件头
HeaderOf_rfTxtCardError:
.word (rfTxtCardError_001 - rfTxtCardError_000 - 1),rfTxtCardError_000
.word (rfTxtCardError_002 - rfTxtCardError_001 - 1),rfTxtCardError_001
.word (rfTxtCardError_003 - rfTxtCardError_002 - 1),rfTxtCardError_002
.word (FooterOf_rfTxtCardError - rfTxtCardError_003 - 1),rfTxtCardError_003

;文件正文
MainOf_rfTxtCardError:
rfTxtCardError_000:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "セーブデータが壊れています。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "セーブデータが壊れています。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtCardError_001:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "セーブデータを初期化しました。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "セーブデータを初期化しました。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtCardError_002:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "データが読めませんでした。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "データが読めませんでした。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtCardError_003:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "電源を切ってカードを差し込み直して下さい。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "電源を切ってカードを差し込み直して下さい。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－



;文件尾
FooterOf_rfTxtCardError:
;无数据
.func EndOf_rfTxtCardError :: .endfunc
