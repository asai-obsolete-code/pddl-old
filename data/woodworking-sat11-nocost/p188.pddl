; woodworking task with 251 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 20883

(define (problem wood-prob-sat-188)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white green blue mauve black red - acolour
    pine cherry beech mahogany oak teak walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 black)
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
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (available p0)
    (colour p0 mauve)
    (wood p0 cherry)
    (surface-condition p0 smooth)
    (treatment p0 glazed)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 green)
    (wood p1 walnut)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 red)
    (wood p5 mahogany)
    (surface-condition p5 smooth)
    (treatment p5 varnished)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 natural)
    (wood p12 oak)
    (surface-condition p12 rough)
    (treatment p12 glazed)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 mauve)
    (wood p14 pine)
    (surface-condition p14 verysmooth)
    (treatment p14 glazed)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 blue)
    (wood p16 walnut)
    (surface-condition p16 verysmooth)
    (treatment p16 varnished)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 natural)
    (wood p22 teak)
    (surface-condition p22 rough)
    (treatment p22 varnished)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 blue)
    (wood p27 teak)
    (surface-condition p27 rough)
    (treatment p27 glazed)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 mauve)
    (wood p31 cherry)
    (surface-condition p31 rough)
    (treatment p31 colourfragments)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 green)
    (wood p32 oak)
    (surface-condition p32 smooth)
    (treatment p32 colourfragments)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (available p45)
    (colour p45 natural)
    (wood p45 mahogany)
    (surface-condition p45 rough)
    (treatment p45 glazed)
    (goalsize p45 large)
    
    
    
    
    (available p46)
    (colour p46 black)
    (wood p46 beech)
    (surface-condition p46 verysmooth)
    (treatment p46 glazed)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (available p61)
    (colour p61 black)
    (wood p61 teak)
    (surface-condition p61 smooth)
    (treatment p61 colourfragments)
    (goalsize p61 medium)
    
    
    
    
    (available p62)
    (colour p62 natural)
    (wood p62 oak)
    (surface-condition p62 rough)
    (treatment p62 colourfragments)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (available p68)
    (colour p68 black)
    (wood p68 pine)
    (surface-condition p68 rough)
    (treatment p68 colourfragments)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (available p70)
    (colour p70 natural)
    (wood p70 cherry)
    (surface-condition p70 rough)
    (treatment p70 colourfragments)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (available p81)
    (colour p81 black)
    (wood p81 pine)
    (surface-condition p81 smooth)
    (treatment p81 glazed)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (available p85)
    (colour p85 white)
    (wood p85 beech)
    (surface-condition p85 rough)
    (treatment p85 glazed)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (available p91)
    (colour p91 white)
    (wood p91 beech)
    (surface-condition p91 verysmooth)
    (treatment p91 varnished)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 black)
    (wood p97 teak)
    (surface-condition p97 rough)
    (treatment p97 colourfragments)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 mauve)
    (wood p101 beech)
    (surface-condition p101 rough)
    (treatment p101 glazed)
    (goalsize p101 large)
    
    
    
    
    (available p102)
    (colour p102 white)
    (wood p102 cherry)
    (surface-condition p102 rough)
    (treatment p102 glazed)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (available p107)
    (colour p107 black)
    (wood p107 cherry)
    (surface-condition p107 rough)
    (treatment p107 colourfragments)
    (goalsize p107 small)
    
    
    
    
    (available p108)
    (colour p108 black)
    (wood p108 mahogany)
    (surface-condition p108 verysmooth)
    (treatment p108 glazed)
    (goalsize p108 medium)
    
    
    
    
    (available p109)
    (colour p109 blue)
    (wood p109 mahogany)
    (surface-condition p109 rough)
    (treatment p109 glazed)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (available p112)
    (colour p112 black)
    (wood p112 pine)
    (surface-condition p112 rough)
    (treatment p112 colourfragments)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (available p124)
    (colour p124 red)
    (wood p124 pine)
    (surface-condition p124 rough)
    (treatment p124 colourfragments)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (available p126)
    (colour p126 mauve)
    (wood p126 oak)
    (surface-condition p126 verysmooth)
    (treatment p126 colourfragments)
    (goalsize p126 small)
    
    
    
    
    (available p127)
    (colour p127 black)
    (wood p127 oak)
    (surface-condition p127 rough)
    (treatment p127 glazed)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (available p129)
    (colour p129 natural)
    (wood p129 mahogany)
    (surface-condition p129 smooth)
    (treatment p129 varnished)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (available p133)
    (colour p133 blue)
    (wood p133 teak)
    (surface-condition p133 rough)
    (treatment p133 varnished)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (available p135)
    (colour p135 white)
    (wood p135 cherry)
    (surface-condition p135 verysmooth)
    (treatment p135 colourfragments)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (available p142)
    (colour p142 green)
    (wood p142 mahogany)
    (surface-condition p142 rough)
    (treatment p142 glazed)
    (goalsize p142 large)
    
    
    
    
    (available p143)
    (colour p143 black)
    (wood p143 mahogany)
    (surface-condition p143 rough)
    (treatment p143 glazed)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (available p147)
    (colour p147 blue)
    (wood p147 cherry)
    (surface-condition p147 rough)
    (treatment p147 colourfragments)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (available p170)
    (colour p170 mauve)
    (wood p170 mahogany)
    (surface-condition p170 rough)
    (treatment p170 colourfragments)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (available p172)
    (colour p172 mauve)
    (wood p172 cherry)
    (surface-condition p172 smooth)
    (treatment p172 varnished)
    (goalsize p172 small)
    
    
    
    
    (available p173)
    (colour p173 red)
    (wood p173 teak)
    (surface-condition p173 smooth)
    (treatment p173 colourfragments)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (available p176)
    (colour p176 natural)
    (wood p176 beech)
    (surface-condition p176 smooth)
    (treatment p176 varnished)
    (goalsize p176 small)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (available p185)
    (colour p185 red)
    (wood p185 oak)
    (surface-condition p185 rough)
    (treatment p185 glazed)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (available p192)
    (colour p192 blue)
    (wood p192 mahogany)
    (surface-condition p192 rough)
    (treatment p192 glazed)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 large)
    
    
    
    
    (available p194)
    (colour p194 natural)
    (wood p194 pine)
    (surface-condition p194 verysmooth)
    (treatment p194 glazed)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (available p211)
    (colour p211 natural)
    (wood p211 cherry)
    (surface-condition p211 rough)
    (treatment p211 varnished)
    (goalsize p211 large)
    
    
    
    
    (available p212)
    (colour p212 white)
    (wood p212 pine)
    (surface-condition p212 smooth)
    (treatment p212 varnished)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (available p214)
    (colour p214 mauve)
    (wood p214 cherry)
    (surface-condition p214 rough)
    (treatment p214 varnished)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 medium)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (available p229)
    (colour p229 green)
    (wood p229 oak)
    (surface-condition p229 smooth)
    (treatment p229 colourfragments)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (available p233)
    (colour p233 white)
    (wood p233 teak)
    (surface-condition p233 smooth)
    (treatment p233 colourfragments)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 medium)
    
    
    
    
    (available p237)
    (colour p237 green)
    (wood p237 walnut)
    (surface-condition p237 verysmooth)
    (treatment p237 glazed)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 large)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 large)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 medium)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s10)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s3)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s11)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s12)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s8)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s3)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s6)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s9)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s10)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s6)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s10)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s11)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s4)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s6)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s8)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s6)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s11)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s8)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s6)
    (wood b44 walnut)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s6)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s11)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s8)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s9)
    (wood b49 walnut)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s7)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s6)
    (wood b51 walnut)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s6)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s8)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s9)
    (wood b54 teak)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s9)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 teak)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s9)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s9)
    (wood b58 teak)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s6)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s10)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s5)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s3)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s9)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s9)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s9)
    (wood b65 beech)
    (surface-condition b65 smooth)
    (available b65)
    (boardsize b66 s8)
    (wood b66 beech)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s8)
    (wood b67 beech)
    (surface-condition b67 smooth)
    (available b67)
    (boardsize b68 s7)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s8)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s7)
    (wood b70 beech)
    (surface-condition b70 smooth)
    (available b70)
    (boardsize b71 s9)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s8)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s2)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 cherry)
      (available p1)
      (wood p1 walnut)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 green)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 natural)
      (wood p3 cherry)
      (available p4)
      (wood p4 oak)
      (treatment p4 varnished)
      (available p5)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 natural)
      (wood p6 teak)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 natural)
      (treatment p7 varnished)
      (available p8)
      (colour p8 white)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 white)
      (wood p9 pine)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 black)
      (wood p10 mahogany)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (wood p11 oak)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 red)
      (wood p12 oak)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 black)
      (wood p13 beech)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 red)
      (surface-condition p14 smooth)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 red)
      (treatment p16 glazed)
      (available p17)
      (wood p17 mahogany)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 green)
      (wood p18 beech)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 green)
      (wood p19 teak)
      (surface-condition p19 smooth)
      (available p20)
      (wood p20 walnut)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 mauve)
      (wood p21 mahogany)
      (available p22)
      (colour p22 red)
      (wood p22 teak)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (wood p23 teak)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 blue)
      (wood p24 mahogany)
      (available p25)
      (wood p25 beech)
      (treatment p25 varnished)
      (available p26)
      (colour p26 natural)
      (wood p26 walnut)
      (available p27)
      (colour p27 mauve)
      (treatment p27 glazed)
      (available p28)
      (colour p28 green)
      (wood p28 beech)
      (treatment p28 varnished)
      (available p29)
      (wood p29 teak)
      (treatment p29 varnished)
      (available p30)
      (colour p30 natural)
      (treatment p30 glazed)
      (available p31)
      (wood p31 cherry)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 red)
      (wood p32 oak)
      (treatment p32 varnished)
      (available p33)
      (colour p33 mauve)
      (wood p33 beech)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 natural)
      (treatment p34 glazed)
      (available p35)
      (wood p35 cherry)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 red)
      (wood p36 teak)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 mauve)
      (wood p37 beech)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (wood p39 pine)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 black)
      (wood p40 cherry)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 blue)
      (wood p41 pine)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (wood p42 walnut)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 red)
      (wood p43 pine)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 white)
      (wood p44 mahogany)
      (treatment p44 varnished)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 natural)
      (wood p46 beech)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 green)
      (treatment p47 glazed)
      (available p48)
      (colour p48 mauve)
      (wood p48 mahogany)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 natural)
      (wood p49 beech)
      (available p50)
      (wood p50 teak)
      (surface-condition p50 smooth)
      (available p51)
      (colour p51 blue)
      (wood p51 beech)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 mauve)
      (wood p52 pine)
      (surface-condition p52 smooth)
      (available p53)
      (colour p53 red)
      (treatment p53 glazed)
      (available p54)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 pine)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 blue)
      (wood p56 walnut)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (wood p57 mahogany)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 natural)
      (wood p59 beech)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 white)
      (wood p60 walnut)
      (surface-condition p60 verysmooth)
      (available p61)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (wood p62 oak)
      (surface-condition p62 verysmooth)
      (available p63)
      (wood p63 pine)
      (treatment p63 glazed)
      (available p64)
      (wood p64 walnut)
      (surface-condition p64 verysmooth)
      (available p65)
      (colour p65 mauve)
      (wood p65 walnut)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 black)
      (wood p66 walnut)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 green)
      (treatment p67 varnished)
      (available p68)
      (colour p68 green)
      (surface-condition p68 verysmooth)
      (available p69)
      (wood p69 teak)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 mauve)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 green)
      (wood p71 teak)
      (available p72)
      (wood p72 pine)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 mauve)
      (wood p73 teak)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 green)
      (wood p74 walnut)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 blue)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (wood p76 pine)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 mauve)
      (wood p78 teak)
      (surface-condition p78 verysmooth)
      (available p79)
      (wood p79 walnut)
      (surface-condition p79 smooth)
      (treatment p79 varnished)
      (available p80)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (wood p81 pine)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 red)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 white)
      (wood p83 teak)
      (available p84)
      (wood p84 walnut)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 blue)
      (wood p85 beech)
      (treatment p85 glazed)
      (available p86)
      (colour p86 white)
      (wood p86 teak)
      (treatment p86 varnished)
      (available p87)
      (wood p87 beech)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 green)
      (treatment p88 varnished)
      (available p89)
      (wood p89 cherry)
      (surface-condition p89 smooth)
      (treatment p89 varnished)
      (available p90)
      (wood p90 beech)
      (treatment p90 varnished)
      (available p91)
      (colour p91 blue)
      (wood p91 beech)
      (surface-condition p91 verysmooth)
      (treatment p91 varnished)
      (available p92)
      (wood p92 walnut)
      (treatment p92 glazed)
      (available p93)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 red)
      (treatment p94 glazed)
      (available p95)
      (surface-condition p95 smooth)
      (treatment p95 glazed)
      (available p96)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (wood p97 teak)
      (surface-condition p97 smooth)
      (treatment p97 varnished)
      (available p98)
      (colour p98 red)
      (wood p98 walnut)
      (available p99)
      (colour p99 blue)
      (wood p99 cherry)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 black)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 green)
      (surface-condition p102 verysmooth)
      (available p103)
      (wood p103 walnut)
      (treatment p103 varnished)
      (available p104)
      (wood p104 mahogany)
      (surface-condition p104 verysmooth)
      (available p105)
      (colour p105 natural)
      (wood p105 walnut)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (wood p106 cherry)
      (treatment p106 glazed)
      (available p107)
      (wood p107 cherry)
      (treatment p107 varnished)
      (available p108)
      (colour p108 red)
      (wood p108 mahogany)
      (surface-condition p108 smooth)
      (treatment p108 glazed)
      (available p109)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 red)
      (wood p110 beech)
      (available p111)
      (colour p111 natural)
      (surface-condition p111 smooth)
      (available p112)
      (colour p112 green)
      (surface-condition p112 verysmooth)
      (available p113)
      (colour p113 green)
      (wood p113 pine)
      (surface-condition p113 smooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 blue)
      (wood p114 mahogany)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 red)
      (wood p115 walnut)
      (surface-condition p115 verysmooth)
      (available p116)
      (colour p116 mauve)
      (wood p116 oak)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 black)
      (wood p117 mahogany)
      (available p118)
      (colour p118 green)
      (wood p118 mahogany)
      (surface-condition p118 smooth)
      (treatment p118 glazed)
      (available p119)
      (wood p119 pine)
      (surface-condition p119 verysmooth)
      (available p120)
      (colour p120 green)
      (wood p120 cherry)
      (available p121)
      (wood p121 teak)
      (treatment p121 glazed)
      (available p122)
      (colour p122 black)
      (wood p122 mahogany)
      (surface-condition p122 smooth)
      (available p123)
      (colour p123 red)
      (wood p123 teak)
      (available p124)
      (wood p124 pine)
      (surface-condition p124 verysmooth)
      (available p125)
      (colour p125 red)
      (wood p125 pine)
      (available p126)
      (wood p126 oak)
      (treatment p126 varnished)
      (available p127)
      (colour p127 natural)
      (surface-condition p127 verysmooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 white)
      (wood p128 oak)
      (surface-condition p128 verysmooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 green)
      (treatment p129 varnished)
      (available p130)
      (wood p130 beech)
      (surface-condition p130 smooth)
      (treatment p130 glazed)
      (available p131)
      (surface-condition p131 verysmooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 white)
      (wood p132 walnut)
      (available p133)
      (colour p133 natural)
      (wood p133 teak)
      (surface-condition p133 smooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 mauve)
      (surface-condition p134 verysmooth)
      (available p135)
      (colour p135 natural)
      (wood p135 cherry)
      (surface-condition p135 smooth)
      (available p136)
      (colour p136 natural)
      (wood p136 beech)
      (available p137)
      (colour p137 white)
      (surface-condition p137 smooth)
      (treatment p137 glazed)
      (available p138)
      (colour p138 natural)
      (wood p138 beech)
      (treatment p138 glazed)
      (available p139)
      (colour p139 natural)
      (wood p139 beech)
      (surface-condition p139 verysmooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 green)
      (wood p140 beech)
      (treatment p140 glazed)
      (available p141)
      (colour p141 natural)
      (wood p141 teak)
      (surface-condition p141 smooth)
      (treatment p141 varnished)
      (available p142)
      (surface-condition p142 smooth)
      (treatment p142 varnished)
      (available p143)
      (wood p143 mahogany)
      (surface-condition p143 verysmooth)
      (available p144)
      (wood p144 pine)
      (surface-condition p144 verysmooth)
      (available p145)
      (colour p145 white)
      (wood p145 mahogany)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 mauve)
      (wood p146 mahogany)
      (surface-condition p146 verysmooth)
      (available p147)
      (colour p147 black)
      (wood p147 cherry)
      (surface-condition p147 smooth)
      (treatment p147 varnished)
      (available p148)
      (wood p148 mahogany)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (colour p149 red)
      (treatment p149 glazed)
      (available p150)
      (wood p150 pine)
      (treatment p150 varnished)
      (available p151)
      (colour p151 green)
      (treatment p151 varnished)
      (available p152)
      (colour p152 mauve)
      (wood p152 pine)
      (surface-condition p152 smooth)
      (treatment p152 glazed)
      (available p153)
      (colour p153 natural)
      (wood p153 pine)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 black)
      (treatment p154 glazed)
      (available p155)
      (colour p155 mauve)
      (surface-condition p155 smooth)
      (treatment p155 glazed)
      (available p156)
      (colour p156 blue)
      (wood p156 beech)
      (available p157)
      (colour p157 blue)
      (wood p157 walnut)
      (surface-condition p157 verysmooth)
      (available p158)
      (colour p158 mauve)
      (wood p158 walnut)
      (surface-condition p158 verysmooth)
      (available p159)
      (colour p159 white)
      (treatment p159 varnished)
      (available p160)
      (wood p160 cherry)
      (surface-condition p160 smooth)
      (available p161)
      (colour p161 white)
      (wood p161 pine)
      (surface-condition p161 smooth)
      (treatment p161 varnished)
      (available p162)
      (colour p162 mauve)
      (surface-condition p162 smooth)
      (available p163)
      (wood p163 pine)
      (treatment p163 varnished)
      (available p164)
      (wood p164 teak)
      (surface-condition p164 verysmooth)
      (available p165)
      (colour p165 mauve)
      (wood p165 mahogany)
      (available p166)
      (colour p166 blue)
      (wood p166 teak)
      (surface-condition p166 smooth)
      (treatment p166 glazed)
      (available p167)
      (colour p167 green)
      (wood p167 walnut)
      (surface-condition p167 verysmooth)
      (treatment p167 glazed)
      (available p168)
      (wood p168 mahogany)
      (surface-condition p168 smooth)
      (available p169)
      (colour p169 natural)
      (surface-condition p169 smooth)
      (available p170)
      (colour p170 natural)
      (wood p170 mahogany)
      (surface-condition p170 verysmooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 blue)
      (treatment p171 varnished)
      (available p172)
      (wood p172 cherry)
      (surface-condition p172 verysmooth)
      (available p173)
      (wood p173 teak)
      (surface-condition p173 verysmooth)
      (available p174)
      (colour p174 blue)
      (wood p174 teak)
      (surface-condition p174 verysmooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 green)
      (surface-condition p175 verysmooth)
      (treatment p175 varnished)
      (available p176)
      (colour p176 red)
      (wood p176 beech)
      (surface-condition p176 verysmooth)
      (treatment p176 varnished)
      (available p177)
      (colour p177 natural)
      (surface-condition p177 verysmooth)
      (available p178)
      (colour p178 blue)
      (wood p178 beech)
      (treatment p178 glazed)
      (available p179)
      (colour p179 black)
      (surface-condition p179 smooth)
      (available p180)
      (surface-condition p180 smooth)
      (treatment p180 glazed)
      (available p181)
      (colour p181 white)
      (wood p181 pine)
      (treatment p181 glazed)
      (available p182)
      (wood p182 pine)
      (surface-condition p182 verysmooth)
      (available p183)
      (wood p183 beech)
      (surface-condition p183 verysmooth)
      (available p184)
      (wood p184 pine)
      (surface-condition p184 smooth)
      (available p185)
      (colour p185 black)
      (wood p185 oak)
      (available p186)
      (colour p186 natural)
      (wood p186 walnut)
      (surface-condition p186 verysmooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 white)
      (wood p187 oak)
      (surface-condition p187 verysmooth)
      (treatment p187 varnished)
      (available p188)
      (colour p188 red)
      (surface-condition p188 smooth)
      (treatment p188 glazed)
      (available p189)
      (colour p189 red)
      (wood p189 pine)
      (surface-condition p189 verysmooth)
      (available p190)
      (wood p190 beech)
      (surface-condition p190 verysmooth)
      (available p191)
      (wood p191 oak)
      (surface-condition p191 smooth)
      (available p192)
      (colour p192 red)
      (wood p192 mahogany)
      (surface-condition p192 verysmooth)
      (treatment p192 glazed)
      (available p193)
      (wood p193 beech)
      (surface-condition p193 smooth)
      (available p194)
      (wood p194 pine)
      (surface-condition p194 smooth)
      (available p195)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 white)
      (wood p196 walnut)
      (surface-condition p196 smooth)
      (available p197)
      (surface-condition p197 smooth)
      (treatment p197 varnished)
      (available p198)
      (colour p198 black)
      (surface-condition p198 smooth)
      (available p199)
      (colour p199 white)
      (wood p199 teak)
      (surface-condition p199 verysmooth)
      (treatment p199 glazed)
      (available p200)
      (wood p200 beech)
      (surface-condition p200 verysmooth)
      (available p201)
      (colour p201 green)
      (surface-condition p201 verysmooth)
      (treatment p201 glazed)
      (available p202)
      (colour p202 mauve)
      (surface-condition p202 verysmooth)
      (treatment p202 glazed)
      (available p203)
      (colour p203 blue)
      (surface-condition p203 smooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 blue)
      (wood p204 oak)
      (available p205)
      (colour p205 red)
      (wood p205 walnut)
      (surface-condition p205 smooth)
      (available p206)
      (colour p206 blue)
      (wood p206 oak)
      (surface-condition p206 verysmooth)
      (treatment p206 varnished)
      (available p207)
      (surface-condition p207 verysmooth)
      (treatment p207 varnished)
      (available p208)
      (wood p208 oak)
      (treatment p208 varnished)
      (available p209)
      (colour p209 black)
      (wood p209 cherry)
      (available p210)
      (colour p210 natural)
      (treatment p210 glazed)
      (available p211)
      (colour p211 red)
      (treatment p211 varnished)
      (available p212)
      (colour p212 green)
      (wood p212 pine)
      (treatment p212 varnished)
      (available p213)
      (colour p213 mauve)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (colour p214 green)
      (wood p214 cherry)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 red)
      (wood p215 walnut)
      (surface-condition p215 verysmooth)
      (treatment p215 glazed)
      (available p216)
      (colour p216 black)
      (wood p216 walnut)
      (available p217)
      (colour p217 natural)
      (treatment p217 glazed)
      (available p218)
      (surface-condition p218 verysmooth)
      (treatment p218 glazed)
      (available p219)
      (colour p219 blue)
      (wood p219 beech)
      (surface-condition p219 smooth)
      (treatment p219 glazed)
      (available p220)
      (colour p220 white)
      (wood p220 oak)
      (available p221)
      (wood p221 cherry)
      (surface-condition p221 verysmooth)
      (available p222)
      (colour p222 natural)
      (wood p222 walnut)
      (treatment p222 glazed)
      (available p223)
      (colour p223 white)
      (wood p223 oak)
      (surface-condition p223 smooth)
      (available p224)
      (colour p224 natural)
      (wood p224 walnut)
      (surface-condition p224 smooth)
      (available p225)
      (colour p225 natural)
      (surface-condition p225 smooth)
      (available p226)
      (wood p226 mahogany)
      (surface-condition p226 smooth)
      (available p227)
      (colour p227 black)
      (wood p227 cherry)
      (surface-condition p227 verysmooth)
      (treatment p227 glazed)
      (available p228)
      (colour p228 white)
      (treatment p228 varnished)
      (available p229)
      (surface-condition p229 smooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 red)
      (wood p230 mahogany)
      (surface-condition p230 verysmooth)
      (treatment p230 glazed)
      (available p231)
      (wood p231 cherry)
      (treatment p231 glazed)
      (available p232)
      (surface-condition p232 verysmooth)
      (treatment p232 glazed)
      (available p233)
      (colour p233 mauve)
      (surface-condition p233 verysmooth)
      (treatment p233 glazed)
      (available p234)
      (colour p234 red)
      (wood p234 mahogany)
      (available p235)
      (wood p235 cherry)
      (surface-condition p235 smooth)
      (available p236)
      (colour p236 black)
      (surface-condition p236 smooth)
      (treatment p236 glazed)
      (available p237)
      (colour p237 blue)
      (wood p237 walnut)
      (surface-condition p237 verysmooth)
      (available p238)
      (wood p238 walnut)
      (surface-condition p238 smooth)
      (treatment p238 glazed)
      (available p239)
      (colour p239 blue)
      (wood p239 teak)
      (treatment p239 glazed)
      (available p240)
      (colour p240 blue)
      (surface-condition p240 smooth)
      (available p241)
      (colour p241 mauve)
      (wood p241 teak)
      (surface-condition p241 smooth)
      (treatment p241 varnished)
      (available p242)
      (surface-condition p242 verysmooth)
      (treatment p242 glazed)
      (available p243)
      (colour p243 natural)
      (wood p243 pine)
      (surface-condition p243 smooth)
      (available p244)
      (wood p244 cherry)
      (treatment p244 varnished)
      (available p245)
      (colour p245 mauve)
      (treatment p245 glazed)
      (available p246)
      (colour p246 blue)
      (wood p246 teak)
      (surface-condition p246 smooth)
      (available p247)
      (colour p247 red)
      (treatment p247 varnished)
      (available p248)
      (colour p248 red)
      (wood p248 walnut)
      (available p249)
      (colour p249 mauve)
      (wood p249 pine)
      (surface-condition p249 smooth)
      (available p250)
      (colour p250 black)
      (treatment p250 varnished)
    )
  )
  
)
