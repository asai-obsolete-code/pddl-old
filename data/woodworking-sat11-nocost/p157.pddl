; woodworking task with 158 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 220812

(define (problem wood-prob-sat-157)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue white red mauve black - acolour
    teak oak beech cherry mahogany pine walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 - board
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
    (has-colour glazer0 blue)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
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
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 black)
    (wood p2 pine)
    (surface-condition p2 verysmooth)
    (treatment p2 glazed)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 green)
    (wood p5 oak)
    (surface-condition p5 rough)
    (treatment p5 glazed)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 black)
    (wood p10 beech)
    (surface-condition p10 verysmooth)
    (treatment p10 glazed)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 white)
    (wood p19 oak)
    (surface-condition p19 rough)
    (treatment p19 glazed)
    (goalsize p19 small)
    
    
    
    
    (available p20)
    (colour p20 blue)
    (wood p20 cherry)
    (surface-condition p20 verysmooth)
    (treatment p20 colourfragments)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 natural)
    (wood p26 oak)
    (surface-condition p26 rough)
    (treatment p26 varnished)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 natural)
    (wood p32 teak)
    (surface-condition p32 verysmooth)
    (treatment p32 colourfragments)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 black)
    (wood p44 beech)
    (surface-condition p44 verysmooth)
    (treatment p44 varnished)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 green)
    (wood p52 teak)
    (surface-condition p52 rough)
    (treatment p52 colourfragments)
    (goalsize p52 small)
    
    
    
    
    (available p53)
    (colour p53 natural)
    (wood p53 mahogany)
    (surface-condition p53 smooth)
    (treatment p53 glazed)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 blue)
    (wood p57 walnut)
    (surface-condition p57 verysmooth)
    (treatment p57 colourfragments)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 black)
    (wood p66 walnut)
    (surface-condition p66 rough)
    (treatment p66 colourfragments)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (available p68)
    (colour p68 green)
    (wood p68 cherry)
    (surface-condition p68 verysmooth)
    (treatment p68 glazed)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 blue)
    (wood p74 teak)
    (surface-condition p74 verysmooth)
    (treatment p74 varnished)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 red)
    (wood p81 beech)
    (surface-condition p81 verysmooth)
    (treatment p81 varnished)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 white)
    (wood p85 teak)
    (surface-condition p85 verysmooth)
    (treatment p85 glazed)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (available p103)
    (colour p103 blue)
    (wood p103 beech)
    (surface-condition p103 smooth)
    (treatment p103 colourfragments)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (available p105)
    (colour p105 mauve)
    (wood p105 teak)
    (surface-condition p105 rough)
    (treatment p105 varnished)
    (goalsize p105 large)
    
    
    
    
    (available p106)
    (colour p106 natural)
    (wood p106 teak)
    (surface-condition p106 verysmooth)
    (treatment p106 varnished)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (available p109)
    (colour p109 mauve)
    (wood p109 beech)
    (surface-condition p109 verysmooth)
    (treatment p109 varnished)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (available p114)
    (colour p114 mauve)
    (wood p114 mahogany)
    (surface-condition p114 smooth)
    (treatment p114 varnished)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (available p124)
    (colour p124 green)
    (wood p124 oak)
    (surface-condition p124 rough)
    (treatment p124 varnished)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (available p134)
    (colour p134 green)
    (wood p134 oak)
    (surface-condition p134 smooth)
    (treatment p134 colourfragments)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (available p142)
    (colour p142 red)
    (wood p142 cherry)
    (surface-condition p142 smooth)
    (treatment p142 colourfragments)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (available p147)
    (colour p147 natural)
    (wood p147 pine)
    (surface-condition p147 verysmooth)
    (treatment p147 varnished)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s11)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s11)
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
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s7)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s6)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s7)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s10)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s4)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s8)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s11)
    (wood b19 oak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s10)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s11)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s7)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s5)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s9)
    (wood b27 pine)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s7)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s3)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 walnut)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s10)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 walnut)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s2)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s12)
    (wood b38 teak)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s8)
    (wood b39 teak)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s10)
    (wood b40 teak)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 teak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 teak)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s2)
    (wood b43 teak)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s9)
    (wood b44 beech)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s7)
    (wood b45 beech)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s7)
    (wood b46 beech)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s11)
    (wood b47 beech)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s6)
    (wood b48 beech)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s9)
    (wood b49 beech)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s2)
    (wood b50 beech)
    (surface-condition b50 rough)
    (available b50)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 oak)
      (available p1)
      (wood p1 oak)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 green)
      (wood p2 pine)
      (treatment p2 glazed)
      (available p3)
      (wood p3 pine)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 black)
      (treatment p4 varnished)
      (available p5)
      (colour p5 black)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 black)
      (surface-condition p6 verysmooth)
      (available p7)
      (wood p7 beech)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 green)
      (wood p8 mahogany)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 green)
      (wood p9 pine)
      (available p10)
      (colour p10 mauve)
      (treatment p10 varnished)
      (available p11)
      (wood p11 mahogany)
      (surface-condition p11 smooth)
      (available p12)
      (wood p12 oak)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 black)
      (wood p13 walnut)
      (available p14)
      (colour p14 blue)
      (wood p14 pine)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 mauve)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (wood p16 oak)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 mauve)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 white)
      (wood p18 oak)
      (treatment p18 glazed)
      (available p19)
      (wood p19 oak)
      (surface-condition p19 verysmooth)
      (available p20)
      (wood p20 cherry)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (treatment p21 varnished)
      (available p22)
      (colour p22 black)
      (wood p22 beech)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 natural)
      (treatment p23 varnished)
      (available p24)
      (colour p24 black)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 blue)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 green)
      (surface-condition p26 smooth)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (wood p28 cherry)
      (treatment p28 glazed)
      (available p29)
      (colour p29 blue)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 white)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 natural)
      (wood p31 oak)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 white)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 natural)
      (treatment p33 glazed)
      (available p34)
      (colour p34 white)
      (wood p34 oak)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 black)
      (wood p35 beech)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 mauve)
      (wood p36 walnut)
      (treatment p36 glazed)
      (available p37)
      (colour p37 green)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 white)
      (wood p38 mahogany)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 green)
      (treatment p39 glazed)
      (available p40)
      (colour p40 blue)
      (wood p40 mahogany)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 mauve)
      (wood p41 cherry)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 green)
      (wood p42 teak)
      (available p43)
      (colour p43 natural)
      (wood p43 pine)
      (treatment p43 glazed)
      (available p44)
      (colour p44 blue)
      (wood p44 beech)
      (treatment p44 varnished)
      (available p45)
      (colour p45 white)
      (treatment p45 varnished)
      (available p46)
      (colour p46 white)
      (treatment p46 varnished)
      (available p47)
      (colour p47 white)
      (wood p47 oak)
      (available p48)
      (colour p48 green)
      (wood p48 mahogany)
      (treatment p48 varnished)
      (available p49)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 mauve)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 green)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 black)
      (treatment p52 glazed)
      (available p53)
      (colour p53 mauve)
      (wood p53 mahogany)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 red)
      (treatment p54 glazed)
      (available p55)
      (colour p55 mauve)
      (wood p55 walnut)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (wood p56 mahogany)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 green)
      (treatment p57 glazed)
      (available p58)
      (colour p58 black)
      (wood p58 pine)
      (available p59)
      (colour p59 mauve)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 red)
      (wood p60 beech)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (wood p61 oak)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 natural)
      (wood p62 cherry)
      (available p63)
      (colour p63 white)
      (wood p63 cherry)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 green)
      (wood p65 teak)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 blue)
      (wood p67 cherry)
      (available p68)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (wood p69 pine)
      (surface-condition p69 smooth)
      (available p70)
      (wood p70 oak)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 mauve)
      (treatment p71 varnished)
      (available p72)
      (colour p72 white)
      (wood p72 cherry)
      (surface-condition p72 smooth)
      (available p73)
      (surface-condition p73 verysmooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 black)
      (treatment p74 varnished)
      (available p75)
      (wood p75 mahogany)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 natural)
      (surface-condition p76 verysmooth)
      (available p77)
      (wood p77 pine)
      (treatment p77 glazed)
      (available p78)
      (colour p78 white)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 black)
      (wood p79 beech)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (wood p80 beech)
      (surface-condition p80 smooth)
      (available p81)
      (colour p81 natural)
      (wood p81 beech)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 natural)
      (wood p82 oak)
      (surface-condition p82 verysmooth)
      (available p83)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 natural)
      (wood p84 oak)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (wood p85 teak)
      (surface-condition p85 smooth)
      (available p86)
      (wood p86 mahogany)
      (surface-condition p86 smooth)
      (treatment p86 glazed)
      (available p87)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (wood p89 mahogany)
      (surface-condition p89 smooth)
      (available p90)
      (colour p90 black)
      (wood p90 cherry)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 natural)
      (surface-condition p91 verysmooth)
      (available p92)
      (wood p92 mahogany)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 mauve)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 white)
      (wood p94 mahogany)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 green)
      (surface-condition p95 smooth)
      (available p96)
      (wood p96 teak)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 blue)
      (wood p97 mahogany)
      (available p98)
      (colour p98 green)
      (wood p98 mahogany)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (wood p99 teak)
      (treatment p99 varnished)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 blue)
      (treatment p101 glazed)
      (available p102)
      (colour p102 natural)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 white)
      (surface-condition p103 verysmooth)
      (available p104)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 red)
      (surface-condition p105 smooth)
      (available p106)
      (colour p106 red)
      (wood p106 teak)
      (available p107)
      (wood p107 cherry)
      (surface-condition p107 smooth)
      (available p108)
      (colour p108 white)
      (wood p108 cherry)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 black)
      (wood p109 beech)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 green)
      (surface-condition p110 smooth)
      (treatment p110 glazed)
      (available p111)
      (wood p111 pine)
      (surface-condition p111 verysmooth)
      (available p112)
      (colour p112 natural)
      (treatment p112 varnished)
      (available p113)
      (colour p113 natural)
      (wood p113 oak)
      (treatment p113 glazed)
      (available p114)
      (colour p114 blue)
      (surface-condition p114 verysmooth)
      (available p115)
      (wood p115 mahogany)
      (surface-condition p115 verysmooth)
      (available p116)
      (colour p116 white)
      (wood p116 beech)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 white)
      (wood p117 teak)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (colour p118 natural)
      (wood p118 pine)
      (surface-condition p118 smooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 natural)
      (wood p119 oak)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 red)
      (surface-condition p120 verysmooth)
      (available p121)
      (colour p121 blue)
      (wood p121 oak)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 mauve)
      (surface-condition p122 smooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 red)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (wood p124 oak)
      (surface-condition p124 smooth)
      (treatment p124 varnished)
      (available p125)
      (colour p125 red)
      (wood p125 mahogany)
      (available p126)
      (surface-condition p126 smooth)
      (treatment p126 varnished)
      (available p127)
      (colour p127 green)
      (wood p127 oak)
      (surface-condition p127 verysmooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 green)
      (wood p128 oak)
      (surface-condition p128 smooth)
      (treatment p128 glazed)
      (available p129)
      (colour p129 white)
      (wood p129 cherry)
      (surface-condition p129 smooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 natural)
      (treatment p130 varnished)
      (available p131)
      (wood p131 teak)
      (treatment p131 glazed)
      (available p132)
      (colour p132 natural)
      (wood p132 walnut)
      (surface-condition p132 verysmooth)
      (available p133)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 red)
      (surface-condition p134 verysmooth)
      (available p135)
      (colour p135 natural)
      (wood p135 oak)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 green)
      (wood p136 walnut)
      (surface-condition p136 verysmooth)
      (treatment p136 glazed)
      (available p137)
      (colour p137 green)
      (wood p137 cherry)
      (surface-condition p137 verysmooth)
      (treatment p137 glazed)
      (available p138)
      (surface-condition p138 verysmooth)
      (treatment p138 glazed)
      (available p139)
      (wood p139 beech)
      (treatment p139 glazed)
      (available p140)
      (colour p140 blue)
      (surface-condition p140 smooth)
      (available p141)
      (colour p141 green)
      (wood p141 beech)
      (surface-condition p141 verysmooth)
      (treatment p141 varnished)
      (available p142)
      (colour p142 black)
      (wood p142 cherry)
      (surface-condition p142 smooth)
      (treatment p142 glazed)
      (available p143)
      (colour p143 white)
      (wood p143 pine)
      (surface-condition p143 verysmooth)
      (available p144)
      (colour p144 white)
      (wood p144 beech)
      (surface-condition p144 smooth)
      (treatment p144 varnished)
      (available p145)
      (surface-condition p145 smooth)
      (treatment p145 varnished)
      (available p146)
      (colour p146 natural)
      (wood p146 beech)
      (surface-condition p146 verysmooth)
      (treatment p146 varnished)
      (available p147)
      (colour p147 black)
      (wood p147 pine)
      (surface-condition p147 smooth)
      (available p148)
      (colour p148 white)
      (surface-condition p148 verysmooth)
      (available p149)
      (colour p149 green)
      (wood p149 teak)
      (surface-condition p149 smooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 natural)
      (treatment p150 glazed)
      (available p151)
      (colour p151 blue)
      (wood p151 teak)
      (treatment p151 glazed)
      (available p152)
      (wood p152 mahogany)
      (surface-condition p152 verysmooth)
      (available p153)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 mauve)
      (wood p154 pine)
      (surface-condition p154 smooth)
      (treatment p154 varnished)
      (available p155)
      (colour p155 green)
      (wood p155 cherry)
      (surface-condition p155 smooth)
      (treatment p155 varnished)
      (available p156)
      (colour p156 black)
      (wood p156 mahogany)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (colour p157 white)
      (surface-condition p157 smooth)
    )
  )
  
)
