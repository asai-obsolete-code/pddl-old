; woodworking task with 140 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 650695

(define (problem wood-prob-sat-151)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white red green black mauve blue - acolour
    pine beech cherry mahogany teak walnut oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 - aboardsize
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 green)
    (wood p7 oak)
    (surface-condition p7 verysmooth)
    (treatment p7 varnished)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 red)
    (wood p9 pine)
    (surface-condition p9 smooth)
    (treatment p9 varnished)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (available p22)
    (colour p22 natural)
    (wood p22 beech)
    (surface-condition p22 rough)
    (treatment p22 varnished)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 black)
    (wood p27 oak)
    (surface-condition p27 smooth)
    (treatment p27 glazed)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 mauve)
    (wood p28 oak)
    (surface-condition p28 smooth)
    (treatment p28 glazed)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 natural)
    (wood p36 beech)
    (surface-condition p36 smooth)
    (treatment p36 glazed)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 pine)
    (surface-condition p37 verysmooth)
    (treatment p37 colourfragments)
    (goalsize p37 medium)
    
    
    
    
    (available p38)
    (colour p38 red)
    (wood p38 teak)
    (surface-condition p38 verysmooth)
    (treatment p38 colourfragments)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 red)
    (wood p43 teak)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 mauve)
    (wood p51 cherry)
    (surface-condition p51 smooth)
    (treatment p51 varnished)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (available p56)
    (colour p56 green)
    (wood p56 oak)
    (surface-condition p56 verysmooth)
    (treatment p56 glazed)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 blue)
    (wood p57 beech)
    (surface-condition p57 rough)
    (treatment p57 glazed)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 red)
    (wood p58 mahogany)
    (surface-condition p58 verysmooth)
    (treatment p58 colourfragments)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (available p60)
    (colour p60 natural)
    (wood p60 oak)
    (surface-condition p60 smooth)
    (treatment p60 glazed)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (available p68)
    (colour p68 blue)
    (wood p68 cherry)
    (surface-condition p68 smooth)
    (treatment p68 colourfragments)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (available p72)
    (colour p72 natural)
    (wood p72 walnut)
    (surface-condition p72 smooth)
    (treatment p72 varnished)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (available p78)
    (colour p78 red)
    (wood p78 oak)
    (surface-condition p78 smooth)
    (treatment p78 varnished)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (available p90)
    (colour p90 natural)
    (wood p90 cherry)
    (surface-condition p90 smooth)
    (treatment p90 glazed)
    (goalsize p90 medium)
    
    
    
    
    (available p91)
    (colour p91 black)
    (wood p91 beech)
    (surface-condition p91 verysmooth)
    (treatment p91 colourfragments)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (available p102)
    (colour p102 mauve)
    (wood p102 walnut)
    (surface-condition p102 smooth)
    (treatment p102 colourfragments)
    (goalsize p102 small)
    
    
    
    
    (available p103)
    (colour p103 white)
    (wood p103 teak)
    (surface-condition p103 rough)
    (treatment p103 varnished)
    (goalsize p103 small)
    
    
    
    
    (available p104)
    (colour p104 white)
    (wood p104 walnut)
    (surface-condition p104 rough)
    (treatment p104 colourfragments)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 white)
    (wood p111 teak)
    (surface-condition p111 rough)
    (treatment p111 glazed)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (available p122)
    (colour p122 black)
    (wood p122 cherry)
    (surface-condition p122 rough)
    (treatment p122 glazed)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (available p134)
    (colour p134 red)
    (wood p134 oak)
    (surface-condition p134 smooth)
    (treatment p134 varnished)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s11)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s3)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 mahogany)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s6)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 oak)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s9)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s5)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s11)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s5)
    (wood b21 pine)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 walnut)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s10)
    (wood b25 walnut)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s10)
    (wood b26 walnut)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 walnut)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s1)
    (wood b28 walnut)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s11)
    (wood b29 teak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 teak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s6)
    (wood b31 teak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s11)
    (wood b32 teak)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s8)
    (wood b33 teak)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s6)
    (wood b34 beech)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 beech)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 beech)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s10)
    (wood b37 beech)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 beech)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 beech)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 beech)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 beech)
    (surface-condition b41 rough)
    (available b41)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 oak)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 white)
      (wood p1 teak)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 natural)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 blue)
      (treatment p3 varnished)
      (available p4)
      (colour p4 blue)
      (wood p4 teak)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 blue)
      (wood p5 walnut)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 red)
      (wood p6 beech)
      (treatment p6 glazed)
      (available p7)
      (colour p7 black)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 blue)
      (treatment p8 varnished)
      (available p9)
      (colour p9 blue)
      (wood p9 pine)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 natural)
      (wood p10 oak)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 green)
      (wood p11 pine)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 mauve)
      (wood p12 walnut)
      (treatment p12 glazed)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 mauve)
      (treatment p14 glazed)
      (available p15)
      (colour p15 white)
      (wood p15 beech)
      (treatment p15 glazed)
      (available p16)
      (wood p16 oak)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 teak)
      (surface-condition p17 smooth)
      (available p18)
      (wood p18 mahogany)
      (treatment p18 varnished)
      (available p19)
      (wood p19 cherry)
      (treatment p19 varnished)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 blue)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 white)
      (wood p23 mahogany)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 mauve)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (treatment p26 varnished)
      (available p27)
      (wood p27 oak)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 green)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 mauve)
      (wood p29 cherry)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 white)
      (surface-condition p31 smooth)
      (available p32)
      (wood p32 teak)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 natural)
      (wood p33 mahogany)
      (available p34)
      (colour p34 red)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 green)
      (wood p35 oak)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 black)
      (wood p37 pine)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (wood p39 beech)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 green)
      (wood p40 pine)
      (available p41)
      (colour p41 blue)
      (wood p41 beech)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 red)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (wood p43 teak)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (treatment p44 varnished)
      (available p45)
      (colour p45 mauve)
      (wood p45 cherry)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 red)
      (surface-condition p46 verysmooth)
      (available p47)
      (wood p47 beech)
      (treatment p47 varnished)
      (available p48)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 black)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 blue)
      (treatment p50 varnished)
      (available p51)
      (colour p51 natural)
      (wood p51 cherry)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 mauve)
      (wood p52 beech)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 white)
      (wood p53 mahogany)
      (available p54)
      (colour p54 black)
      (wood p54 walnut)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (wood p55 mahogany)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (wood p56 oak)
      (treatment p56 varnished)
      (available p57)
      (colour p57 mauve)
      (treatment p57 varnished)
      (available p58)
      (colour p58 white)
      (treatment p58 varnished)
      (available p59)
      (colour p59 mauve)
      (treatment p59 varnished)
      (available p60)
      (colour p60 blue)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (surface-condition p61 smooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 mauve)
      (wood p62 mahogany)
      (available p63)
      (wood p63 pine)
      (treatment p63 varnished)
      (available p64)
      (wood p64 walnut)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 red)
      (wood p66 oak)
      (treatment p66 glazed)
      (available p67)
      (colour p67 green)
      (wood p67 walnut)
      (surface-condition p67 smooth)
      (available p68)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 blue)
      (wood p69 oak)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 white)
      (surface-condition p70 verysmooth)
      (available p71)
      (wood p71 beech)
      (treatment p71 varnished)
      (available p72)
      (colour p72 red)
      (wood p72 walnut)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 white)
      (wood p73 walnut)
      (available p74)
      (colour p74 blue)
      (wood p74 beech)
      (surface-condition p74 smooth)
      (available p75)
      (wood p75 mahogany)
      (treatment p75 varnished)
      (available p76)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 mauve)
      (wood p77 walnut)
      (treatment p77 glazed)
      (available p78)
      (colour p78 natural)
      (treatment p78 glazed)
      (available p79)
      (colour p79 blue)
      (wood p79 beech)
      (treatment p79 glazed)
      (available p80)
      (colour p80 green)
      (treatment p80 varnished)
      (available p81)
      (colour p81 natural)
      (wood p81 pine)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 red)
      (wood p82 cherry)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 natural)
      (wood p83 teak)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (wood p84 mahogany)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 mauve)
      (wood p85 cherry)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 green)
      (wood p86 walnut)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (wood p87 cherry)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 black)
      (wood p88 teak)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 white)
      (wood p89 cherry)
      (treatment p89 glazed)
      (available p90)
      (colour p90 red)
      (surface-condition p90 verysmooth)
      (available p91)
      (wood p91 beech)
      (treatment p91 varnished)
      (available p92)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 red)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 mauve)
      (wood p94 teak)
      (surface-condition p94 verysmooth)
      (treatment p94 varnished)
      (available p95)
      (wood p95 walnut)
      (treatment p95 varnished)
      (available p96)
      (wood p96 beech)
      (treatment p96 glazed)
      (available p97)
      (colour p97 white)
      (treatment p97 varnished)
      (available p98)
      (colour p98 red)
      (wood p98 walnut)
      (available p99)
      (wood p99 teak)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (wood p100 walnut)
      (treatment p100 glazed)
      (available p101)
      (colour p101 red)
      (wood p101 cherry)
      (surface-condition p101 smooth)
      (available p102)
      (colour p102 blue)
      (wood p102 walnut)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (wood p103 teak)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 red)
      (wood p104 walnut)
      (available p105)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 red)
      (wood p106 oak)
      (treatment p106 glazed)
      (available p107)
      (colour p107 mauve)
      (wood p107 teak)
      (available p108)
      (wood p108 beech)
      (treatment p108 glazed)
      (available p109)
      (colour p109 green)
      (wood p109 beech)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 white)
      (surface-condition p110 verysmooth)
      (treatment p110 glazed)
      (available p111)
      (surface-condition p111 smooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 natural)
      (wood p112 mahogany)
      (available p113)
      (colour p113 natural)
      (wood p113 pine)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 white)
      (wood p114 cherry)
      (available p115)
      (colour p115 red)
      (surface-condition p115 verysmooth)
      (available p116)
      (wood p116 beech)
      (surface-condition p116 verysmooth)
      (available p117)
      (colour p117 green)
      (wood p117 pine)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (surface-condition p118 smooth)
      (treatment p118 varnished)
      (available p119)
      (wood p119 teak)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 green)
      (surface-condition p120 verysmooth)
      (available p121)
      (colour p121 natural)
      (surface-condition p121 smooth)
      (treatment p121 varnished)
      (available p122)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (wood p123 pine)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (surface-condition p124 verysmooth)
      (treatment p124 varnished)
      (available p125)
      (wood p125 mahogany)
      (treatment p125 glazed)
      (available p126)
      (colour p126 blue)
      (treatment p126 varnished)
      (available p127)
      (surface-condition p127 verysmooth)
      (treatment p127 varnished)
      (available p128)
      (colour p128 blue)
      (wood p128 cherry)
      (available p129)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (wood p130 pine)
      (surface-condition p130 verysmooth)
      (available p131)
      (wood p131 walnut)
      (treatment p131 glazed)
      (available p132)
      (colour p132 natural)
      (wood p132 walnut)
      (surface-condition p132 verysmooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 natural)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 black)
      (wood p134 oak)
      (available p135)
      (wood p135 beech)
      (treatment p135 glazed)
      (available p136)
      (colour p136 blue)
      (wood p136 beech)
      (surface-condition p136 smooth)
      (available p137)
      (colour p137 green)
      (wood p137 teak)
      (surface-condition p137 verysmooth)
      (available p138)
      (colour p138 green)
      (surface-condition p138 smooth)
      (available p139)
      (colour p139 natural)
      (treatment p139 glazed)
    )
  )
  
)
