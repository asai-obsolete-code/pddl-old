; woodworking task with 230 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 388192

(define (problem wood-prob-sat-181)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green mauve black blue white red - acolour
    teak beech oak pine cherry mahogany walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 mauve)
    (wood p2 teak)
    (surface-condition p2 verysmooth)
    (treatment p2 glazed)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 black)
    (wood p4 teak)
    (surface-condition p4 smooth)
    (treatment p4 varnished)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 green)
    (wood p5 mahogany)
    (surface-condition p5 rough)
    (treatment p5 colourfragments)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 mauve)
    (wood p13 beech)
    (surface-condition p13 rough)
    (treatment p13 colourfragments)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 black)
    (wood p14 mahogany)
    (surface-condition p14 rough)
    (treatment p14 glazed)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 mauve)
    (wood p17 teak)
    (surface-condition p17 verysmooth)
    (treatment p17 varnished)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 natural)
    (wood p19 beech)
    (surface-condition p19 smooth)
    (treatment p19 glazed)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 blue)
    (wood p24 walnut)
    (surface-condition p24 rough)
    (treatment p24 varnished)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 mauve)
    (wood p29 cherry)
    (surface-condition p29 verysmooth)
    (treatment p29 glazed)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 green)
    (wood p33 cherry)
    (surface-condition p33 verysmooth)
    (treatment p33 glazed)
    (goalsize p33 medium)
    
    
    
    
    (available p34)
    (colour p34 red)
    (wood p34 teak)
    (surface-condition p34 verysmooth)
    (treatment p34 colourfragments)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 natural)
    (wood p47 cherry)
    (surface-condition p47 verysmooth)
    (treatment p47 varnished)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 red)
    (wood p61 mahogany)
    (surface-condition p61 smooth)
    (treatment p61 varnished)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 natural)
    (wood p67 beech)
    (surface-condition p67 rough)
    (treatment p67 colourfragments)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (available p73)
    (colour p73 red)
    (wood p73 cherry)
    (surface-condition p73 rough)
    (treatment p73 varnished)
    (goalsize p73 large)
    
    
    
    
    (available p74)
    (colour p74 black)
    (wood p74 walnut)
    (surface-condition p74 rough)
    (treatment p74 glazed)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (available p87)
    (colour p87 red)
    (wood p87 cherry)
    (surface-condition p87 rough)
    (treatment p87 colourfragments)
    (goalsize p87 medium)
    
    
    
    
    (available p88)
    (colour p88 blue)
    (wood p88 teak)
    (surface-condition p88 rough)
    (treatment p88 glazed)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (available p104)
    (colour p104 red)
    (wood p104 beech)
    (surface-condition p104 rough)
    (treatment p104 colourfragments)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (available p108)
    (colour p108 natural)
    (wood p108 mahogany)
    (surface-condition p108 smooth)
    (treatment p108 varnished)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 mauve)
    (wood p111 cherry)
    (surface-condition p111 rough)
    (treatment p111 glazed)
    (goalsize p111 medium)
    
    
    
    
    (available p112)
    (colour p112 green)
    (wood p112 cherry)
    (surface-condition p112 smooth)
    (treatment p112 varnished)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (available p118)
    (colour p118 mauve)
    (wood p118 mahogany)
    (surface-condition p118 smooth)
    (treatment p118 varnished)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (available p133)
    (colour p133 red)
    (wood p133 mahogany)
    (surface-condition p133 verysmooth)
    (treatment p133 colourfragments)
    (goalsize p133 large)
    
    
    
    
    (available p134)
    (colour p134 natural)
    (wood p134 beech)
    (surface-condition p134 smooth)
    (treatment p134 varnished)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (available p137)
    (colour p137 white)
    (wood p137 oak)
    (surface-condition p137 smooth)
    (treatment p137 glazed)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (available p142)
    (colour p142 natural)
    (wood p142 walnut)
    (surface-condition p142 rough)
    (treatment p142 varnished)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (available p146)
    (colour p146 mauve)
    (wood p146 cherry)
    (surface-condition p146 verysmooth)
    (treatment p146 varnished)
    (goalsize p146 large)
    
    
    
    
    (available p147)
    (colour p147 white)
    (wood p147 beech)
    (surface-condition p147 verysmooth)
    (treatment p147 glazed)
    (goalsize p147 medium)
    
    
    
    
    (available p148)
    (colour p148 white)
    (wood p148 cherry)
    (surface-condition p148 smooth)
    (treatment p148 colourfragments)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (available p155)
    (colour p155 red)
    (wood p155 beech)
    (surface-condition p155 smooth)
    (treatment p155 glazed)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (available p160)
    (colour p160 black)
    (wood p160 cherry)
    (surface-condition p160 smooth)
    (treatment p160 colourfragments)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (available p162)
    (colour p162 natural)
    (wood p162 teak)
    (surface-condition p162 smooth)
    (treatment p162 varnished)
    (goalsize p162 small)
    
    
    
    
    (available p163)
    (colour p163 white)
    (wood p163 walnut)
    (surface-condition p163 smooth)
    (treatment p163 varnished)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (available p166)
    (colour p166 mauve)
    (wood p166 pine)
    (surface-condition p166 verysmooth)
    (treatment p166 glazed)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 medium)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (available p172)
    (colour p172 blue)
    (wood p172 beech)
    (surface-condition p172 rough)
    (treatment p172 varnished)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (available p177)
    (colour p177 green)
    (wood p177 beech)
    (surface-condition p177 smooth)
    (treatment p177 varnished)
    (goalsize p177 large)
    
    
    
    
    (available p178)
    (colour p178 black)
    (wood p178 walnut)
    (surface-condition p178 verysmooth)
    (treatment p178 glazed)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (available p182)
    (colour p182 black)
    (wood p182 mahogany)
    (surface-condition p182 verysmooth)
    (treatment p182 varnished)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (available p192)
    (colour p192 green)
    (wood p192 beech)
    (surface-condition p192 verysmooth)
    (treatment p192 varnished)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (available p196)
    (colour p196 red)
    (wood p196 oak)
    (surface-condition p196 rough)
    (treatment p196 glazed)
    (goalsize p196 small)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (available p200)
    (colour p200 mauve)
    (wood p200 oak)
    (surface-condition p200 verysmooth)
    (treatment p200 varnished)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (available p203)
    (colour p203 mauve)
    (wood p203 beech)
    (surface-condition p203 rough)
    (treatment p203 glazed)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (available p209)
    (colour p209 mauve)
    (wood p209 teak)
    (surface-condition p209 rough)
    (treatment p209 glazed)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (available p215)
    (colour p215 white)
    (wood p215 teak)
    (surface-condition p215 rough)
    (treatment p215 glazed)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (available p218)
    (colour p218 red)
    (wood p218 walnut)
    (surface-condition p218 smooth)
    (treatment p218 colourfragments)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (available p227)
    (colour p227 black)
    (wood p227 teak)
    (surface-condition p227 rough)
    (treatment p227 varnished)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s11)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s1)
    (wood b10 cherry)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s10)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s7)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s6)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s10)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s10)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s6)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s7)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s7)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s6)
    (wood b31 oak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s6)
    (wood b32 oak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 oak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s10)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s8)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s6)
    (wood b39 pine)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s7)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s9)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s12)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s10)
    (wood b43 pine)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s3)
    (wood b44 pine)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s10)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 walnut)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s8)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s7)
    (wood b49 walnut)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s8)
    (wood b50 walnut)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s9)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s5)
    (wood b52 walnut)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s8)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s7)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s8)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s8)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s9)
    (wood b57 teak)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s8)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s6)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s7)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s7)
    (wood b61 beech)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s10)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s6)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s10)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s8)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s8)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 black)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 natural)
      (wood p3 oak)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 green)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 red)
      (wood p5 mahogany)
      (available p6)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 white)
      (wood p7 cherry)
      (surface-condition p7 verysmooth)
      (available p8)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 oak)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 green)
      (wood p10 beech)
      (available p11)
      (colour p11 blue)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 white)
      (treatment p12 varnished)
      (available p13)
      (wood p13 beech)
      (treatment p13 varnished)
      (available p14)
      (colour p14 mauve)
      (surface-condition p14 smooth)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (wood p16 beech)
      (treatment p16 varnished)
      (available p17)
      (colour p17 black)
      (treatment p17 glazed)
      (available p18)
      (colour p18 mauve)
      (wood p18 cherry)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 mauve)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 blue)
      (wood p20 cherry)
      (available p21)
      (colour p21 red)
      (surface-condition p21 verysmooth)
      (available p22)
      (wood p22 pine)
      (treatment p22 varnished)
      (available p23)
      (colour p23 white)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 white)
      (wood p24 walnut)
      (available p25)
      (colour p25 natural)
      (treatment p25 varnished)
      (available p26)
      (colour p26 green)
      (wood p26 teak)
      (available p27)
      (wood p27 beech)
      (treatment p27 glazed)
      (available p28)
      (colour p28 black)
      (wood p28 walnut)
      (available p29)
      (colour p29 red)
      (treatment p29 glazed)
      (available p30)
      (colour p30 red)
      (wood p30 mahogany)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 natural)
      (treatment p31 glazed)
      (available p32)
      (colour p32 blue)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (wood p33 cherry)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 blue)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 white)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 red)
      (treatment p36 glazed)
      (available p37)
      (colour p37 blue)
      (treatment p37 varnished)
      (available p38)
      (wood p38 pine)
      (treatment p38 varnished)
      (available p39)
      (wood p39 pine)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (wood p40 mahogany)
      (treatment p40 varnished)
      (available p41)
      (wood p41 oak)
      (surface-condition p41 smooth)
      (available p42)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 white)
      (treatment p43 glazed)
      (available p44)
      (wood p44 mahogany)
      (surface-condition p44 smooth)
      (available p45)
      (colour p45 blue)
      (wood p45 oak)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 red)
      (wood p47 cherry)
      (surface-condition p47 smooth)
      (available p48)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 blue)
      (wood p49 cherry)
      (treatment p49 glazed)
      (available p50)
      (colour p50 black)
      (wood p50 mahogany)
      (treatment p50 glazed)
      (available p51)
      (colour p51 natural)
      (treatment p51 varnished)
      (available p52)
      (colour p52 white)
      (wood p52 pine)
      (treatment p52 glazed)
      (available p53)
      (colour p53 natural)
      (wood p53 teak)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (wood p54 mahogany)
      (treatment p54 varnished)
      (available p55)
      (colour p55 natural)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 white)
      (treatment p56 glazed)
      (available p57)
      (wood p57 mahogany)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 walnut)
      (surface-condition p58 smooth)
      (available p59)
      (wood p59 pine)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 white)
      (wood p60 mahogany)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 black)
      (wood p61 mahogany)
      (available p62)
      (colour p62 blue)
      (wood p62 teak)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 blue)
      (wood p63 mahogany)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 red)
      (treatment p64 varnished)
      (available p65)
      (wood p65 oak)
      (surface-condition p65 smooth)
      (available p66)
      (colour p66 white)
      (wood p66 mahogany)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (wood p67 beech)
      (treatment p67 glazed)
      (available p68)
      (wood p68 mahogany)
      (treatment p68 varnished)
      (available p69)
      (colour p69 black)
      (wood p69 walnut)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (wood p70 oak)
      (treatment p70 glazed)
      (available p71)
      (colour p71 blue)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 red)
      (wood p72 pine)
      (surface-condition p72 verysmooth)
      (available p73)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (wood p74 walnut)
      (treatment p74 varnished)
      (available p75)
      (colour p75 natural)
      (treatment p75 varnished)
      (available p76)
      (colour p76 red)
      (surface-condition p76 smooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 blue)
      (treatment p77 glazed)
      (available p78)
      (colour p78 natural)
      (treatment p78 varnished)
      (available p79)
      (wood p79 pine)
      (surface-condition p79 smooth)
      (available p80)
      (wood p80 pine)
      (surface-condition p80 smooth)
      (available p81)
      (colour p81 black)
      (surface-condition p81 verysmooth)
      (available p82)
      (wood p82 beech)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 white)
      (wood p83 oak)
      (available p84)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 black)
      (wood p85 pine)
      (surface-condition p85 verysmooth)
      (treatment p85 glazed)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 white)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 natural)
      (wood p88 teak)
      (surface-condition p88 verysmooth)
      (available p89)
      (colour p89 blue)
      (wood p89 cherry)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 green)
      (wood p90 walnut)
      (surface-condition p90 smooth)
      (available p91)
      (colour p91 black)
      (treatment p91 glazed)
      (available p92)
      (wood p92 mahogany)
      (treatment p92 varnished)
      (available p93)
      (wood p93 oak)
      (treatment p93 varnished)
      (available p94)
      (colour p94 natural)
      (treatment p94 varnished)
      (available p95)
      (surface-condition p95 smooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 blue)
      (wood p96 pine)
      (available p97)
      (wood p97 pine)
      (treatment p97 glazed)
      (available p98)
      (colour p98 natural)
      (wood p98 teak)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 black)
      (wood p99 mahogany)
      (surface-condition p99 smooth)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 blue)
      (wood p101 walnut)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 mauve)
      (wood p102 walnut)
      (available p103)
      (wood p103 oak)
      (treatment p103 glazed)
      (available p104)
      (colour p104 black)
      (wood p104 beech)
      (available p105)
      (wood p105 cherry)
      (surface-condition p105 verysmooth)
      (available p106)
      (colour p106 white)
      (wood p106 oak)
      (surface-condition p106 smooth)
      (treatment p106 varnished)
      (available p107)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 black)
      (treatment p108 varnished)
      (available p109)
      (colour p109 green)
      (surface-condition p109 smooth)
      (available p110)
      (colour p110 black)
      (wood p110 mahogany)
      (surface-condition p110 smooth)
      (treatment p110 varnished)
      (available p111)
      (wood p111 cherry)
      (surface-condition p111 smooth)
      (available p112)
      (colour p112 red)
      (wood p112 cherry)
      (surface-condition p112 verysmooth)
      (available p113)
      (colour p113 natural)
      (surface-condition p113 smooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 natural)
      (surface-condition p114 verysmooth)
      (available p115)
      (colour p115 white)
      (wood p115 oak)
      (surface-condition p115 verysmooth)
      (available p116)
      (colour p116 mauve)
      (treatment p116 glazed)
      (available p117)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (wood p119 mahogany)
      (treatment p119 glazed)
      (available p120)
      (wood p120 teak)
      (surface-condition p120 verysmooth)
      (available p121)
      (colour p121 natural)
      (wood p121 oak)
      (surface-condition p121 verysmooth)
      (treatment p121 glazed)
      (available p122)
      (wood p122 cherry)
      (treatment p122 varnished)
      (available p123)
      (colour p123 natural)
      (wood p123 mahogany)
      (surface-condition p123 smooth)
      (available p124)
      (colour p124 natural)
      (wood p124 beech)
      (surface-condition p124 smooth)
      (treatment p124 glazed)
      (available p125)
      (colour p125 green)
      (surface-condition p125 verysmooth)
      (available p126)
      (colour p126 black)
      (wood p126 walnut)
      (surface-condition p126 verysmooth)
      (treatment p126 varnished)
      (available p127)
      (colour p127 natural)
      (treatment p127 glazed)
      (available p128)
      (colour p128 green)
      (surface-condition p128 smooth)
      (available p129)
      (colour p129 natural)
      (wood p129 beech)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 natural)
      (wood p130 cherry)
      (surface-condition p130 smooth)
      (available p131)
      (wood p131 walnut)
      (surface-condition p131 verysmooth)
      (available p132)
      (colour p132 red)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 mauve)
      (wood p133 mahogany)
      (available p134)
      (colour p134 red)
      (wood p134 beech)
      (available p135)
      (colour p135 mauve)
      (wood p135 oak)
      (surface-condition p135 smooth)
      (treatment p135 glazed)
      (available p136)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 red)
      (treatment p137 glazed)
      (available p138)
      (colour p138 natural)
      (wood p138 teak)
      (surface-condition p138 verysmooth)
      (treatment p138 glazed)
      (available p139)
      (surface-condition p139 verysmooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 black)
      (wood p140 cherry)
      (available p141)
      (colour p141 natural)
      (wood p141 pine)
      (surface-condition p141 smooth)
      (treatment p141 varnished)
      (available p142)
      (wood p142 walnut)
      (surface-condition p142 verysmooth)
      (available p143)
      (surface-condition p143 verysmooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 red)
      (wood p144 oak)
      (surface-condition p144 smooth)
      (treatment p144 varnished)
      (available p145)
      (wood p145 beech)
      (surface-condition p145 verysmooth)
      (treatment p145 varnished)
      (available p146)
      (surface-condition p146 verysmooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 red)
      (wood p147 beech)
      (treatment p147 glazed)
      (available p148)
      (colour p148 mauve)
      (wood p148 cherry)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 white)
      (surface-condition p149 verysmooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 white)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 natural)
      (wood p151 beech)
      (surface-condition p151 verysmooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 blue)
      (wood p152 cherry)
      (available p153)
      (colour p153 blue)
      (wood p153 mahogany)
      (surface-condition p153 smooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 white)
      (surface-condition p154 verysmooth)
      (treatment p154 glazed)
      (available p155)
      (colour p155 black)
      (surface-condition p155 smooth)
      (available p156)
      (wood p156 oak)
      (surface-condition p156 verysmooth)
      (available p157)
      (surface-condition p157 smooth)
      (treatment p157 varnished)
      (available p158)
      (colour p158 mauve)
      (wood p158 cherry)
      (treatment p158 varnished)
      (available p159)
      (colour p159 white)
      (surface-condition p159 verysmooth)
      (available p160)
      (wood p160 cherry)
      (surface-condition p160 verysmooth)
      (available p161)
      (colour p161 white)
      (wood p161 teak)
      (surface-condition p161 verysmooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 white)
      (wood p162 teak)
      (available p163)
      (colour p163 black)
      (wood p163 walnut)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 white)
      (wood p164 oak)
      (treatment p164 glazed)
      (available p165)
      (wood p165 cherry)
      (surface-condition p165 smooth)
      (treatment p165 varnished)
      (available p166)
      (colour p166 red)
      (wood p166 pine)
      (surface-condition p166 verysmooth)
      (available p167)
      (colour p167 blue)
      (wood p167 pine)
      (available p168)
      (colour p168 blue)
      (surface-condition p168 smooth)
      (available p169)
      (wood p169 pine)
      (surface-condition p169 smooth)
      (available p170)
      (surface-condition p170 verysmooth)
      (treatment p170 varnished)
      (available p171)
      (wood p171 oak)
      (surface-condition p171 smooth)
      (available p172)
      (colour p172 black)
      (wood p172 beech)
      (available p173)
      (colour p173 white)
      (wood p173 pine)
      (surface-condition p173 smooth)
      (treatment p173 glazed)
      (available p174)
      (wood p174 beech)
      (treatment p174 varnished)
      (available p175)
      (wood p175 oak)
      (surface-condition p175 smooth)
      (treatment p175 varnished)
      (available p176)
      (wood p176 walnut)
      (surface-condition p176 verysmooth)
      (available p177)
      (wood p177 beech)
      (surface-condition p177 verysmooth)
      (available p178)
      (colour p178 white)
      (wood p178 walnut)
      (surface-condition p178 smooth)
      (treatment p178 varnished)
      (available p179)
      (colour p179 white)
      (surface-condition p179 verysmooth)
      (available p180)
      (wood p180 cherry)
      (surface-condition p180 verysmooth)
      (available p181)
      (colour p181 mauve)
      (surface-condition p181 smooth)
      (treatment p181 glazed)
      (available p182)
      (colour p182 white)
      (wood p182 mahogany)
      (surface-condition p182 smooth)
      (treatment p182 varnished)
      (available p183)
      (colour p183 mauve)
      (wood p183 pine)
      (surface-condition p183 verysmooth)
      (treatment p183 varnished)
      (available p184)
      (surface-condition p184 smooth)
      (treatment p184 varnished)
      (available p185)
      (colour p185 black)
      (wood p185 cherry)
      (surface-condition p185 smooth)
      (treatment p185 varnished)
      (available p186)
      (colour p186 mauve)
      (surface-condition p186 smooth)
      (available p187)
      (colour p187 natural)
      (wood p187 cherry)
      (surface-condition p187 verysmooth)
      (treatment p187 glazed)
      (available p188)
      (wood p188 mahogany)
      (treatment p188 glazed)
      (available p189)
      (colour p189 white)
      (wood p189 cherry)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 blue)
      (wood p190 mahogany)
      (available p191)
      (colour p191 blue)
      (treatment p191 varnished)
      (available p192)
      (colour p192 blue)
      (wood p192 beech)
      (available p193)
      (colour p193 green)
      (wood p193 mahogany)
      (surface-condition p193 verysmooth)
      (treatment p193 glazed)
      (available p194)
      (colour p194 green)
      (wood p194 beech)
      (available p195)
      (colour p195 mauve)
      (wood p195 oak)
      (surface-condition p195 verysmooth)
      (available p196)
      (wood p196 oak)
      (surface-condition p196 smooth)
      (available p197)
      (wood p197 mahogany)
      (surface-condition p197 smooth)
      (treatment p197 varnished)
      (available p198)
      (wood p198 oak)
      (surface-condition p198 smooth)
      (treatment p198 glazed)
      (available p199)
      (surface-condition p199 verysmooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 green)
      (wood p200 oak)
      (available p201)
      (wood p201 cherry)
      (treatment p201 varnished)
      (available p202)
      (colour p202 red)
      (wood p202 oak)
      (surface-condition p202 smooth)
      (available p203)
      (colour p203 blue)
      (surface-condition p203 verysmooth)
      (available p204)
      (surface-condition p204 smooth)
      (treatment p204 varnished)
      (available p205)
      (colour p205 red)
      (surface-condition p205 smooth)
      (treatment p205 glazed)
      (available p206)
      (colour p206 natural)
      (wood p206 walnut)
      (available p207)
      (colour p207 mauve)
      (surface-condition p207 verysmooth)
      (treatment p207 glazed)
      (available p208)
      (colour p208 blue)
      (surface-condition p208 verysmooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 blue)
      (surface-condition p209 verysmooth)
      (available p210)
      (colour p210 black)
      (wood p210 mahogany)
      (surface-condition p210 verysmooth)
      (treatment p210 varnished)
      (available p211)
      (wood p211 walnut)
      (treatment p211 glazed)
      (available p212)
      (colour p212 blue)
      (wood p212 pine)
      (surface-condition p212 smooth)
      (available p213)
      (colour p213 black)
      (surface-condition p213 verysmooth)
      (available p214)
      (wood p214 walnut)
      (surface-condition p214 verysmooth)
      (available p215)
      (colour p215 green)
      (wood p215 teak)
      (surface-condition p215 smooth)
      (treatment p215 glazed)
      (available p216)
      (wood p216 beech)
      (treatment p216 varnished)
      (available p217)
      (colour p217 white)
      (surface-condition p217 smooth)
      (treatment p217 varnished)
      (available p218)
      (colour p218 black)
      (treatment p218 glazed)
      (available p219)
      (colour p219 mauve)
      (surface-condition p219 verysmooth)
      (treatment p219 varnished)
      (available p220)
      (colour p220 blue)
      (wood p220 walnut)
      (surface-condition p220 smooth)
      (treatment p220 glazed)
      (available p221)
      (surface-condition p221 smooth)
      (treatment p221 glazed)
      (available p222)
      (colour p222 mauve)
      (wood p222 cherry)
      (surface-condition p222 verysmooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 mauve)
      (wood p223 mahogany)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
      (available p224)
      (wood p224 oak)
      (treatment p224 glazed)
      (available p225)
      (colour p225 mauve)
      (surface-condition p225 smooth)
      (available p226)
      (colour p226 black)
      (surface-condition p226 verysmooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 red)
      (surface-condition p227 verysmooth)
      (treatment p227 glazed)
      (available p228)
      (colour p228 red)
      (treatment p228 varnished)
      (available p229)
      (wood p229 oak)
      (surface-condition p229 smooth)
    )
  )
  
)
