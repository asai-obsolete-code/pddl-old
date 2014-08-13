; woodworking task with 86 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 857934

(define (problem wood-prob-sat-133)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red blue green white mauve black - acolour
    walnut teak oak mahogany pine cherry beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
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
    
    
    
    
    (available p10)
    (colour p10 blue)
    (wood p10 oak)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 black)
    (wood p16 oak)
    (surface-condition p16 verysmooth)
    (treatment p16 colourfragments)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 mauve)
    (wood p18 teak)
    (surface-condition p18 rough)
    (treatment p18 varnished)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 green)
    (wood p21 walnut)
    (surface-condition p21 smooth)
    (treatment p21 glazed)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (available p25)
    (colour p25 green)
    (wood p25 teak)
    (surface-condition p25 verysmooth)
    (treatment p25 varnished)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 white)
    (wood p26 teak)
    (surface-condition p26 smooth)
    (treatment p26 colourfragments)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 white)
    (wood p29 cherry)
    (surface-condition p29 smooth)
    (treatment p29 colourfragments)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 green)
    (wood p30 oak)
    (surface-condition p30 rough)
    (treatment p30 colourfragments)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 blue)
    (wood p35 cherry)
    (surface-condition p35 smooth)
    (treatment p35 glazed)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 blue)
    (wood p36 teak)
    (surface-condition p36 verysmooth)
    (treatment p36 glazed)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 mauve)
    (wood p46 oak)
    (surface-condition p46 verysmooth)
    (treatment p46 glazed)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (available p59)
    (colour p59 white)
    (wood p59 walnut)
    (surface-condition p59 rough)
    (treatment p59 varnished)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (available p63)
    (colour p63 black)
    (wood p63 pine)
    (surface-condition p63 verysmooth)
    (treatment p63 varnished)
    (goalsize p63 medium)
    
    
    
    
    (available p64)
    (colour p64 white)
    (wood p64 teak)
    (surface-condition p64 verysmooth)
    (treatment p64 glazed)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 green)
    (wood p67 mahogany)
    (surface-condition p67 verysmooth)
    (treatment p67 varnished)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (available p83)
    (colour p83 black)
    (wood p83 cherry)
    (surface-condition p83 smooth)
    (treatment p83 glazed)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 black)
    (wood p84 pine)
    (surface-condition p84 smooth)
    (treatment p84 varnished)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 white)
    (wood p85 cherry)
    (surface-condition p85 rough)
    (treatment p85 varnished)
    (goalsize p85 large)
    
    
    
    
    (boardsize b0 s11)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s3)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s11)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s3)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 pine)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s8)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 walnut)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s10)
    (wood b16 walnut)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s3)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 teak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s10)
    (wood b19 teak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s8)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s6)
    (wood b22 beech)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s10)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s5)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (treatment p0 glazed)
      (available p1)
      (colour p1 blue)
      (wood p1 teak)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 white)
      (wood p2 walnut)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 mahogany)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 teak)
      (treatment p4 varnished)
      (available p5)
      (colour p5 green)
      (surface-condition p5 verysmooth)
      (available p6)
      (wood p6 mahogany)
      (treatment p6 varnished)
      (available p7)
      (colour p7 mauve)
      (wood p7 beech)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 black)
      (wood p8 cherry)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 blue)
      (wood p12 pine)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 blue)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (wood p14 oak)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 natural)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 mauve)
      (treatment p16 varnished)
      (available p17)
      (colour p17 natural)
      (wood p17 oak)
      (treatment p17 glazed)
      (available p18)
      (colour p18 blue)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 blue)
      (wood p19 walnut)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 natural)
      (treatment p20 glazed)
      (available p21)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 black)
      (treatment p22 varnished)
      (available p23)
      (colour p23 blue)
      (wood p23 pine)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 mahogany)
      (treatment p24 varnished)
      (available p25)
      (colour p25 red)
      (wood p25 teak)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 natural)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 red)
      (treatment p27 varnished)
      (available p28)
      (colour p28 white)
      (wood p28 teak)
      (treatment p28 varnished)
      (available p29)
      (wood p29 cherry)
      (treatment p29 varnished)
      (available p30)
      (colour p30 natural)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 black)
      (surface-condition p31 verysmooth)
      (available p32)
      (wood p32 cherry)
      (treatment p32 varnished)
      (available p33)
      (wood p33 teak)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 green)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 red)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 green)
      (wood p37 teak)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 mauve)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 red)
      (treatment p39 glazed)
      (available p40)
      (colour p40 blue)
      (wood p40 beech)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 blue)
      (wood p41 walnut)
      (available p42)
      (colour p42 natural)
      (wood p42 oak)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (wood p43 beech)
      (treatment p43 glazed)
      (available p44)
      (colour p44 red)
      (surface-condition p44 smooth)
      (available p45)
      (wood p45 mahogany)
      (treatment p45 varnished)
      (available p46)
      (colour p46 red)
      (wood p46 oak)
      (available p47)
      (colour p47 blue)
      (wood p47 mahogany)
      (available p48)
      (colour p48 blue)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 white)
      (wood p49 beech)
      (available p50)
      (wood p50 walnut)
      (surface-condition p50 verysmooth)
      (available p51)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (wood p52 beech)
      (treatment p52 varnished)
      (available p53)
      (wood p53 beech)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 black)
      (wood p54 pine)
      (surface-condition p54 smooth)
      (available p55)
      (wood p55 oak)
      (surface-condition p55 verysmooth)
      (available p56)
      (wood p56 pine)
      (treatment p56 glazed)
      (available p57)
      (colour p57 white)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 black)
      (wood p58 cherry)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 red)
      (wood p59 walnut)
      (surface-condition p59 verysmooth)
      (available p60)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (wood p61 mahogany)
      (treatment p61 glazed)
      (available p62)
      (colour p62 blue)
      (wood p62 beech)
      (available p63)
      (wood p63 pine)
      (surface-condition p63 smooth)
      (available p64)
      (wood p64 teak)
      (treatment p64 varnished)
      (available p65)
      (wood p65 beech)
      (surface-condition p65 verysmooth)
      (available p66)
      (colour p66 mauve)
      (wood p66 walnut)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 white)
      (wood p67 mahogany)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (wood p68 mahogany)
      (treatment p68 varnished)
      (available p69)
      (colour p69 red)
      (wood p69 cherry)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (wood p70 oak)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 black)
      (wood p71 oak)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 green)
      (wood p72 walnut)
      (treatment p72 glazed)
      (available p73)
      (colour p73 red)
      (wood p73 teak)
      (treatment p73 varnished)
      (available p74)
      (wood p74 beech)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 black)
      (wood p75 mahogany)
      (surface-condition p75 smooth)
      (treatment p75 glazed)
      (available p76)
      (wood p76 beech)
      (surface-condition p76 smooth)
      (available p77)
      (colour p77 natural)
      (wood p77 mahogany)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 black)
      (wood p78 teak)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (wood p79 walnut)
      (treatment p79 glazed)
      (available p80)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 mauve)
      (wood p82 cherry)
      (available p83)
      (colour p83 red)
      (treatment p83 varnished)
      (available p84)
      (colour p84 white)
      (wood p84 pine)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (wood p85 cherry)
      (treatment p85 glazed)
    )
  )
  
)
