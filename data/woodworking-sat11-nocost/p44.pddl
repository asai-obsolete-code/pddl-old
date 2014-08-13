; woodworking task with 101 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 657258

(define (problem wood-prob-sat-44)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue mauve green black red white - acolour
    cherry mahogany oak teak walnut pine beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 - part
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 blue)
    (wood p1 walnut)
    (surface-condition p1 smooth)
    (treatment p1 colourfragments)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 black)
    (wood p2 walnut)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 black)
    (wood p4 pine)
    (surface-condition p4 verysmooth)
    (treatment p4 varnished)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 black)
    (wood p7 pine)
    (surface-condition p7 rough)
    (treatment p7 colourfragments)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 white)
    (wood p10 walnut)
    (surface-condition p10 rough)
    (treatment p10 colourfragments)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 white)
    (wood p13 walnut)
    (surface-condition p13 smooth)
    (treatment p13 colourfragments)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 black)
    (wood p16 beech)
    (surface-condition p16 verysmooth)
    (treatment p16 glazed)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 blue)
    (wood p22 oak)
    (surface-condition p22 verysmooth)
    (treatment p22 varnished)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (available p34)
    (colour p34 black)
    (wood p34 beech)
    (surface-condition p34 smooth)
    (treatment p34 colourfragments)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (available p44)
    (colour p44 red)
    (wood p44 teak)
    (surface-condition p44 verysmooth)
    (treatment p44 varnished)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 natural)
    (wood p52 walnut)
    (surface-condition p52 rough)
    (treatment p52 varnished)
    (goalsize p52 large)
    
    
    
    
    (available p53)
    (colour p53 mauve)
    (wood p53 teak)
    (surface-condition p53 verysmooth)
    (treatment p53 glazed)
    (goalsize p53 small)
    
    
    
    
    (available p54)
    (colour p54 blue)
    (wood p54 oak)
    (surface-condition p54 rough)
    (treatment p54 varnished)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 red)
    (wood p58 walnut)
    (surface-condition p58 smooth)
    (treatment p58 glazed)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 white)
    (wood p71 mahogany)
    (surface-condition p71 verysmooth)
    (treatment p71 colourfragments)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (available p74)
    (colour p74 blue)
    (wood p74 mahogany)
    (surface-condition p74 rough)
    (treatment p74 glazed)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (available p78)
    (colour p78 green)
    (wood p78 mahogany)
    (surface-condition p78 smooth)
    (treatment p78 colourfragments)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (available p82)
    (colour p82 red)
    (wood p82 teak)
    (surface-condition p82 smooth)
    (treatment p82 colourfragments)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (available p89)
    (colour p89 red)
    (wood p89 walnut)
    (surface-condition p89 verysmooth)
    (treatment p89 colourfragments)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (available p92)
    (colour p92 black)
    (wood p92 mahogany)
    (surface-condition p92 smooth)
    (treatment p92 glazed)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (available p96)
    (colour p96 mauve)
    (wood p96 pine)
    (surface-condition p96 verysmooth)
    (treatment p96 colourfragments)
    (goalsize p96 small)
    
    
    
    
    (available p97)
    (colour p97 mauve)
    (wood p97 pine)
    (surface-condition p97 smooth)
    (treatment p97 varnished)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s1)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s11)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s2)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 oak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 walnut)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s7)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 teak)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s7)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 beech)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 beech)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 beech)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s10)
    (wood b25 beech)
    (surface-condition b25 smooth)
    (available b25)
  )
  (:goal
    (and
      (available p0)
      (wood p0 mahogany)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (wood p1 walnut)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 mauve)
      (wood p2 walnut)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 oak)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 green)
      (treatment p4 varnished)
      (available p5)
      (colour p5 white)
      (wood p5 pine)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (surface-condition p6 smooth)
      (available p7)
      (wood p7 pine)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 mauve)
      (wood p8 teak)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 red)
      (wood p9 mahogany)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 walnut)
      (treatment p10 varnished)
      (available p11)
      (wood p11 mahogany)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 mauve)
      (wood p12 cherry)
      (available p13)
      (colour p13 natural)
      (treatment p13 glazed)
      (available p14)
      (colour p14 mauve)
      (wood p14 mahogany)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 blue)
      (treatment p16 glazed)
      (available p17)
      (colour p17 red)
      (wood p17 mahogany)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 beech)
      (treatment p18 glazed)
      (available p19)
      (colour p19 black)
      (wood p19 beech)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 mauve)
      (wood p20 beech)
      (surface-condition p20 smooth)
      (available p21)
      (wood p21 walnut)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 white)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 black)
      (wood p23 beech)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 green)
      (wood p24 walnut)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 mauve)
      (wood p25 teak)
      (available p26)
      (colour p26 natural)
      (wood p26 cherry)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 black)
      (wood p28 beech)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 white)
      (treatment p29 varnished)
      (available p30)
      (colour p30 natural)
      (wood p30 oak)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (wood p31 cherry)
      (treatment p31 glazed)
      (available p32)
      (colour p32 mauve)
      (wood p32 beech)
      (available p33)
      (colour p33 black)
      (wood p33 teak)
      (available p34)
      (colour p34 green)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 white)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 cherry)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 mauve)
      (wood p37 mahogany)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (wood p38 cherry)
      (treatment p38 varnished)
      (available p39)
      (colour p39 red)
      (wood p39 oak)
      (available p40)
      (colour p40 red)
      (wood p40 walnut)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 green)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 green)
      (wood p42 mahogany)
      (treatment p42 varnished)
      (available p43)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 green)
      (treatment p44 glazed)
      (available p45)
      (colour p45 black)
      (wood p45 teak)
      (available p46)
      (colour p46 white)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (wood p47 oak)
      (treatment p47 glazed)
      (available p48)
      (wood p48 walnut)
      (treatment p48 varnished)
      (available p49)
      (colour p49 red)
      (wood p49 pine)
      (surface-condition p49 smooth)
      (available p50)
      (wood p50 cherry)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 green)
      (wood p51 oak)
      (available p52)
      (colour p52 black)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 red)
      (surface-condition p53 smooth)
      (available p54)
      (wood p54 oak)
      (treatment p54 glazed)
      (available p55)
      (colour p55 black)
      (treatment p55 glazed)
      (available p56)
      (wood p56 teak)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 red)
      (wood p57 pine)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 walnut)
      (treatment p58 varnished)
      (available p59)
      (colour p59 red)
      (wood p59 beech)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 red)
      (wood p60 oak)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 black)
      (treatment p61 glazed)
      (available p62)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 white)
      (wood p63 beech)
      (available p64)
      (colour p64 green)
      (wood p64 pine)
      (available p65)
      (wood p65 oak)
      (treatment p65 glazed)
      (available p66)
      (colour p66 natural)
      (wood p66 pine)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 white)
      (treatment p67 glazed)
      (available p68)
      (colour p68 blue)
      (wood p68 beech)
      (available p69)
      (colour p69 white)
      (wood p69 teak)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 black)
      (wood p70 beech)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 mauve)
      (wood p71 mahogany)
      (available p72)
      (colour p72 red)
      (wood p72 beech)
      (available p73)
      (colour p73 natural)
      (wood p73 oak)
      (available p74)
      (wood p74 mahogany)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 natural)
      (treatment p75 glazed)
      (available p76)
      (wood p76 pine)
      (treatment p76 glazed)
      (available p77)
      (colour p77 natural)
      (wood p77 mahogany)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 white)
      (wood p78 mahogany)
      (treatment p78 glazed)
      (available p79)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 red)
      (wood p80 cherry)
      (treatment p80 glazed)
      (available p81)
      (wood p81 oak)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 blue)
      (surface-condition p82 smooth)
      (available p83)
      (wood p83 walnut)
      (treatment p83 varnished)
      (available p84)
      (colour p84 black)
      (wood p84 teak)
      (available p85)
      (colour p85 white)
      (wood p85 pine)
      (surface-condition p85 smooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 blue)
      (wood p86 pine)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 red)
      (surface-condition p87 smooth)
      (treatment p87 glazed)
      (available p88)
      (wood p88 teak)
      (surface-condition p88 smooth)
      (available p89)
      (colour p89 black)
      (wood p89 walnut)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 natural)
      (treatment p90 glazed)
      (available p91)
      (colour p91 red)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 mauve)
      (wood p92 mahogany)
      (available p93)
      (wood p93 mahogany)
      (surface-condition p93 verysmooth)
      (treatment p93 glazed)
      (available p94)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 mauve)
      (wood p95 teak)
      (surface-condition p95 smooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 natural)
      (surface-condition p96 smooth)
      (available p97)
      (wood p97 pine)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 black)
      (treatment p98 glazed)
      (available p99)
      (colour p99 natural)
      (wood p99 beech)
      (surface-condition p99 smooth)
      (treatment p99 varnished)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
    )
  )
  
)
