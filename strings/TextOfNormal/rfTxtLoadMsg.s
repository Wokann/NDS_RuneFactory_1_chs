.func StartOf_rfTxtLoadMsg :: .endfunc
;文件头
HeaderOf_rfTxtLoadMsg:
.word (rfTxtLoadMsg_001 - rfTxtLoadMsg_000 - 1),rfTxtLoadMsg_000
.word (rfTxtLoadMsg_002 - rfTxtLoadMsg_001 - 1),rfTxtLoadMsg_001
.word (rfTxtLoadMsg_003 - rfTxtLoadMsg_002 - 1),rfTxtLoadMsg_002
.word (rfTxtLoadMsg_004 - rfTxtLoadMsg_003 - 1),rfTxtLoadMsg_003
.word (rfTxtLoadMsg_005 - rfTxtLoadMsg_004 - 1),rfTxtLoadMsg_004
.word (rfTxtLoadMsg_006 - rfTxtLoadMsg_005 - 1),rfTxtLoadMsg_005
.word (rfTxtLoadMsg_007 - rfTxtLoadMsg_006 - 1),rfTxtLoadMsg_006
.word (rfTxtLoadMsg_008 - rfTxtLoadMsg_007 - 1),rfTxtLoadMsg_007
.word (rfTxtLoadMsg_009 - rfTxtLoadMsg_008 - 1),rfTxtLoadMsg_008
.word (rfTxtLoadMsg_010 - rfTxtLoadMsg_009 - 1),rfTxtLoadMsg_009
.word (rfTxtLoadMsg_011 - rfTxtLoadMsg_010 - 1),rfTxtLoadMsg_010
.word (rfTxtLoadMsg_012 - rfTxtLoadMsg_011 - 1),rfTxtLoadMsg_011
.word (rfTxtLoadMsg_013 - rfTxtLoadMsg_012 - 1),rfTxtLoadMsg_012
.word (rfTxtLoadMsg_014 - rfTxtLoadMsg_013 - 1),rfTxtLoadMsg_013
.word (rfTxtLoadMsg_015 - rfTxtLoadMsg_014 - 1),rfTxtLoadMsg_014
.word (rfTxtLoadMsg_016 - rfTxtLoadMsg_015 - 1),rfTxtLoadMsg_015
.word (FooterOf_rfTxtLoadMsg - rfTxtLoadMsg_016 - 1),rfTxtLoadMsg_016

;文件正文
MainOf_rfTxtLoadMsg:
rfTxtLoadMsg_000:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "春{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "春{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_001:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "夏{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "夏{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_002:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "秋{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "秋{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_003:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "冬{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "冬{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_004:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "      消去してます・・・{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "      正在删除・・・{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_005:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "       消去しました。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "       删除完毕。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_006:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "   消去してもよろしいですか？{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "   真的要删除吗？{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_007:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "  消去するデータを選択してください。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "  请选择要删除的存档。{结束1}{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_008:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "よろしいですか？{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "确定吗？{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_009:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "      ロード中です。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "      正在读取。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_010:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "  セーブデータを選択してください。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "  请选择存档。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_011:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "セーブする時にデータが上書きされます。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "保存时将会覆盖存档。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_012:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "   セーブデータが壊れています。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "   存档已损坏。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_013:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "   セーブデータを初期化しました。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "   存档初始化完毕。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_014:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "   データが読めませんでした。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "   无法读取存档。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_015:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "電源を切ってカードを差し込み直して下さい{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "请关闭电源重新插入卡带。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtLoadMsg_016:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn " ゲームデータを初期化しています。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn " 正在初始化存档。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－



;文件尾
FooterOf_rfTxtLoadMsg:
;无数据
.func EndOf_rfTxtLoadMsg :: .endfunc
