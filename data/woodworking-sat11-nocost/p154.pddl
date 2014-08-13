; woodworking task with 149 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 738504

(define (problem wood-prob-sat-154)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white green red black mauve blue - acolour
    mahogany cherry walnut pine teak oak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 - board
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
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 black)
    (wood p0 oak)
    (surface-condition p0 rough)
    (treatment p0 glazed)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 mauve)
    (wood p2 cherry)
    (surface-condition p2 verysmooth)
    (treatment p2 glazed)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 white)
    (wood p4 cherry)
    (surface-condition p4 rough)
    (treatment p4 glazed)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 natural)
    (wood p11 teak)
    (surface-condition p11 smooth)
    (treatment p11 colourfragments)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (available p24)
    (colour p24 mauve)
    (wood p24 beech)
    (surface-condition p24 rough)
    (treatment p24 glazed)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (available p30)
    (colour p30 blue)
    (wood p30 walnut)
    (surface-condition p30 rough)
    (treatment p30 varnished)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 natural)
    (wood p35 oak)
    (surface-condition p35 smooth)
    (treatment p35 glazed)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (available p42)
    (colour p42 red)
    (wood p42 beech)
    (surface-condition p42 smooth)
    (treatment p42 varnished)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 natural)
    (wood p50 walnut)
    (surface-condition p50 smooth)
    (treatment p50 glazed)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 black)
    (wood p51 cherry)
    (surface-condition p51 rough)
    (treatment p51 colourfragments)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (available p53)
    (colour p53 black)
    (wood p53 walnut)
    (surface-condition p53 smooth)
    (treatment p53 varnished)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (available p69)
    (colour p69 black)
    (wood p69 cherry)
    (surface-condition p69 smooth)
    (treatment p69 colourfragments)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 mauve)
    (wood p74 walnut)
    (surface-condition p74 verysmooth)
    (treatment p74 glazed)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 white)
    (wood p75 mahogany)
    (surface-condition p75 smooth)
    (treatment p75 colourfragments)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (available p80)
    (colour p80 natural)
    (wood p80 cherry)
    (surface-condition p80 verysmooth)
    (treatment p80 glazed)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 black)
    (wood p81 oak)
    (surface-condition p81 smooth)
    (treatment p81 glazed)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (available p83)
    (colour p83 blue)
    (wood p83 pine)
    (surface-condition p83 smooth)
    (treatment p83 glazed)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 black)
    (wood p85 beech)
    (surface-condition p85 rough)
    (treatment p85 glazed)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 white)
    (wood p92 oak)
    (surface-condition p92 verysmooth)
    (treatment p92 varnished)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
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
    (wood p98 cherry)
    (surface-condition p98 rough)
    (treatment p98 glazed)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (available p102)
    (colour p102 natural)
    (wood p102 pine)
    (surface-condition p102 smooth)
    (treatment p102 glazed)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (available p108)
    (colour p108 natural)
    (wood p108 walnut)
    (surface-condition p108 smooth)
    (treatment p108 varnished)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 white)
    (wood p130 teak)
    (surface-condition p130 smooth)
    (treatment p130 colourfragments)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (available p132)
    (colour p132 green)
    (wood p132 cherry)
    (surface-condition p132 rough)
    (treatment p132 colourfragments)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 blue)
    (wood p142 walnut)
    (surface-condition p142 verysmooth)
    (treatment p142 colourfragments)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s11)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s12)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
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
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 pine)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 pine)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 pine)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s6)
    (wood b24 pine)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s6)
    (wood b25 pine)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s6)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 walnut)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 walnut)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s10)
    (wood b29 walnut)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s2)
    (wood b30 walnut)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 teak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 teak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s10)
    (wood b33 teak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 teak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 teak)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s7)
    (wood b36 teak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s10)
    (wood b37 beech)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s10)
    (wood b38 beech)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s7)
    (wood b39 beech)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s8)
    (wood b40 beech)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s7)
    (wood b41 beech)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s7)
    (wood b42 beech)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s10)
    (wood b43 beech)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s8)
    (wood b44 beech)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s2)
    (wood b45 beech)
    (surface-condition b45 rough)
    (available b45)
  )
  (:goal
    (and
      (available p0)
      (wood p0 oak)
      (surface-condition p0 smooth)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 pine)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 green)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 green)
      (wood p5 oak)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 green)
      (surface-condition p6 smooth)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 mauve)
      (surface-condition p8 verysmooth)
      (available p9)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 cherry)
      (treatment p10 glazed)
      (available p11)
      (colour p11 white)
      (wood p11 teak)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (wood p12 oak)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 green)
      (wood p13 cherry)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 white)
      (treatment p14 glazed)
      (available p15)
      (colour p15 green)
      (treatment p15 glazed)
      (available p16)
      (wood p16 beech)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 black)
      (treatment p17 varnished)
      (available p18)
      (colour p18 blue)
      (surface-condition p18 smooth)
      (available p19)
      (wood p19 mahogany)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 green)
      (wood p20 beech)
      (available p21)
      (wood p21 mahogany)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 blue)
      (surface-condition p22 verysmooth)
      (available p23)
      (wood p23 pine)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 natural)
      (wood p24 beech)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 green)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 cherry)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 natural)
      (wood p28 teak)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 red)
      (surface-condition p29 smooth)
      (available p30)
      (wood p30 walnut)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 green)
      (wood p31 pine)
      (available p32)
      (colour p32 red)
      (wood p32 oak)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 white)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 black)
      (wood p34 walnut)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 white)
      (treatment p35 varnished)
      (available p36)
      (colour p36 natural)
      (wood p36 mahogany)
      (available p37)
      (wood p37 mahogany)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 black)
      (wood p38 beech)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 natural)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 red)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 green)
      (wood p41 mahogany)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 mauve)
      (treatment p42 varnished)
      (available p43)
      (colour p43 white)
      (treatment p43 glazed)
      (available p44)
      (wood p44 oak)
      (treatment p44 glazed)
      (available p45)
      (wood p45 pine)
      (surface-condition p45 verysmooth)
      (available p46)
      (colour p46 green)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 red)
      (wood p47 cherry)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 green)
      (wood p48 mahogany)
      (treatment p48 glazed)
      (available p49)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 red)
      (treatment p50 varnished)
      (available p51)
      (colour p51 green)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 red)
      (wood p52 pine)
      (available p53)
      (colour p53 white)
      (wood p53 walnut)
      (available p54)
      (colour p54 mauve)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 blue)
      (surface-condition p55 verysmooth)
      (available p56)
      (colour p56 black)
      (wood p56 oak)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 natural)
      (treatment p57 varnished)
      (available p58)
      (wood p58 walnut)
      (treatment p58 varnished)
      (available p59)
      (colour p59 black)
      (wood p59 beech)
      (available p60)
      (wood p60 mahogany)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 red)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 red)
      (wood p62 pine)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 black)
      (wood p63 mahogany)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 white)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 natural)
      (wood p65 teak)
      (available p66)
      (colour p66 blue)
      (treatment p66 glazed)
      (available p67)
      (colour p67 blue)
      (wood p67 walnut)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 mauve)
      (wood p68 walnut)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 blue)
      (treatment p69 varnished)
      (available p70)
      (wood p70 beech)
      (treatment p70 varnished)
      (available p71)
      (colour p71 white)
      (treatment p71 varnished)
      (available p72)
      (colour p72 mauve)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 black)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 white)
      (wood p74 walnut)
      (available p75)
      (colour p75 natural)
      (treatment p75 glazed)
      (available p76)
      (wood p76 beech)
      (treatment p76 glazed)
      (available p77)
      (colour p77 green)
      (wood p77 beech)
      (surface-condition p77 verysmooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 green)
      (wood p78 beech)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (wood p79 beech)
      (surface-condition p79 verysmooth)
      (available p80)
      (colour p80 black)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 blue)
      (wood p81 oak)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 blue)
      (treatment p82 glazed)
      (available p83)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 mauve)
      (wood p84 beech)
      (available p85)
      (colour p85 green)
      (wood p85 beech)
      (surface-condition p85 smooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 green)
      (treatment p86 glazed)
      (available p87)
      (colour p87 natural)
      (wood p87 mahogany)
      (available p88)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (wood p89 teak)
      (surface-condition p89 verysmooth)
      (available p90)
      (wood p90 beech)
      (treatment p90 varnished)
      (available p91)
      (wood p91 teak)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 black)
      (wood p92 oak)
      (available p93)
      (colour p93 white)
      (surface-condition p93 verysmooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 black)
      (treatment p94 glazed)
      (available p95)
      (surface-condition p95 verysmooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 green)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 black)
      (surface-condition p97 smooth)
      (available p98)
      (wood p98 cherry)
      (surface-condition p98 smooth)
      (available p99)
      (colour p99 green)
      (wood p99 mahogany)
      (available p100)
      (wood p100 walnut)
      (treatment p100 glazed)
      (available p101)
      (wood p101 cherry)
      (surface-condition p101 smooth)
      (available p102)
      (colour p102 black)
      (treatment p102 varnished)
      (available p103)
      (colour p103 red)
      (wood p103 cherry)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 red)
      (treatment p104 varnished)
      (available p105)
      (colour p105 blue)
      (wood p105 walnut)
      (available p106)
      (colour p106 blue)
      (wood p106 cherry)
      (available p107)
      (colour p107 black)
      (wood p107 cherry)
      (available p108)
      (colour p108 mauve)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 mauve)
      (treatment p109 glazed)
      (available p110)
      (wood p110 mahogany)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 mauve)
      (wood p111 pine)
      (available p112)
      (colour p112 black)
      (treatment p112 glazed)
      (available p113)
      (colour p113 white)
      (wood p113 walnut)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 black)
      (wood p114 oak)
      (surface-condition p114 verysmooth)
      (available p115)
      (wood p115 pine)
      (treatment p115 glazed)
      (available p116)
      (colour p116 white)
      (wood p116 mahogany)
      (available p117)
      (colour p117 blue)
      (treatment p117 glazed)
      (available p118)
      (surface-condition p118 smooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 red)
      (wood p119 oak)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 green)
      (surface-condition p120 smooth)
      (available p121)
      (colour p121 mauve)
      (wood p121 teak)
      (available p122)
      (colour p122 blue)
      (wood p122 cherry)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (colour p123 green)
      (wood p123 cherry)
      (treatment p123 glazed)
      (available p124)
      (colour p124 mauve)
      (surface-condition p124 smooth)
      (available p125)
      (surface-condition p125 smooth)
      (treatment p125 varnished)
      (available p126)
      (colour p126 blue)
      (treatment p126 glazed)
      (available p127)
      (colour p127 white)
      (treatment p127 varnished)
      (available p128)
      (wood p128 mahogany)
      (surface-condition p128 smooth)
      (available p129)
      (colour p129 blue)
      (wood p129 oak)
      (treatment p129 glazed)
      (available p130)
      (colour p130 red)
      (wood p130 teak)
      (surface-condition p130 verysmooth)
      (available p131)
      (colour p131 red)
      (wood p131 oak)
      (surface-condition p131 verysmooth)
      (available p132)
      (wood p132 cherry)
      (surface-condition p132 smooth)
      (available p133)
      (colour p133 black)
      (treatment p133 glazed)
      (available p134)
      (wood p134 beech)
      (surface-condition p134 verysmooth)
      (available p135)
      (colour p135 blue)
      (treatment p135 glazed)
      (available p136)
      (colour p136 green)
      (wood p136 teak)
      (surface-condition p136 smooth)
      (treatment p136 glazed)
      (available p137)
      (colour p137 green)
      (wood p137 oak)
      (surface-condition p137 verysmooth)
      (available p138)
      (surface-condition p138 smooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 white)
      (treatment p139 varnished)
      (available p140)
      (colour p140 mauve)
      (treatment p140 glazed)
      (available p141)
      (colour p141 blue)
      (wood p141 cherry)
      (treatment p141 glazed)
      (available p142)
      (colour p142 mauve)
      (wood p142 walnut)
      (surface-condition p142 smooth)
      (treatment p142 glazed)
      (available p143)
      (wood p143 mahogany)
      (surface-condition p143 verysmooth)
      (available p144)
      (colour p144 natural)
      (wood p144 teak)
      (treatment p144 glazed)
      (available p145)
      (wood p145 oak)
      (treatment p145 glazed)
      (available p146)
      (colour p146 mauve)
      (treatment p146 varnished)
      (available p147)
      (wood p147 beech)
      (surface-condition p147 smooth)
      (available p148)
      (colour p148 green)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
    )
  )
  
)
