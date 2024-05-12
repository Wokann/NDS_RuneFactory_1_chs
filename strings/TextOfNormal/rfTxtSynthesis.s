.func StartOf_rfTxtSynthesis :: .endfunc
;文件头
HeaderOf_rfTxtSynthesis:
.word (rfTxtSynthesis_001 - rfTxtSynthesis_000 - 1),rfTxtSynthesis_000
.word (rfTxtSynthesis_002 - rfTxtSynthesis_001 - 1),rfTxtSynthesis_001
.word (rfTxtSynthesis_003 - rfTxtSynthesis_002 - 1),rfTxtSynthesis_002
.word (rfTxtSynthesis_004 - rfTxtSynthesis_003 - 1),rfTxtSynthesis_003
.word (rfTxtSynthesis_005 - rfTxtSynthesis_004 - 1),rfTxtSynthesis_004
.word (rfTxtSynthesis_006 - rfTxtSynthesis_005 - 1),rfTxtSynthesis_005
.word (rfTxtSynthesis_007 - rfTxtSynthesis_006 - 1),rfTxtSynthesis_006
.word (FooterOf_rfTxtSynthesis - rfTxtSynthesis_007 - 1),rfTxtSynthesis_007

;文件正文
MainOf_rfTxtSynthesis:
rfTxtSynthesis_000:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "装飾のスキルが上がりました。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "装饰技能提升了。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtSynthesis_001:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "料理のスキルが上がりました。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "烹饪技能提升了。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtSynthesis_002:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "薬学のスキルが上がりました。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "药学技能提升了。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtSynthesis_003:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "鍛冶のスキルがあがりました。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "锻造技能提升了。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtSynthesis_004:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "失敗！{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "失败！{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtSynthesis_005:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "合成に失敗しました。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "合成失败。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtSynthesis_006:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "合成に成功しました。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "合成成功。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtSynthesis_007:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "持ち物がいっぱいです。{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "持有物已满。{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－



;文件尾
FooterOf_rfTxtSynthesis:
;无数据
.func EndOf_rfTxtSynthesis :: .endfunc
