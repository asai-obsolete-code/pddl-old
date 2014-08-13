; woodworking task with 62 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 498525

(define (problem wood-prob-sat-65)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green white black red mauve - acolour
    cherry pine teak beech mahogany oak walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 green)
    (has-colour glazer1 natural)
    (has-colour glazer1 black)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
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
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
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
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 green)
    (wood p4 pine)
    (surface-condition p4 rough)
    (treatment p4 colourfragments)
    (goalsize p4 medium)
    
    
    
    
    (available p5)
    (colour p5 red)
    (wood p5 pine)
    (surface-condition p5 smooth)
    (treatment p5 varnished)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 natural)
    (wood p14 teak)
    (surface-condition p14 rough)
    (treatment p14 varnished)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 green)
    (wood p17 mahogany)
    (surface-condition p17 rough)
    (treatment p17 varnished)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 green)
    (wood p20 mahogany)
    (surface-condition p20 rough)
    (treatment p20 glazed)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 black)
    (wood p27 walnut)
    (surface-condition p27 rough)
    (treatment p27 varnished)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 black)
    (wood p33 mahogany)
    (surface-condition p33 smooth)
    (treatment p33 colourfragments)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 red)
    (wood p36 pine)
    (surface-condition p36 verysmooth)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 red)
    (wood p41 cherry)
    (surface-condition p41 rough)
    (treatment p41 glazed)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 blue)
    (wood p46 cherry)
    (surface-condition p46 smooth)
    (treatment p46 varnished)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 natural)
    (wood p55 oak)
    (surface-condition p55 verysmooth)
    (treatment p55 glazed)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 green)
    (wood p58 pine)
    (surface-condition p58 verysmooth)
    (treatment p58 colourfragments)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 green)
    (wood p59 beech)
    (surface-condition p59 rough)
    (treatment p59 glazed)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (available p61)
    (colour p61 red)
    (wood p61 cherry)
    (surface-condition p61 smooth)
    (treatment p61 glazed)
    (goalsize p61 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s2)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s3)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s7)
    (wood b6 oak)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s5)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 walnut)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s5)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s11)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s5)
    (wood b15 beech)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 beech)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s7)
    (wood b17 beech)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s2)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 red)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 black)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 red)
      (wood p3 beech)
      (available p4)
      (colour p4 red)
      (wood p4 pine)
      (treatment p4 varnished)
      (available p5)
      (wood p5 pine)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 mauve)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (wood p7 mahogany)
      (treatment p7 varnished)
      (available p8)
      (wood p8 beech)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 green)
      (wood p9 oak)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (wood p11 beech)
      (treatment p11 glazed)
      (available p12)
      (colour p12 white)
      (wood p12 teak)
      (treatment p12 glazed)
      (available p13)
      (wood p13 mahogany)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (wood p16 pine)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 red)
      (treatment p17 glazed)
      (available p18)
      (colour p18 blue)
      (surface-condition p18 verysmooth)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 blue)
      (wood p20 mahogany)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 black)
      (wood p21 beech)
      (treatment p21 varnished)
      (available p22)
      (colour p22 natural)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 natural)
      (wood p23 cherry)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 red)
      (wood p24 pine)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 teak)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 white)
      (surface-condition p27 verysmooth)
      (available p28)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 mauve)
      (wood p29 cherry)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 black)
      (wood p30 mahogany)
      (available p31)
      (colour p31 black)
      (wood p31 cherry)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 blue)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 white)
      (wood p33 mahogany)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 blue)
      (wood p34 teak)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (treatment p35 varnished)
      (available p36)
      (colour p36 white)
      (wood p36 pine)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (wood p37 pine)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 black)
      (treatment p39 glazed)
      (available p40)
      (colour p40 natural)
      (treatment p40 glazed)
      (available p41)
      (colour p41 green)
      (wood p41 cherry)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (wood p42 oak)
      (treatment p42 glazed)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (wood p44 teak)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 mauve)
      (wood p45 teak)
      (available p46)
      (colour p46 red)
      (wood p46 cherry)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (wood p47 pine)
      (surface-condition p47 verysmooth)
      (available p48)
      (wood p48 beech)
      (surface-condition p48 verysmooth)
      (available p49)
      (wood p49 beech)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 natural)
      (treatment p50 glazed)
      (available p51)
      (colour p51 white)
      (treatment p51 varnished)
      (available p52)
      (colour p52 green)
      (wood p52 teak)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 natural)
      (wood p53 mahogany)
      (treatment p53 glazed)
      (available p54)
      (colour p54 green)
      (wood p54 mahogany)
      (treatment p54 glazed)
      (available p55)
      (colour p55 white)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 black)
      (treatment p56 glazed)
      (available p57)
      (colour p57 blue)
      (wood p57 teak)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 blue)
      (wood p58 pine)
      (treatment p58 varnished)
      (available p59)
      (colour p59 mauve)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 natural)
      (wood p60 beech)
      (available p61)
      (colour p61 mauve)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
    )
  )
  
)
