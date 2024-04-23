.func StartOf_rfTxtNameEntry :: .endfunc
;文件头
HeaderOf_rfTxtNameEntry:
.word (rfTxtNameEntry_001 - rfTxtNameEntry_000 - 1),rfTxtNameEntry_000
.word (rfTxtNameEntry_002 - rfTxtNameEntry_001 - 1),rfTxtNameEntry_001
.word (rfTxtNameEntry_003 - rfTxtNameEntry_002 - 1),rfTxtNameEntry_002
.word (FooterOf_rfTxtNameEntry - rfTxtNameEntry_003 - 1),rfTxtNameEntry_003

;文件正文
MainOf_rfTxtNameEntry:
rfTxtNameEntry_000:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "主人公の名前を入力してください．{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "主人公の名前を入力してください．{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtNameEntry_001:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "牧場の名前を入力してください．{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "牧場の名前を入力してください．{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtNameEntry_002:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "モンスターの名前を入力してください．{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "モンスターの名前を入力してください．{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtNameEntry_003:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "牧場{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "牧場{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－



;文件尾
FooterOf_rfTxtNameEntry:
;无数据
.func EndOf_rfTxtNameEntry :: .endfunc
