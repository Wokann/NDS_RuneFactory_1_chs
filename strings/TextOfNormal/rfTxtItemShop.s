.func StartOf_rfTxtItemShop :: .endfunc
;文件头
HeaderOf_rfTxtItemShop:
.word (rfTxtItemShop_001 - rfTxtItemShop_000 - 1),rfTxtItemShop_000
.word (FooterOf_rfTxtItemShop - rfTxtItemShop_001 - 1),rfTxtItemShop_001

;文件正文
MainOf_rfTxtItemShop:
rfTxtItemShop_000:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "買いますか？{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "要买吗？{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－


rfTxtItemShop_001:
;原文－－－－－－－－－－－－－－－－－－－－－－
;   .strn "売りますか？{结束1}"
;译文－－－－－－－－－－－－－－－－－－－－－－
    .strn "要卖吗？{结束1}"
;结束－－－－－－－－－－－－－－－－－－－－－－



;文件尾
FooterOf_rfTxtItemShop:
;无数据
.func EndOf_rfTxtItemShop :: .endfunc
