; woodworking task with 236 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 824461

(define (problem wood-prob-sat-89)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black mauve green white red blue - acolour
    walnut beech pine oak cherry teak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 - board
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
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 red)
    (wood p2 beech)
    (surface-condition p2 smooth)
    (treatment p2 colourfragments)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (available p8)
    (colour p8 green)
    (wood p8 beech)
    (surface-condition p8 smooth)
    (treatment p8 glazed)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 white)
    (wood p10 beech)
    (surface-condition p10 rough)
    (treatment p10 glazed)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 mauve)
    (wood p13 teak)
    (surface-condition p13 verysmooth)
    (treatment p13 varnished)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (available p18)
    (colour p18 mauve)
    (wood p18 oak)
    (surface-condition p18 smooth)
    (treatment p18 colourfragments)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 white)
    (wood p21 mahogany)
    (surface-condition p21 rough)
    (treatment p21 glazed)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 red)
    (wood p29 beech)
    (surface-condition p29 smooth)
    (treatment p29 varnished)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 red)
    (wood p30 walnut)
    (surface-condition p30 verysmooth)
    (treatment p30 varnished)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (available p39)
    (colour p39 red)
    (wood p39 beech)
    (surface-condition p39 rough)
    (treatment p39 varnished)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 green)
    (wood p43 pine)
    (surface-condition p43 verysmooth)
    (treatment p43 colourfragments)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 blue)
    (wood p47 teak)
    (surface-condition p47 smooth)
    (treatment p47 varnished)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 black)
    (wood p57 oak)
    (surface-condition p57 smooth)
    (treatment p57 glazed)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 black)
    (wood p61 mahogany)
    (surface-condition p61 rough)
    (treatment p61 colourfragments)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (available p64)
    (colour p64 mauve)
    (wood p64 cherry)
    (surface-condition p64 rough)
    (treatment p64 varnished)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (available p72)
    (colour p72 black)
    (wood p72 walnut)
    (surface-condition p72 rough)
    (treatment p72 glazed)
    (goalsize p72 small)
    
    
    
    
    (available p73)
    (colour p73 natural)
    (wood p73 cherry)
    (surface-condition p73 smooth)
    (treatment p73 glazed)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (available p79)
    (colour p79 natural)
    (wood p79 beech)
    (surface-condition p79 rough)
    (treatment p79 varnished)
    (goalsize p79 small)
    
    
    
    
    (available p80)
    (colour p80 mauve)
    (wood p80 oak)
    (surface-condition p80 smooth)
    (treatment p80 varnished)
    (goalsize p80 small)
    
    
    
    
    (available p81)
    (colour p81 blue)
    (wood p81 teak)
    (surface-condition p81 smooth)
    (treatment p81 varnished)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (available p93)
    (colour p93 black)
    (wood p93 beech)
    (surface-condition p93 rough)
    (treatment p93 varnished)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (available p98)
    (colour p98 mauve)
    (wood p98 oak)
    (surface-condition p98 verysmooth)
    (treatment p98 colourfragments)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (available p100)
    (colour p100 red)
    (wood p100 beech)
    (surface-condition p100 smooth)
    (treatment p100 glazed)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 cherry)
    (surface-condition p101 rough)
    (treatment p101 glazed)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (available p103)
    (colour p103 black)
    (wood p103 beech)
    (surface-condition p103 verysmooth)
    (treatment p103 colourfragments)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (available p106)
    (colour p106 white)
    (wood p106 mahogany)
    (surface-condition p106 verysmooth)
    (treatment p106 varnished)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (available p120)
    (colour p120 black)
    (wood p120 oak)
    (surface-condition p120 smooth)
    (treatment p120 varnished)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (available p126)
    (colour p126 natural)
    (wood p126 cherry)
    (surface-condition p126 verysmooth)
    (treatment p126 glazed)
    (goalsize p126 medium)
    
    
    
    
    (available p127)
    (colour p127 blue)
    (wood p127 walnut)
    (surface-condition p127 verysmooth)
    (treatment p127 glazed)
    (goalsize p127 medium)
    
    
    
    
    (available p128)
    (colour p128 green)
    (wood p128 teak)
    (surface-condition p128 rough)
    (treatment p128 colourfragments)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 natural)
    (wood p130 oak)
    (surface-condition p130 rough)
    (treatment p130 varnished)
    (goalsize p130 small)
    
    
    
    
    (available p131)
    (colour p131 white)
    (wood p131 pine)
    (surface-condition p131 smooth)
    (treatment p131 varnished)
    (goalsize p131 medium)
    
    
    
    
    (available p132)
    (colour p132 red)
    (wood p132 mahogany)
    (surface-condition p132 smooth)
    (treatment p132 colourfragments)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (available p139)
    (colour p139 blue)
    (wood p139 mahogany)
    (surface-condition p139 rough)
    (treatment p139 colourfragments)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (available p141)
    (colour p141 white)
    (wood p141 walnut)
    (surface-condition p141 rough)
    (treatment p141 glazed)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (available p148)
    (colour p148 blue)
    (wood p148 walnut)
    (surface-condition p148 verysmooth)
    (treatment p148 glazed)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (available p153)
    (colour p153 red)
    (wood p153 mahogany)
    (surface-condition p153 rough)
    (treatment p153 varnished)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (available p158)
    (colour p158 natural)
    (wood p158 oak)
    (surface-condition p158 rough)
    (treatment p158 glazed)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (available p164)
    (colour p164 red)
    (wood p164 teak)
    (surface-condition p164 verysmooth)
    (treatment p164 glazed)
    (goalsize p164 medium)
    
    
    
    
    (available p165)
    (colour p165 natural)
    (wood p165 mahogany)
    (surface-condition p165 verysmooth)
    (treatment p165 glazed)
    (goalsize p165 small)
    
    
    
    
    (available p166)
    (colour p166 blue)
    (wood p166 teak)
    (surface-condition p166 smooth)
    (treatment p166 varnished)
    (goalsize p166 large)
    
    
    
    
    (available p167)
    (colour p167 green)
    (wood p167 pine)
    (surface-condition p167 rough)
    (treatment p167 varnished)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (available p169)
    (colour p169 mauve)
    (wood p169 beech)
    (surface-condition p169 rough)
    (treatment p169 glazed)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (available p176)
    (colour p176 mauve)
    (wood p176 mahogany)
    (surface-condition p176 smooth)
    (treatment p176 glazed)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (available p181)
    (colour p181 red)
    (wood p181 mahogany)
    (surface-condition p181 rough)
    (treatment p181 colourfragments)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (available p185)
    (colour p185 white)
    (wood p185 beech)
    (surface-condition p185 rough)
    (treatment p185 glazed)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (available p193)
    (colour p193 natural)
    (wood p193 oak)
    (surface-condition p193 rough)
    (treatment p193 glazed)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (available p199)
    (colour p199 red)
    (wood p199 mahogany)
    (surface-condition p199 verysmooth)
    (treatment p199 colourfragments)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (available p206)
    (colour p206 green)
    (wood p206 cherry)
    (surface-condition p206 verysmooth)
    (treatment p206 glazed)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (available p211)
    (colour p211 mauve)
    (wood p211 cherry)
    (surface-condition p211 smooth)
    (treatment p211 glazed)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 medium)
    
    
    
    
    (available p223)
    (colour p223 white)
    (wood p223 oak)
    (surface-condition p223 rough)
    (treatment p223 varnished)
    (goalsize p223 small)
    
    
    
    
    (available p224)
    (colour p224 blue)
    (wood p224 teak)
    (surface-condition p224 smooth)
    (treatment p224 glazed)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (available p226)
    (colour p226 mauve)
    (wood p226 beech)
    (surface-condition p226 rough)
    (treatment p226 glazed)
    (goalsize p226 large)
    
    
    
    
    (available p227)
    (colour p227 green)
    (wood p227 teak)
    (surface-condition p227 verysmooth)
    (treatment p227 varnished)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 large)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (available p234)
    (colour p234 natural)
    (wood p234 cherry)
    (surface-condition p234 verysmooth)
    (treatment p234 colourfragments)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s3)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s8)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s4)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s9)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s5)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s11)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
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
    (boardsize b24 s5)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s3)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s6)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s6)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s10)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s1)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s8)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s5)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s12)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s10)
    (wood b38 walnut)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s7)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s6)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s1)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s6)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 teak)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s7)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s6)
    (wood b49 teak)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s11)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s9)
    (wood b51 beech)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s8)
    (wood b52 beech)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s8)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s8)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s5)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s8)
    (wood b56 beech)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s7)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s4)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 white)
      (wood p1 teak)
      (available p2)
      (colour p2 natural)
      (treatment p2 varnished)
      (available p3)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (wood p6 beech)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 natural)
      (surface-condition p7 verysmooth)
      (available p8)
      (wood p8 beech)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 green)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 red)
      (wood p12 oak)
      (available p13)
      (colour p13 red)
      (wood p13 teak)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 teak)
      (treatment p14 varnished)
      (available p15)
      (colour p15 white)
      (wood p15 oak)
      (available p16)
      (colour p16 white)
      (wood p16 beech)
      (surface-condition p16 verysmooth)
      (available p17)
      (wood p17 walnut)
      (treatment p17 glazed)
      (available p18)
      (colour p18 red)
      (wood p18 oak)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 natural)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 natural)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 red)
      (treatment p21 varnished)
      (available p22)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 black)
      (wood p23 beech)
      (available p24)
      (colour p24 mauve)
      (wood p24 oak)
      (treatment p24 varnished)
      (available p25)
      (colour p25 green)
      (wood p25 beech)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 red)
      (wood p26 cherry)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 natural)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (wood p28 mahogany)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 white)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 black)
      (treatment p30 varnished)
      (available p31)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 natural)
      (wood p32 oak)
      (available p33)
      (colour p33 natural)
      (wood p33 beech)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 blue)
      (wood p34 mahogany)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 mauve)
      (wood p35 walnut)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 natural)
      (wood p36 walnut)
      (treatment p36 glazed)
      (available p37)
      (wood p37 walnut)
      (treatment p37 varnished)
      (available p38)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (wood p39 beech)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 black)
      (treatment p40 glazed)
      (available p41)
      (wood p41 teak)
      (treatment p41 glazed)
      (available p42)
      (wood p42 mahogany)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 mauve)
      (treatment p43 varnished)
      (available p44)
      (colour p44 red)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 mauve)
      (wood p45 oak)
      (available p46)
      (colour p46 natural)
      (wood p46 pine)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 natural)
      (treatment p47 varnished)
      (available p48)
      (wood p48 oak)
      (surface-condition p48 verysmooth)
      (available p49)
      (colour p49 black)
      (wood p49 beech)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (wood p50 beech)
      (surface-condition p50 verysmooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 black)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 natural)
      (wood p52 mahogany)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 natural)
      (wood p54 cherry)
      (treatment p54 glazed)
      (available p55)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 red)
      (wood p56 cherry)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 green)
      (wood p57 oak)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 pine)
      (treatment p58 glazed)
      (available p59)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 red)
      (wood p60 pine)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 green)
      (wood p61 mahogany)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 mauve)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 natural)
      (wood p63 teak)
      (treatment p63 varnished)
      (available p64)
      (colour p64 blue)
      (treatment p64 varnished)
      (available p65)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 blue)
      (wood p66 oak)
      (surface-condition p66 verysmooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 blue)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 black)
      (treatment p68 glazed)
      (available p69)
      (wood p69 oak)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 black)
      (wood p70 walnut)
      (available p71)
      (colour p71 natural)
      (wood p71 walnut)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 blue)
      (wood p72 walnut)
      (available p73)
      (colour p73 white)
      (wood p73 cherry)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (wood p74 walnut)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 mauve)
      (wood p75 pine)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 white)
      (wood p76 walnut)
      (available p77)
      (wood p77 mahogany)
      (treatment p77 varnished)
      (available p78)
      (colour p78 mauve)
      (wood p78 teak)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 red)
      (surface-condition p79 smooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 natural)
      (wood p80 oak)
      (available p81)
      (colour p81 mauve)
      (wood p81 teak)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (wood p82 beech)
      (treatment p82 glazed)
      (available p83)
      (colour p83 mauve)
      (wood p83 beech)
      (treatment p83 varnished)
      (available p84)
      (colour p84 white)
      (wood p84 oak)
      (surface-condition p84 smooth)
      (treatment p84 glazed)
      (available p85)
      (colour p85 blue)
      (wood p85 mahogany)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 natural)
      (wood p86 mahogany)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 green)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 mauve)
      (wood p88 walnut)
      (available p89)
      (wood p89 oak)
      (treatment p89 varnished)
      (available p90)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (wood p91 walnut)
      (surface-condition p91 smooth)
      (treatment p91 varnished)
      (available p92)
      (wood p92 walnut)
      (treatment p92 varnished)
      (available p93)
      (colour p93 white)
      (wood p93 beech)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 green)
      (surface-condition p94 verysmooth)
      (available p95)
      (wood p95 walnut)
      (surface-condition p95 smooth)
      (available p96)
      (colour p96 mauve)
      (wood p96 teak)
      (available p97)
      (colour p97 blue)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 natural)
      (treatment p98 varnished)
      (available p99)
      (colour p99 white)
      (surface-condition p99 verysmooth)
      (available p100)
      (colour p100 green)
      (wood p100 beech)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (wood p101 cherry)
      (treatment p101 varnished)
      (available p102)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 red)
      (wood p103 beech)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 mauve)
      (wood p104 beech)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 red)
      (treatment p105 glazed)
      (available p106)
      (colour p106 natural)
      (treatment p106 varnished)
      (available p107)
      (wood p107 beech)
      (treatment p107 glazed)
      (available p108)
      (surface-condition p108 smooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 mauve)
      (wood p109 beech)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (wood p110 pine)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 mauve)
      (treatment p111 glazed)
      (available p112)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 white)
      (treatment p114 varnished)
      (available p115)
      (colour p115 white)
      (wood p115 cherry)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (wood p116 beech)
      (surface-condition p116 smooth)
      (available p117)
      (colour p117 white)
      (treatment p117 glazed)
      (available p118)
      (wood p118 oak)
      (surface-condition p118 verysmooth)
      (available p119)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 white)
      (surface-condition p120 verysmooth)
      (available p121)
      (colour p121 mauve)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 black)
      (wood p122 pine)
      (available p123)
      (surface-condition p123 verysmooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 mauve)
      (treatment p124 glazed)
      (available p125)
      (surface-condition p125 smooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 green)
      (wood p126 cherry)
      (surface-condition p126 smooth)
      (treatment p126 varnished)
      (available p127)
      (wood p127 walnut)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 black)
      (wood p128 teak)
      (surface-condition p128 verysmooth)
      (available p129)
      (colour p129 green)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 white)
      (wood p130 oak)
      (surface-condition p130 verysmooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 black)
      (wood p131 pine)
      (surface-condition p131 smooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 blue)
      (wood p132 mahogany)
      (available p133)
      (colour p133 black)
      (surface-condition p133 smooth)
      (available p134)
      (colour p134 blue)
      (surface-condition p134 smooth)
      (treatment p134 glazed)
      (available p135)
      (colour p135 green)
      (wood p135 walnut)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (wood p136 cherry)
      (treatment p136 varnished)
      (available p137)
      (colour p137 blue)
      (wood p137 oak)
      (available p138)
      (wood p138 cherry)
      (surface-condition p138 verysmooth)
      (available p139)
      (colour p139 red)
      (surface-condition p139 smooth)
      (available p140)
      (colour p140 mauve)
      (wood p140 oak)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 black)
      (treatment p141 glazed)
      (available p142)
      (wood p142 oak)
      (treatment p142 glazed)
      (available p143)
      (wood p143 mahogany)
      (surface-condition p143 smooth)
      (available p144)
      (wood p144 pine)
      (treatment p144 glazed)
      (available p145)
      (colour p145 white)
      (wood p145 beech)
      (surface-condition p145 verysmooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 green)
      (wood p146 pine)
      (surface-condition p146 verysmooth)
      (available p147)
      (wood p147 cherry)
      (surface-condition p147 verysmooth)
      (available p148)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (surface-condition p149 verysmooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 blue)
      (wood p150 beech)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 blue)
      (wood p151 oak)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (wood p152 pine)
      (surface-condition p152 smooth)
      (available p153)
      (wood p153 mahogany)
      (treatment p153 glazed)
      (available p154)
      (colour p154 green)
      (treatment p154 varnished)
      (available p155)
      (colour p155 black)
      (wood p155 teak)
      (treatment p155 glazed)
      (available p156)
      (colour p156 black)
      (wood p156 mahogany)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (colour p157 black)
      (wood p157 pine)
      (surface-condition p157 smooth)
      (available p158)
      (colour p158 red)
      (wood p158 oak)
      (surface-condition p158 smooth)
      (treatment p158 glazed)
      (available p159)
      (surface-condition p159 verysmooth)
      (treatment p159 varnished)
      (available p160)
      (colour p160 mauve)
      (wood p160 pine)
      (surface-condition p160 smooth)
      (treatment p160 varnished)
      (available p161)
      (wood p161 beech)
      (surface-condition p161 verysmooth)
      (available p162)
      (surface-condition p162 verysmooth)
      (treatment p162 varnished)
      (available p163)
      (wood p163 mahogany)
      (treatment p163 glazed)
      (available p164)
      (colour p164 green)
      (wood p164 teak)
      (surface-condition p164 verysmooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 blue)
      (wood p165 mahogany)
      (surface-condition p165 smooth)
      (treatment p165 varnished)
      (available p166)
      (colour p166 black)
      (wood p166 teak)
      (available p167)
      (wood p167 pine)
      (treatment p167 glazed)
      (available p168)
      (wood p168 mahogany)
      (surface-condition p168 verysmooth)
      (available p169)
      (colour p169 green)
      (treatment p169 varnished)
      (available p170)
      (colour p170 green)
      (surface-condition p170 verysmooth)
      (available p171)
      (colour p171 mauve)
      (wood p171 teak)
      (surface-condition p171 smooth)
      (treatment p171 varnished)
      (available p172)
      (colour p172 black)
      (wood p172 teak)
      (available p173)
      (wood p173 teak)
      (treatment p173 glazed)
      (available p174)
      (colour p174 blue)
      (surface-condition p174 verysmooth)
      (available p175)
      (colour p175 natural)
      (surface-condition p175 verysmooth)
      (available p176)
      (surface-condition p176 verysmooth)
      (treatment p176 varnished)
      (available p177)
      (wood p177 mahogany)
      (treatment p177 varnished)
      (available p178)
      (colour p178 white)
      (wood p178 mahogany)
      (surface-condition p178 verysmooth)
      (available p179)
      (wood p179 cherry)
      (treatment p179 glazed)
      (available p180)
      (colour p180 white)
      (wood p180 oak)
      (surface-condition p180 smooth)
      (treatment p180 varnished)
      (available p181)
      (wood p181 mahogany)
      (surface-condition p181 smooth)
      (available p182)
      (colour p182 mauve)
      (wood p182 beech)
      (surface-condition p182 smooth)
      (treatment p182 varnished)
      (available p183)
      (colour p183 green)
      (wood p183 pine)
      (surface-condition p183 verysmooth)
      (treatment p183 glazed)
      (available p184)
      (colour p184 green)
      (wood p184 mahogany)
      (surface-condition p184 smooth)
      (available p185)
      (colour p185 green)
      (wood p185 beech)
      (surface-condition p185 smooth)
      (treatment p185 glazed)
      (available p186)
      (colour p186 white)
      (wood p186 walnut)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 red)
      (wood p187 pine)
      (treatment p187 glazed)
      (available p188)
      (colour p188 green)
      (wood p188 oak)
      (treatment p188 varnished)
      (available p189)
      (surface-condition p189 verysmooth)
      (treatment p189 varnished)
      (available p190)
      (colour p190 red)
      (wood p190 walnut)
      (available p191)
      (wood p191 pine)
      (treatment p191 glazed)
      (available p192)
      (colour p192 natural)
      (surface-condition p192 smooth)
      (available p193)
      (colour p193 mauve)
      (wood p193 oak)
      (surface-condition p193 verysmooth)
      (available p194)
      (wood p194 cherry)
      (surface-condition p194 verysmooth)
      (available p195)
      (colour p195 blue)
      (treatment p195 varnished)
      (available p196)
      (colour p196 red)
      (wood p196 oak)
      (treatment p196 glazed)
      (available p197)
      (wood p197 mahogany)
      (treatment p197 glazed)
      (available p198)
      (colour p198 red)
      (treatment p198 glazed)
      (available p199)
      (colour p199 blue)
      (wood p199 mahogany)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 red)
      (wood p200 cherry)
      (surface-condition p200 smooth)
      (treatment p200 glazed)
      (available p201)
      (surface-condition p201 verysmooth)
      (treatment p201 varnished)
      (available p202)
      (colour p202 natural)
      (surface-condition p202 verysmooth)
      (available p203)
      (colour p203 blue)
      (surface-condition p203 smooth)
      (treatment p203 glazed)
      (available p204)
      (wood p204 oak)
      (treatment p204 glazed)
      (available p205)
      (colour p205 black)
      (treatment p205 glazed)
      (available p206)
      (colour p206 black)
      (wood p206 cherry)
      (surface-condition p206 smooth)
      (treatment p206 varnished)
      (available p207)
      (wood p207 teak)
      (surface-condition p207 verysmooth)
      (available p208)
      (wood p208 mahogany)
      (surface-condition p208 smooth)
      (available p209)
      (colour p209 black)
      (surface-condition p209 verysmooth)
      (available p210)
      (surface-condition p210 verysmooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 natural)
      (wood p211 cherry)
      (surface-condition p211 verysmooth)
      (treatment p211 varnished)
      (available p212)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (wood p213 pine)
      (surface-condition p213 verysmooth)
      (treatment p213 glazed)
      (available p214)
      (colour p214 natural)
      (wood p214 pine)
      (surface-condition p214 verysmooth)
      (treatment p214 varnished)
      (available p215)
      (surface-condition p215 smooth)
      (treatment p215 varnished)
      (available p216)
      (wood p216 cherry)
      (treatment p216 glazed)
      (available p217)
      (colour p217 black)
      (surface-condition p217 verysmooth)
      (treatment p217 varnished)
      (available p218)
      (wood p218 mahogany)
      (surface-condition p218 smooth)
      (available p219)
      (colour p219 white)
      (treatment p219 glazed)
      (available p220)
      (colour p220 mauve)
      (wood p220 pine)
      (surface-condition p220 smooth)
      (treatment p220 glazed)
      (available p221)
      (colour p221 white)
      (wood p221 teak)
      (surface-condition p221 smooth)
      (treatment p221 glazed)
      (available p222)
      (wood p222 mahogany)
      (surface-condition p222 verysmooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 blue)
      (treatment p223 glazed)
      (available p224)
      (colour p224 white)
      (surface-condition p224 verysmooth)
      (available p225)
      (colour p225 mauve)
      (surface-condition p225 smooth)
      (available p226)
      (colour p226 white)
      (wood p226 beech)
      (surface-condition p226 verysmooth)
      (treatment p226 varnished)
      (available p227)
      (colour p227 white)
      (treatment p227 varnished)
      (available p228)
      (wood p228 pine)
      (surface-condition p228 verysmooth)
      (available p229)
      (wood p229 beech)
      (surface-condition p229 smooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 green)
      (wood p230 pine)
      (surface-condition p230 smooth)
      (treatment p230 varnished)
      (available p231)
      (wood p231 oak)
      (surface-condition p231 verysmooth)
      (treatment p231 varnished)
      (available p232)
      (colour p232 red)
      (wood p232 teak)
      (available p233)
      (colour p233 natural)
      (wood p233 pine)
      (surface-condition p233 verysmooth)
      (treatment p233 glazed)
      (available p234)
      (colour p234 green)
      (surface-condition p234 smooth)
      (treatment p234 glazed)
      (available p235)
      (colour p235 green)
      (wood p235 teak)
      (surface-condition p235 smooth)
      (treatment p235 glazed)
    )
  )
  
)
