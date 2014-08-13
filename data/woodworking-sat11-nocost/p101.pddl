; woodworking task with 272 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 232927

(define (problem wood-prob-sat-101)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red white black mauve blue green - acolour
    mahogany cherry pine walnut beech teak oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    
    (boardsize-successor s0 s1)
    (boardsize-successor s1 s2)
    (boardsize-successor s2 s3)
    (boardsize-successor s3 s4)
    (boardsize-successor s4 s5)
    (boardsize-successor s5 s6)
    (boardsize-successor s6 s7)
    (boardsize-successor s7 s8)
    (boardsize-successor s8 s9)
    (boardsize-successor s9 s10)
    (boardsize-successor s10 s11)
    (boardsize-successor s11 s12)
    (has-colour glazer0 mauve)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 white)
    (has-colour glazer1 green)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 black)
    (wood p4 mahogany)
    (surface-condition p4 rough)
    (treatment p4 colourfragments)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 red)
    (wood p12 walnut)
    (surface-condition p12 rough)
    (treatment p12 varnished)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 blue)
    (wood p14 oak)
    (surface-condition p14 verysmooth)
    (treatment p14 colourfragments)
    (goalsize p14 small)
    
    
    
    
    (available p15)
    (colour p15 mauve)
    (wood p15 mahogany)
    (surface-condition p15 rough)
    (treatment p15 colourfragments)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 natural)
    (wood p18 teak)
    (surface-condition p18 rough)
    (treatment p18 colourfragments)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 black)
    (wood p28 walnut)
    (surface-condition p28 verysmooth)
    (treatment p28 colourfragments)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 natural)
    (wood p32 oak)
    (surface-condition p32 rough)
    (treatment p32 colourfragments)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 white)
    (wood p36 walnut)
    (surface-condition p36 verysmooth)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (available p39)
    (colour p39 black)
    (wood p39 pine)
    (surface-condition p39 rough)
    (treatment p39 colourfragments)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 black)
    (wood p41 oak)
    (surface-condition p41 verysmooth)
    (treatment p41 varnished)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 red)
    (wood p43 pine)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 large)
    
    
    
    
    (available p44)
    (colour p44 black)
    (wood p44 walnut)
    (surface-condition p44 verysmooth)
    (treatment p44 glazed)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 black)
    (wood p46 mahogany)
    (surface-condition p46 smooth)
    (treatment p46 glazed)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 mauve)
    (wood p51 pine)
    (surface-condition p51 rough)
    (treatment p51 glazed)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 mauve)
    (wood p55 walnut)
    (surface-condition p55 verysmooth)
    (treatment p55 varnished)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 natural)
    (wood p66 mahogany)
    (surface-condition p66 rough)
    (treatment p66 varnished)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (available p70)
    (colour p70 red)
    (wood p70 teak)
    (surface-condition p70 smooth)
    (treatment p70 colourfragments)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (available p72)
    (colour p72 red)
    (wood p72 walnut)
    (surface-condition p72 rough)
    (treatment p72 colourfragments)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 green)
    (wood p80 oak)
    (surface-condition p80 rough)
    (treatment p80 colourfragments)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (available p103)
    (colour p103 mauve)
    (wood p103 cherry)
    (surface-condition p103 verysmooth)
    (treatment p103 varnished)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (available p105)
    (colour p105 green)
    (wood p105 teak)
    (surface-condition p105 smooth)
    (treatment p105 glazed)
    (goalsize p105 large)
    
    
    
    
    (available p106)
    (colour p106 black)
    (wood p106 teak)
    (surface-condition p106 smooth)
    (treatment p106 glazed)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (available p120)
    (colour p120 red)
    (wood p120 teak)
    (surface-condition p120 verysmooth)
    (treatment p120 colourfragments)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (available p126)
    (colour p126 green)
    (wood p126 teak)
    (surface-condition p126 smooth)
    (treatment p126 colourfragments)
    (goalsize p126 small)
    
    
    
    
    (available p127)
    (colour p127 green)
    (wood p127 teak)
    (surface-condition p127 rough)
    (treatment p127 colourfragments)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (available p133)
    (colour p133 blue)
    (wood p133 pine)
    (surface-condition p133 verysmooth)
    (treatment p133 colourfragments)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (available p139)
    (colour p139 red)
    (wood p139 walnut)
    (surface-condition p139 verysmooth)
    (treatment p139 varnished)
    (goalsize p139 large)
    
    
    
    
    (available p140)
    (colour p140 blue)
    (wood p140 teak)
    (surface-condition p140 smooth)
    (treatment p140 colourfragments)
    (goalsize p140 large)
    
    
    
    
    (available p141)
    (colour p141 green)
    (wood p141 mahogany)
    (surface-condition p141 verysmooth)
    (treatment p141 glazed)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (available p146)
    (colour p146 black)
    (wood p146 pine)
    (surface-condition p146 verysmooth)
    (treatment p146 glazed)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (available p152)
    (colour p152 black)
    (wood p152 mahogany)
    (surface-condition p152 verysmooth)
    (treatment p152 colourfragments)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (available p160)
    (colour p160 mauve)
    (wood p160 oak)
    (surface-condition p160 rough)
    (treatment p160 colourfragments)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (available p162)
    (colour p162 mauve)
    (wood p162 teak)
    (surface-condition p162 smooth)
    (treatment p162 glazed)
    (goalsize p162 small)
    
    
    
    
    (available p163)
    (colour p163 green)
    (wood p163 oak)
    (surface-condition p163 smooth)
    (treatment p163 varnished)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (available p173)
    (colour p173 white)
    (wood p173 mahogany)
    (surface-condition p173 smooth)
    (treatment p173 glazed)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (available p180)
    (colour p180 natural)
    (wood p180 beech)
    (surface-condition p180 rough)
    (treatment p180 colourfragments)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (available p184)
    (colour p184 mauve)
    (wood p184 teak)
    (surface-condition p184 rough)
    (treatment p184 varnished)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (available p187)
    (colour p187 mauve)
    (wood p187 pine)
    (surface-condition p187 smooth)
    (treatment p187 glazed)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (available p190)
    (colour p190 black)
    (wood p190 mahogany)
    (surface-condition p190 smooth)
    (treatment p190 colourfragments)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (available p194)
    (colour p194 black)
    (wood p194 cherry)
    (surface-condition p194 smooth)
    (treatment p194 glazed)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (available p196)
    (colour p196 green)
    (wood p196 beech)
    (surface-condition p196 verysmooth)
    (treatment p196 glazed)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (available p201)
    (colour p201 black)
    (wood p201 pine)
    (surface-condition p201 smooth)
    (treatment p201 varnished)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (available p205)
    (colour p205 mauve)
    (wood p205 mahogany)
    (surface-condition p205 rough)
    (treatment p205 glazed)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (available p215)
    (colour p215 natural)
    (wood p215 cherry)
    (surface-condition p215 smooth)
    (treatment p215 glazed)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (available p217)
    (colour p217 green)
    (wood p217 mahogany)
    (surface-condition p217 rough)
    (treatment p217 colourfragments)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (available p220)
    (colour p220 red)
    (wood p220 mahogany)
    (surface-condition p220 verysmooth)
    (treatment p220 varnished)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (available p226)
    (colour p226 mauve)
    (wood p226 teak)
    (surface-condition p226 smooth)
    (treatment p226 colourfragments)
    (goalsize p226 large)
    
    
    
    
    (unused p227)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (available p229)
    (colour p229 natural)
    (wood p229 mahogany)
    (surface-condition p229 verysmooth)
    (treatment p229 colourfragments)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 small)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (available p236)
    (colour p236 black)
    (wood p236 oak)
    (surface-condition p236 smooth)
    (treatment p236 varnished)
    (goalsize p236 small)
    
    
    
    
    (available p237)
    (colour p237 blue)
    (wood p237 mahogany)
    (surface-condition p237 smooth)
    (treatment p237 colourfragments)
    (goalsize p237 large)
    
    
    
    
    (available p238)
    (colour p238 green)
    (wood p238 beech)
    (surface-condition p238 rough)
    (treatment p238 colourfragments)
    (goalsize p238 small)
    
    
    
    
    (available p239)
    (colour p239 mauve)
    (wood p239 oak)
    (surface-condition p239 verysmooth)
    (treatment p239 glazed)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (available p241)
    (colour p241 red)
    (wood p241 walnut)
    (surface-condition p241 verysmooth)
    (treatment p241 varnished)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 small)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (available p247)
    (colour p247 blue)
    (wood p247 beech)
    (surface-condition p247 verysmooth)
    (treatment p247 glazed)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (available p249)
    (colour p249 red)
    (wood p249 pine)
    (surface-condition p249 smooth)
    (treatment p249 colourfragments)
    (goalsize p249 medium)
    
    
    
    
    (unused p250)
    (goalsize p250 medium)
    
    
    
    
    (available p251)
    (colour p251 green)
    (wood p251 beech)
    (surface-condition p251 verysmooth)
    (treatment p251 glazed)
    (goalsize p251 large)
    
    
    
    
    (unused p252)
    (goalsize p252 large)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 small)
    
    
    
    
    (unused p256)
    (goalsize p256 large)
    
    
    
    
    (unused p257)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (unused p259)
    (goalsize p259 large)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (unused p262)
    (goalsize p262 large)
    
    
    
    
    (unused p263)
    (goalsize p263 large)
    
    
    
    
    (unused p264)
    (goalsize p264 large)
    
    
    
    
    (unused p265)
    (goalsize p265 small)
    
    
    
    
    (unused p266)
    (goalsize p266 small)
    
    
    
    
    (unused p267)
    (goalsize p267 small)
    
    
    
    
    (unused p268)
    (goalsize p268 medium)
    
    
    
    
    (unused p269)
    (goalsize p269 large)
    
    
    
    
    (unused p270)
    (goalsize p270 small)
    
    
    
    
    (unused p271)
    (goalsize p271 medium)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s10)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s5)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s9)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s11)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s11)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s7)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s3)
    (wood b19 mahogany)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s2)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s6)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s6)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s12)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s11)
    (wood b34 pine)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s7)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s8)
    (wood b38 walnut)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s6)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s10)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s7)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s10)
    (wood b43 walnut)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s7)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s5)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s6)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 teak)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s10)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s5)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 teak)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s6)
    (wood b52 teak)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s9)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s10)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s8)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s3)
    (wood b56 teak)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s11)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s9)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s6)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 beech)
    (surface-condition b60 smooth)
    (available b60)
    (boardsize b61 s8)
    (wood b61 beech)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s8)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s9)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s7)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s9)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s6)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s3)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (wood p2 oak)
      (surface-condition p2 smooth)
      (available p3)
      (wood p3 mahogany)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 blue)
      (wood p4 mahogany)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 green)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (wood p6 teak)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (wood p7 teak)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 green)
      (wood p8 cherry)
      (available p9)
      (colour p9 black)
      (wood p9 cherry)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 green)
      (wood p10 pine)
      (available p11)
      (wood p11 mahogany)
      (treatment p11 glazed)
      (available p12)
      (colour p12 black)
      (wood p12 walnut)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 pine)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 natural)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 mauve)
      (surface-condition p16 verysmooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 black)
      (wood p17 walnut)
      (available p18)
      (wood p18 teak)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 mauve)
      (wood p19 beech)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 red)
      (wood p20 beech)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (wood p21 oak)
      (surface-condition p21 smooth)
      (available p22)
      (wood p22 mahogany)
      (treatment p22 glazed)
      (available p23)
      (colour p23 natural)
      (wood p23 teak)
      (available p24)
      (wood p24 mahogany)
      (treatment p24 varnished)
      (available p25)
      (colour p25 red)
      (treatment p25 varnished)
      (available p26)
      (wood p26 oak)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 black)
      (wood p27 cherry)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 red)
      (wood p28 walnut)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 natural)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 mauve)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (wood p31 oak)
      (treatment p31 glazed)
      (available p32)
      (colour p32 red)
      (wood p32 oak)
      (available p33)
      (colour p33 black)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 white)
      (wood p34 oak)
      (surface-condition p34 smooth)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 cherry)
      (surface-condition p37 verysmooth)
      (available p38)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 red)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 blue)
      (treatment p40 glazed)
      (available p41)
      (colour p41 natural)
      (treatment p41 glazed)
      (available p42)
      (colour p42 red)
      (surface-condition p42 verysmooth)
      (available p43)
      (colour p43 black)
      (wood p43 pine)
      (available p44)
      (colour p44 blue)
      (wood p44 walnut)
      (available p45)
      (colour p45 blue)
      (wood p45 cherry)
      (available p46)
      (colour p46 red)
      (wood p46 mahogany)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 green)
      (wood p48 cherry)
      (available p49)
      (colour p49 blue)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 natural)
      (wood p50 beech)
      (available p51)
      (colour p51 green)
      (wood p51 pine)
      (available p52)
      (colour p52 blue)
      (wood p52 beech)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (wood p53 pine)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 natural)
      (treatment p54 glazed)
      (available p55)
      (colour p55 red)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 black)
      (wood p56 walnut)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 green)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 teak)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 natural)
      (surface-condition p59 verysmooth)
      (available p60)
      (wood p60 walnut)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (wood p62 cherry)
      (surface-condition p62 verysmooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 natural)
      (wood p63 walnut)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 white)
      (wood p64 mahogany)
      (treatment p64 glazed)
      (available p65)
      (colour p65 white)
      (wood p65 beech)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 natural)
      (wood p68 pine)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (wood p70 teak)
      (treatment p70 varnished)
      (available p71)
      (colour p71 blue)
      (wood p71 beech)
      (treatment p71 varnished)
      (available p72)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 blue)
      (treatment p73 varnished)
      (available p74)
      (wood p74 cherry)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 white)
      (wood p75 teak)
      (treatment p75 glazed)
      (available p76)
      (wood p76 oak)
      (surface-condition p76 verysmooth)
      (available p77)
      (wood p77 beech)
      (treatment p77 varnished)
      (available p78)
      (colour p78 black)
      (wood p78 oak)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 black)
      (wood p79 oak)
      (available p80)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 mauve)
      (wood p81 teak)
      (available p82)
      (colour p82 mauve)
      (wood p82 oak)
      (treatment p82 glazed)
      (available p83)
      (colour p83 blue)
      (treatment p83 varnished)
      (available p84)
      (colour p84 blue)
      (treatment p84 glazed)
      (available p85)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 white)
      (wood p86 cherry)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (surface-condition p87 smooth)
      (treatment p87 glazed)
      (available p88)
      (wood p88 beech)
      (treatment p88 glazed)
      (available p89)
      (colour p89 black)
      (wood p89 teak)
      (treatment p89 varnished)
      (available p90)
      (colour p90 green)
      (wood p90 oak)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 green)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 natural)
      (surface-condition p93 verysmooth)
      (available p94)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 white)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (wood p97 beech)
      (surface-condition p97 smooth)
      (available p98)
      (colour p98 natural)
      (wood p98 beech)
      (surface-condition p98 smooth)
      (available p99)
      (colour p99 green)
      (surface-condition p99 verysmooth)
      (available p100)
      (colour p100 mauve)
      (wood p100 teak)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 mauve)
      (surface-condition p101 smooth)
      (available p102)
      (colour p102 black)
      (wood p102 walnut)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (wood p103 cherry)
      (treatment p103 glazed)
      (available p104)
      (colour p104 green)
      (wood p104 pine)
      (treatment p104 glazed)
      (available p105)
      (colour p105 white)
      (treatment p105 varnished)
      (available p106)
      (colour p106 green)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 red)
      (wood p107 walnut)
      (surface-condition p107 smooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 blue)
      (wood p108 teak)
      (treatment p108 varnished)
      (available p109)
      (wood p109 mahogany)
      (treatment p109 varnished)
      (available p110)
      (colour p110 black)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 mauve)
      (treatment p111 glazed)
      (available p112)
      (wood p112 walnut)
      (surface-condition p112 smooth)
      (available p113)
      (colour p113 mauve)
      (wood p113 walnut)
      (surface-condition p113 smooth)
      (treatment p113 varnished)
      (available p114)
      (wood p114 teak)
      (treatment p114 varnished)
      (available p115)
      (colour p115 blue)
      (wood p115 beech)
      (available p116)
      (colour p116 white)
      (wood p116 walnut)
      (surface-condition p116 smooth)
      (treatment p116 varnished)
      (available p117)
      (surface-condition p117 verysmooth)
      (treatment p117 glazed)
      (available p118)
      (wood p118 cherry)
      (treatment p118 glazed)
      (available p119)
      (colour p119 mauve)
      (treatment p119 glazed)
      (available p120)
      (colour p120 mauve)
      (surface-condition p120 verysmooth)
      (available p121)
      (wood p121 oak)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 red)
      (treatment p122 varnished)
      (available p123)
      (colour p123 white)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 white)
      (wood p124 beech)
      (surface-condition p124 verysmooth)
      (treatment p124 glazed)
      (available p125)
      (colour p125 red)
      (wood p125 pine)
      (treatment p125 glazed)
      (available p126)
      (wood p126 teak)
      (surface-condition p126 verysmooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 blue)
      (wood p127 teak)
      (available p128)
      (wood p128 beech)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 black)
      (wood p129 mahogany)
      (surface-condition p129 verysmooth)
      (available p130)
      (colour p130 mauve)
      (wood p130 pine)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 natural)
      (surface-condition p131 smooth)
      (available p132)
      (surface-condition p132 smooth)
      (treatment p132 varnished)
      (available p133)
      (wood p133 pine)
      (surface-condition p133 smooth)
      (available p134)
      (colour p134 blue)
      (surface-condition p134 smooth)
      (available p135)
      (wood p135 cherry)
      (surface-condition p135 verysmooth)
      (treatment p135 glazed)
      (available p136)
      (wood p136 teak)
      (treatment p136 glazed)
      (available p137)
      (surface-condition p137 smooth)
      (treatment p137 glazed)
      (available p138)
      (wood p138 walnut)
      (treatment p138 glazed)
      (available p139)
      (wood p139 walnut)
      (treatment p139 glazed)
      (available p140)
      (colour p140 black)
      (treatment p140 glazed)
      (available p141)
      (colour p141 white)
      (wood p141 mahogany)
      (surface-condition p141 verysmooth)
      (treatment p141 glazed)
      (available p142)
      (colour p142 black)
      (wood p142 pine)
      (treatment p142 glazed)
      (available p143)
      (wood p143 oak)
      (surface-condition p143 smooth)
      (available p144)
      (colour p144 black)
      (wood p144 teak)
      (surface-condition p144 verysmooth)
      (treatment p144 varnished)
      (available p145)
      (surface-condition p145 verysmooth)
      (treatment p145 varnished)
      (available p146)
      (colour p146 white)
      (surface-condition p146 smooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 natural)
      (wood p147 walnut)
      (surface-condition p147 verysmooth)
      (treatment p147 glazed)
      (available p148)
      (colour p148 blue)
      (treatment p148 glazed)
      (available p149)
      (colour p149 black)
      (surface-condition p149 smooth)
      (available p150)
      (wood p150 teak)
      (surface-condition p150 verysmooth)
      (available p151)
      (colour p151 natural)
      (surface-condition p151 smooth)
      (available p152)
      (colour p152 mauve)
      (wood p152 mahogany)
      (surface-condition p152 verysmooth)
      (treatment p152 varnished)
      (available p153)
      (wood p153 beech)
      (treatment p153 glazed)
      (available p154)
      (wood p154 cherry)
      (surface-condition p154 smooth)
      (available p155)
      (colour p155 red)
      (wood p155 pine)
      (surface-condition p155 verysmooth)
      (available p156)
      (wood p156 teak)
      (treatment p156 glazed)
      (available p157)
      (wood p157 cherry)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 green)
      (surface-condition p158 verysmooth)
      (available p159)
      (colour p159 blue)
      (surface-condition p159 verysmooth)
      (available p160)
      (wood p160 oak)
      (surface-condition p160 verysmooth)
      (available p161)
      (colour p161 mauve)
      (wood p161 teak)
      (available p162)
      (colour p162 black)
      (wood p162 teak)
      (surface-condition p162 verysmooth)
      (available p163)
      (colour p163 red)
      (wood p163 oak)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (wood p164 cherry)
      (surface-condition p164 verysmooth)
      (available p165)
      (surface-condition p165 smooth)
      (treatment p165 glazed)
      (available p166)
      (wood p166 mahogany)
      (surface-condition p166 verysmooth)
      (available p167)
      (colour p167 red)
      (wood p167 beech)
      (available p168)
      (colour p168 red)
      (wood p168 pine)
      (surface-condition p168 verysmooth)
      (treatment p168 glazed)
      (available p169)
      (colour p169 red)
      (wood p169 mahogany)
      (surface-condition p169 smooth)
      (treatment p169 varnished)
      (available p170)
      (colour p170 red)
      (surface-condition p170 smooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 blue)
      (wood p171 mahogany)
      (surface-condition p171 verysmooth)
      (treatment p171 glazed)
      (available p172)
      (colour p172 mauve)
      (wood p172 teak)
      (available p173)
      (colour p173 blue)
      (wood p173 mahogany)
      (treatment p173 glazed)
      (available p174)
      (colour p174 red)
      (wood p174 teak)
      (treatment p174 glazed)
      (available p175)
      (wood p175 oak)
      (surface-condition p175 smooth)
      (treatment p175 varnished)
      (available p176)
      (surface-condition p176 verysmooth)
      (treatment p176 varnished)
      (available p177)
      (colour p177 mauve)
      (wood p177 oak)
      (surface-condition p177 verysmooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 green)
      (treatment p178 glazed)
      (available p179)
      (colour p179 blue)
      (wood p179 walnut)
      (surface-condition p179 verysmooth)
      (treatment p179 glazed)
      (available p180)
      (surface-condition p180 verysmooth)
      (treatment p180 varnished)
      (available p181)
      (wood p181 mahogany)
      (treatment p181 varnished)
      (available p182)
      (surface-condition p182 verysmooth)
      (treatment p182 glazed)
      (available p183)
      (colour p183 white)
      (wood p183 pine)
      (surface-condition p183 verysmooth)
      (available p184)
      (colour p184 white)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 mauve)
      (wood p185 mahogany)
      (surface-condition p185 verysmooth)
      (treatment p185 varnished)
      (available p186)
      (surface-condition p186 smooth)
      (treatment p186 glazed)
      (available p187)
      (colour p187 red)
      (treatment p187 varnished)
      (available p188)
      (colour p188 red)
      (wood p188 beech)
      (surface-condition p188 verysmooth)
      (treatment p188 glazed)
      (available p189)
      (colour p189 blue)
      (wood p189 cherry)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (wood p190 mahogany)
      (treatment p190 glazed)
      (available p191)
      (colour p191 natural)
      (wood p191 teak)
      (available p192)
      (colour p192 blue)
      (wood p192 walnut)
      (surface-condition p192 smooth)
      (treatment p192 glazed)
      (available p193)
      (colour p193 mauve)
      (surface-condition p193 smooth)
      (available p194)
      (colour p194 mauve)
      (wood p194 cherry)
      (surface-condition p194 verysmooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 green)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 blue)
      (treatment p196 glazed)
      (available p197)
      (wood p197 mahogany)
      (surface-condition p197 smooth)
      (available p198)
      (colour p198 red)
      (wood p198 walnut)
      (surface-condition p198 verysmooth)
      (available p199)
      (colour p199 natural)
      (surface-condition p199 verysmooth)
      (available p200)
      (colour p200 black)
      (wood p200 cherry)
      (surface-condition p200 verysmooth)
      (treatment p200 varnished)
      (available p201)
      (colour p201 green)
      (wood p201 pine)
      (surface-condition p201 verysmooth)
      (treatment p201 glazed)
      (available p202)
      (wood p202 walnut)
      (surface-condition p202 smooth)
      (available p203)
      (wood p203 beech)
      (surface-condition p203 verysmooth)
      (treatment p203 varnished)
      (available p204)
      (wood p204 oak)
      (treatment p204 varnished)
      (available p205)
      (colour p205 green)
      (wood p205 mahogany)
      (treatment p205 varnished)
      (available p206)
      (colour p206 natural)
      (surface-condition p206 smooth)
      (treatment p206 varnished)
      (available p207)
      (colour p207 blue)
      (wood p207 pine)
      (surface-condition p207 verysmooth)
      (treatment p207 varnished)
      (available p208)
      (colour p208 mauve)
      (wood p208 walnut)
      (treatment p208 varnished)
      (available p209)
      (colour p209 natural)
      (wood p209 beech)
      (surface-condition p209 verysmooth)
      (treatment p209 glazed)
      (available p210)
      (colour p210 black)
      (wood p210 beech)
      (surface-condition p210 verysmooth)
      (treatment p210 varnished)
      (available p211)
      (colour p211 white)
      (wood p211 oak)
      (surface-condition p211 verysmooth)
      (available p212)
      (surface-condition p212 verysmooth)
      (treatment p212 glazed)
      (available p213)
      (wood p213 beech)
      (surface-condition p213 verysmooth)
      (available p214)
      (colour p214 natural)
      (wood p214 cherry)
      (surface-condition p214 verysmooth)
      (treatment p214 varnished)
      (available p215)
      (colour p215 white)
      (wood p215 cherry)
      (surface-condition p215 verysmooth)
      (treatment p215 glazed)
      (available p216)
      (colour p216 blue)
      (wood p216 cherry)
      (available p217)
      (colour p217 mauve)
      (wood p217 mahogany)
      (available p218)
      (colour p218 blue)
      (wood p218 walnut)
      (surface-condition p218 verysmooth)
      (treatment p218 glazed)
      (available p219)
      (colour p219 natural)
      (surface-condition p219 verysmooth)
      (available p220)
      (colour p220 black)
      (wood p220 mahogany)
      (surface-condition p220 smooth)
      (treatment p220 varnished)
      (available p221)
      (colour p221 mauve)
      (wood p221 mahogany)
      (treatment p221 varnished)
      (available p222)
      (wood p222 cherry)
      (surface-condition p222 smooth)
      (available p223)
      (colour p223 natural)
      (wood p223 oak)
      (treatment p223 varnished)
      (available p224)
      (colour p224 mauve)
      (wood p224 pine)
      (surface-condition p224 smooth)
      (available p225)
      (wood p225 teak)
      (treatment p225 varnished)
      (available p226)
      (colour p226 white)
      (surface-condition p226 smooth)
      (available p227)
      (colour p227 white)
      (treatment p227 glazed)
      (available p228)
      (colour p228 green)
      (surface-condition p228 verysmooth)
      (available p229)
      (wood p229 mahogany)
      (treatment p229 glazed)
      (available p230)
      (colour p230 mauve)
      (wood p230 cherry)
      (surface-condition p230 smooth)
      (treatment p230 varnished)
      (available p231)
      (colour p231 white)
      (surface-condition p231 verysmooth)
      (available p232)
      (colour p232 white)
      (surface-condition p232 smooth)
      (available p233)
      (colour p233 blue)
      (wood p233 beech)
      (treatment p233 varnished)
      (available p234)
      (colour p234 natural)
      (surface-condition p234 verysmooth)
      (available p235)
      (colour p235 natural)
      (surface-condition p235 smooth)
      (treatment p235 glazed)
      (available p236)
      (surface-condition p236 verysmooth)
      (treatment p236 varnished)
      (available p237)
      (colour p237 red)
      (treatment p237 varnished)
      (available p238)
      (colour p238 white)
      (wood p238 beech)
      (treatment p238 varnished)
      (available p239)
      (colour p239 red)
      (surface-condition p239 verysmooth)
      (available p240)
      (wood p240 mahogany)
      (surface-condition p240 smooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 natural)
      (treatment p241 glazed)
      (available p242)
      (colour p242 natural)
      (wood p242 beech)
      (surface-condition p242 verysmooth)
      (treatment p242 varnished)
      (available p243)
      (colour p243 mauve)
      (wood p243 mahogany)
      (surface-condition p243 smooth)
      (available p244)
      (colour p244 green)
      (wood p244 beech)
      (surface-condition p244 smooth)
      (treatment p244 varnished)
      (available p245)
      (wood p245 teak)
      (surface-condition p245 verysmooth)
      (available p246)
      (surface-condition p246 verysmooth)
      (treatment p246 varnished)
      (available p247)
      (colour p247 white)
      (wood p247 beech)
      (treatment p247 glazed)
      (available p248)
      (wood p248 walnut)
      (treatment p248 varnished)
      (available p249)
      (colour p249 white)
      (treatment p249 varnished)
      (available p250)
      (surface-condition p250 smooth)
      (treatment p250 varnished)
      (available p251)
      (colour p251 blue)
      (treatment p251 glazed)
      (available p252)
      (colour p252 green)
      (wood p252 cherry)
      (surface-condition p252 smooth)
      (treatment p252 varnished)
      (available p253)
      (colour p253 mauve)
      (surface-condition p253 smooth)
      (available p254)
      (colour p254 red)
      (wood p254 cherry)
      (surface-condition p254 verysmooth)
      (available p255)
      (wood p255 beech)
      (surface-condition p255 smooth)
      (available p256)
      (colour p256 white)
      (treatment p256 glazed)
      (available p257)
      (wood p257 mahogany)
      (surface-condition p257 smooth)
      (available p258)
      (colour p258 white)
      (wood p258 walnut)
      (available p259)
      (wood p259 teak)
      (surface-condition p259 verysmooth)
      (treatment p259 glazed)
      (available p260)
      (colour p260 black)
      (surface-condition p260 verysmooth)
      (available p261)
      (colour p261 green)
      (treatment p261 varnished)
      (available p262)
      (colour p262 red)
      (wood p262 cherry)
      (surface-condition p262 verysmooth)
      (treatment p262 varnished)
      (available p263)
      (colour p263 blue)
      (wood p263 cherry)
      (surface-condition p263 verysmooth)
      (treatment p263 varnished)
      (available p264)
      (colour p264 natural)
      (surface-condition p264 verysmooth)
      (available p265)
      (colour p265 natural)
      (surface-condition p265 smooth)
      (treatment p265 varnished)
      (available p266)
      (colour p266 mauve)
      (wood p266 pine)
      (surface-condition p266 smooth)
      (available p267)
      (colour p267 red)
      (surface-condition p267 verysmooth)
      (treatment p267 varnished)
      (available p268)
      (wood p268 pine)
      (surface-condition p268 verysmooth)
      (available p269)
      (colour p269 red)
      (treatment p269 varnished)
      (available p270)
      (colour p270 mauve)
      (wood p270 walnut)
      (surface-condition p270 smooth)
      (treatment p270 varnished)
      (available p271)
      (colour p271 white)
      (treatment p271 glazed)
    )
  )
  
)
