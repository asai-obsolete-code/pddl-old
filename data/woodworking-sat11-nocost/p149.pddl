; woodworking task with 134 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 276221

(define (problem wood-prob-sat-149)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve white blue black green red - acolour
    walnut mahogany pine teak cherry oak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 red)
    (wood p1 mahogany)
    (surface-condition p1 verysmooth)
    (treatment p1 glazed)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 red)
    (wood p6 oak)
    (surface-condition p6 verysmooth)
    (treatment p6 glazed)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 blue)
    (wood p7 teak)
    (surface-condition p7 verysmooth)
    (treatment p7 colourfragments)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 green)
    (wood p37 pine)
    (surface-condition p37 verysmooth)
    (treatment p37 colourfragments)
    (goalsize p37 large)
    
    
    
    
    (available p38)
    (colour p38 black)
    (wood p38 pine)
    (surface-condition p38 smooth)
    (treatment p38 varnished)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 black)
    (wood p40 mahogany)
    (surface-condition p40 rough)
    (treatment p40 glazed)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 red)
    (wood p41 beech)
    (surface-condition p41 smooth)
    (treatment p41 colourfragments)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 blue)
    (wood p46 teak)
    (surface-condition p46 rough)
    (treatment p46 varnished)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 white)
    (wood p47 oak)
    (surface-condition p47 rough)
    (treatment p47 colourfragments)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 green)
    (wood p58 teak)
    (surface-condition p58 verysmooth)
    (treatment p58 colourfragments)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 mauve)
    (wood p70 walnut)
    (surface-condition p70 rough)
    (treatment p70 colourfragments)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (available p79)
    (colour p79 black)
    (wood p79 mahogany)
    (surface-condition p79 smooth)
    (treatment p79 varnished)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (available p86)
    (colour p86 blue)
    (wood p86 pine)
    (surface-condition p86 rough)
    (treatment p86 colourfragments)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (available p88)
    (colour p88 red)
    (wood p88 beech)
    (surface-condition p88 verysmooth)
    (treatment p88 glazed)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (available p93)
    (colour p93 white)
    (wood p93 walnut)
    (surface-condition p93 smooth)
    (treatment p93 glazed)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (available p105)
    (colour p105 blue)
    (wood p105 beech)
    (surface-condition p105 smooth)
    (treatment p105 glazed)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (available p110)
    (colour p110 black)
    (wood p110 walnut)
    (surface-condition p110 verysmooth)
    (treatment p110 colourfragments)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 blue)
    (wood p111 walnut)
    (surface-condition p111 rough)
    (treatment p111 varnished)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (available p119)
    (colour p119 green)
    (wood p119 oak)
    (surface-condition p119 smooth)
    (treatment p119 colourfragments)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (available p123)
    (colour p123 blue)
    (wood p123 teak)
    (surface-condition p123 rough)
    (treatment p123 varnished)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (available p131)
    (colour p131 blue)
    (wood p131 cherry)
    (surface-condition p131 verysmooth)
    (treatment p131 varnished)
    (goalsize p131 small)
    
    
    
    
    (available p132)
    (colour p132 natural)
    (wood p132 cherry)
    (surface-condition p132 verysmooth)
    (treatment p132 glazed)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s10)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s12)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s4)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s3)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s5)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 oak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s7)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 pine)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 pine)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s10)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s5)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s6)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s1)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 walnut)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 walnut)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s9)
    (wood b29 walnut)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s6)
    (wood b30 walnut)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s12)
    (wood b31 teak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s6)
    (wood b32 teak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s4)
    (wood b33 teak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 teak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 teak)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s2)
    (wood b36 teak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s11)
    (wood b37 beech)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s9)
    (wood b38 beech)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s6)
    (wood b39 beech)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 beech)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 beech)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s3)
    (wood b42 beech)
    (surface-condition b42 rough)
    (available b42)
  )
  (:goal
    (and
      (available p0)
      (wood p0 pine)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 red)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 mauve)
      (treatment p3 glazed)
      (available p4)
      (colour p4 mauve)
      (treatment p4 varnished)
      (available p5)
      (colour p5 black)
      (wood p5 mahogany)
      (available p6)
      (colour p6 white)
      (wood p6 oak)
      (treatment p6 varnished)
      (available p7)
      (colour p7 red)
      (wood p7 teak)
      (treatment p7 varnished)
      (available p8)
      (colour p8 white)
      (surface-condition p8 smooth)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 walnut)
      (treatment p10 varnished)
      (available p11)
      (colour p11 red)
      (treatment p11 varnished)
      (available p12)
      (colour p12 mauve)
      (wood p12 oak)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 blue)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (wood p15 cherry)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 natural)
      (treatment p16 glazed)
      (available p17)
      (colour p17 white)
      (wood p17 oak)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 mauve)
      (wood p19 mahogany)
      (available p20)
      (colour p20 mauve)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 mauve)
      (wood p22 cherry)
      (available p23)
      (colour p23 white)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 blue)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 white)
      (wood p25 cherry)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (wood p26 teak)
      (treatment p26 varnished)
      (available p27)
      (colour p27 red)
      (wood p27 mahogany)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 green)
      (wood p28 oak)
      (treatment p28 varnished)
      (available p29)
      (colour p29 natural)
      (wood p29 oak)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (wood p31 teak)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 blue)
      (wood p32 cherry)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 green)
      (wood p33 oak)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 red)
      (surface-condition p34 verysmooth)
      (available p35)
      (wood p35 pine)
      (surface-condition p35 verysmooth)
      (available p36)
      (wood p36 pine)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 blue)
      (wood p37 pine)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 red)
      (treatment p38 varnished)
      (available p39)
      (colour p39 mauve)
      (surface-condition p39 verysmooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 green)
      (surface-condition p40 verysmooth)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 natural)
      (wood p43 beech)
      (available p44)
      (wood p44 pine)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 natural)
      (wood p45 pine)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 natural)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 red)
      (wood p47 oak)
      (treatment p47 glazed)
      (available p48)
      (colour p48 white)
      (wood p48 cherry)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 black)
      (wood p49 walnut)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 natural)
      (treatment p50 varnished)
      (available p51)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 black)
      (wood p53 beech)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 mauve)
      (wood p54 mahogany)
      (treatment p54 varnished)
      (available p55)
      (wood p55 cherry)
      (surface-condition p55 verysmooth)
      (available p56)
      (colour p56 black)
      (wood p56 pine)
      (treatment p56 glazed)
      (available p57)
      (wood p57 pine)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 mauve)
      (treatment p58 glazed)
      (available p59)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 red)
      (wood p60 cherry)
      (available p61)
      (colour p61 natural)
      (wood p61 mahogany)
      (surface-condition p61 smooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 red)
      (wood p62 pine)
      (available p63)
      (colour p63 red)
      (wood p63 pine)
      (treatment p63 glazed)
      (available p64)
      (wood p64 cherry)
      (treatment p64 glazed)
      (available p65)
      (colour p65 mauve)
      (surface-condition p65 verysmooth)
      (available p66)
      (wood p66 mahogany)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 red)
      (wood p67 beech)
      (available p68)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 blue)
      (wood p70 walnut)
      (treatment p70 glazed)
      (available p71)
      (colour p71 white)
      (wood p71 beech)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (wood p72 mahogany)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 white)
      (wood p73 teak)
      (available p74)
      (colour p74 natural)
      (wood p74 cherry)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 green)
      (surface-condition p75 verysmooth)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 glazed)
      (available p77)
      (wood p77 pine)
      (surface-condition p77 verysmooth)
      (available p78)
      (colour p78 mauve)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 mauve)
      (treatment p79 varnished)
      (available p80)
      (wood p80 beech)
      (surface-condition p80 smooth)
      (available p81)
      (surface-condition p81 smooth)
      (treatment p81 varnished)
      (available p82)
      (wood p82 oak)
      (treatment p82 varnished)
      (available p83)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (wood p84 oak)
      (treatment p84 varnished)
      (available p85)
      (colour p85 red)
      (wood p85 mahogany)
      (surface-condition p85 smooth)
      (available p86)
      (colour p86 white)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 blue)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 black)
      (surface-condition p88 smooth)
      (available p89)
      (colour p89 mauve)
      (wood p89 pine)
      (treatment p89 glazed)
      (available p90)
      (colour p90 blue)
      (wood p90 pine)
      (available p91)
      (wood p91 walnut)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 red)
      (surface-condition p92 verysmooth)
      (available p93)
      (colour p93 mauve)
      (surface-condition p93 verysmooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 natural)
      (wood p94 pine)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 red)
      (wood p95 pine)
      (available p96)
      (colour p96 mauve)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 blue)
      (surface-condition p97 smooth)
      (available p98)
      (colour p98 natural)
      (wood p98 teak)
      (surface-condition p98 smooth)
      (available p99)
      (colour p99 mauve)
      (wood p99 cherry)
      (available p100)
      (colour p100 red)
      (wood p100 oak)
      (surface-condition p100 verysmooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 blue)
      (surface-condition p101 verysmooth)
      (available p102)
      (wood p102 oak)
      (surface-condition p102 verysmooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 red)
      (surface-condition p103 verysmooth)
      (available p104)
      (surface-condition p104 smooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 red)
      (wood p105 beech)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 red)
      (wood p106 pine)
      (surface-condition p106 smooth)
      (available p107)
      (surface-condition p107 smooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 red)
      (wood p108 teak)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (surface-condition p109 smooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 green)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 red)
      (wood p111 walnut)
      (surface-condition p111 verysmooth)
      (treatment p111 glazed)
      (available p112)
      (wood p112 walnut)
      (surface-condition p112 smooth)
      (available p113)
      (colour p113 black)
      (surface-condition p113 verysmooth)
      (available p114)
      (wood p114 teak)
      (surface-condition p114 verysmooth)
      (available p115)
      (wood p115 teak)
      (treatment p115 varnished)
      (available p116)
      (colour p116 natural)
      (wood p116 walnut)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 red)
      (wood p117 pine)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (colour p118 white)
      (surface-condition p118 verysmooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 natural)
      (wood p119 oak)
      (surface-condition p119 verysmooth)
      (available p120)
      (colour p120 black)
      (wood p120 cherry)
      (surface-condition p120 smooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 natural)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (wood p122 oak)
      (surface-condition p122 verysmooth)
      (treatment p122 glazed)
      (available p123)
      (surface-condition p123 verysmooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 white)
      (wood p124 oak)
      (surface-condition p124 verysmooth)
      (available p125)
      (colour p125 blue)
      (wood p125 teak)
      (surface-condition p125 verysmooth)
      (treatment p125 varnished)
      (available p126)
      (colour p126 green)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 mauve)
      (wood p127 beech)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (wood p128 cherry)
      (surface-condition p128 smooth)
      (available p129)
      (wood p129 beech)
      (surface-condition p129 verysmooth)
      (available p130)
      (colour p130 white)
      (surface-condition p130 smooth)
      (available p131)
      (colour p131 natural)
      (wood p131 cherry)
      (surface-condition p131 smooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 white)
      (treatment p132 varnished)
      (available p133)
      (colour p133 natural)
      (wood p133 mahogany)
      (surface-condition p133 smooth)
    )
  )
  
)
