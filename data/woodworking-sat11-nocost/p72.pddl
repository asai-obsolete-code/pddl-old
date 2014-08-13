; woodworking task with 83 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 499536

(define (problem wood-prob-sat-72)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black red white green blue mauve - acolour
    beech mahogany cherry walnut pine teak oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 - board
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
    (has-colour glazer0 blue)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
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
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 white)
    (wood p1 cherry)
    (surface-condition p1 verysmooth)
    (treatment p1 colourfragments)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 oak)
    (surface-condition p7 rough)
    (treatment p7 glazed)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 black)
    (wood p9 teak)
    (surface-condition p9 verysmooth)
    (treatment p9 varnished)
    (goalsize p9 large)
    
    
    
    
    (available p10)
    (colour p10 red)
    (wood p10 walnut)
    (surface-condition p10 smooth)
    (treatment p10 varnished)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 red)
    (wood p12 pine)
    (surface-condition p12 rough)
    (treatment p12 colourfragments)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 natural)
    (wood p20 oak)
    (surface-condition p20 verysmooth)
    (treatment p20 glazed)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (available p34)
    (colour p34 green)
    (wood p34 pine)
    (surface-condition p34 verysmooth)
    (treatment p34 glazed)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 white)
    (wood p35 teak)
    (surface-condition p35 verysmooth)
    (treatment p35 colourfragments)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 red)
    (wood p41 pine)
    (surface-condition p41 verysmooth)
    (treatment p41 glazed)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (available p54)
    (colour p54 black)
    (wood p54 cherry)
    (surface-condition p54 smooth)
    (treatment p54 glazed)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 natural)
    (wood p69 mahogany)
    (surface-condition p69 rough)
    (treatment p69 glazed)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 black)
    (wood p71 teak)
    (surface-condition p71 verysmooth)
    (treatment p71 glazed)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (available p77)
    (colour p77 blue)
    (wood p77 teak)
    (surface-condition p77 smooth)
    (treatment p77 varnished)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (available p79)
    (colour p79 natural)
    (wood p79 walnut)
    (surface-condition p79 verysmooth)
    (treatment p79 varnished)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (boardsize b0 s11)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s1)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s8)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s3)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 walnut)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s7)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 teak)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s8)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s2)
    (wood b21 teak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s8)
    (wood b22 beech)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 beech)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s8)
    (wood b24 beech)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s9)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s6)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (wood p1 cherry)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (wood p2 beech)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 walnut)
      (available p4)
      (colour p4 white)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 natural)
      (wood p5 beech)
      (available p6)
      (wood p6 teak)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (wood p7 oak)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 mauve)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 red)
      (wood p9 teak)
      (surface-condition p9 smooth)
      (available p10)
      (wood p10 walnut)
      (treatment p10 glazed)
      (available p11)
      (colour p11 mauve)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (wood p12 pine)
      (treatment p12 varnished)
      (available p13)
      (colour p13 black)
      (wood p13 pine)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 white)
      (wood p14 walnut)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 red)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 mauve)
      (treatment p16 glazed)
      (available p17)
      (wood p17 mahogany)
      (treatment p17 varnished)
      (available p18)
      (wood p18 walnut)
      (treatment p18 varnished)
      (available p19)
      (wood p19 cherry)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 green)
      (wood p20 oak)
      (available p21)
      (colour p21 white)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 blue)
      (treatment p22 varnished)
      (available p23)
      (colour p23 blue)
      (wood p23 teak)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 green)
      (wood p24 cherry)
      (available p25)
      (colour p25 red)
      (surface-condition p25 verysmooth)
      (available p26)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 blue)
      (wood p27 beech)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (wood p29 cherry)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 white)
      (treatment p30 glazed)
      (available p31)
      (colour p31 black)
      (wood p31 walnut)
      (available p32)
      (colour p32 black)
      (wood p32 beech)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 mahogany)
      (treatment p33 glazed)
      (available p34)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 blue)
      (wood p35 teak)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 green)
      (treatment p36 glazed)
      (available p37)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 blue)
      (wood p38 mahogany)
      (treatment p38 glazed)
      (available p39)
      (colour p39 white)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 red)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 pine)
      (treatment p41 varnished)
      (available p42)
      (wood p42 cherry)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 mauve)
      (wood p43 oak)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 black)
      (wood p44 cherry)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 red)
      (treatment p45 varnished)
      (available p46)
      (wood p46 walnut)
      (treatment p46 glazed)
      (available p47)
      (colour p47 red)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 black)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 green)
      (wood p49 beech)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 green)
      (wood p50 teak)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (wood p51 teak)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 natural)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 pine)
      (treatment p53 varnished)
      (available p54)
      (wood p54 cherry)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 green)
      (treatment p56 varnished)
      (available p57)
      (colour p57 white)
      (wood p57 teak)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 mauve)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 mauve)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 black)
      (wood p60 oak)
      (surface-condition p60 verysmooth)
      (available p61)
      (wood p61 walnut)
      (treatment p61 glazed)
      (available p62)
      (colour p62 white)
      (wood p62 mahogany)
      (available p63)
      (colour p63 white)
      (wood p63 beech)
      (available p64)
      (colour p64 white)
      (wood p64 cherry)
      (available p65)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 natural)
      (wood p66 beech)
      (available p67)
      (colour p67 mauve)
      (wood p67 mahogany)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 green)
      (wood p68 cherry)
      (treatment p68 varnished)
      (available p69)
      (colour p69 black)
      (wood p69 mahogany)
      (surface-condition p69 smooth)
      (available p70)
      (wood p70 beech)
      (treatment p70 varnished)
      (available p71)
      (colour p71 red)
      (wood p71 teak)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 green)
      (wood p72 pine)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 natural)
      (wood p73 pine)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 green)
      (wood p74 cherry)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 blue)
      (wood p75 pine)
      (surface-condition p75 smooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 white)
      (wood p76 teak)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 green)
      (treatment p77 varnished)
      (available p78)
      (colour p78 natural)
      (surface-condition p78 smooth)
      (available p79)
      (colour p79 white)
      (wood p79 walnut)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 mauve)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (wood p81 walnut)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 red)
      (wood p82 mahogany)
      (surface-condition p82 smooth)
    )
  )
  
)
