; woodworking task with 62 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 901220

(define (problem wood-prob-sat-125)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green red mauve black white blue - acolour
    beech teak walnut cherry oak mahogany pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 pine)
    (surface-condition p7 verysmooth)
    (treatment p7 varnished)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 red)
    (wood p26 teak)
    (surface-condition p26 verysmooth)
    (treatment p26 colourfragments)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 black)
    (wood p27 beech)
    (surface-condition p27 smooth)
    (treatment p27 colourfragments)
    (goalsize p27 medium)
    
    
    
    
    (available p28)
    (colour p28 green)
    (wood p28 mahogany)
    (surface-condition p28 verysmooth)
    (treatment p28 glazed)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 red)
    (wood p31 mahogany)
    (surface-condition p31 smooth)
    (treatment p31 varnished)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 green)
    (wood p35 teak)
    (surface-condition p35 smooth)
    (treatment p35 colourfragments)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 black)
    (wood p41 beech)
    (surface-condition p41 smooth)
    (treatment p41 glazed)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (available p61)
    (colour p61 black)
    (wood p61 mahogany)
    (surface-condition p61 rough)
    (treatment p61 colourfragments)
    (goalsize p61 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 oak)
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
    (boardsize b10 s8)
    (wood b10 pine)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s7)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s5)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s5)
    (wood b13 walnut)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s10)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s11)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s1)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 pine)
      (available p1)
      (wood p1 walnut)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (wood p2 oak)
      (available p3)
      (colour p3 blue)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 red)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 natural)
      (wood p5 beech)
      (treatment p5 varnished)
      (available p6)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (wood p7 pine)
      (available p8)
      (colour p8 red)
      (wood p8 beech)
      (available p9)
      (colour p9 black)
      (wood p9 walnut)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 blue)
      (wood p10 beech)
      (available p11)
      (colour p11 blue)
      (wood p11 oak)
      (available p12)
      (wood p12 beech)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 blue)
      (wood p13 teak)
      (available p14)
      (colour p14 green)
      (treatment p14 glazed)
      (available p15)
      (wood p15 walnut)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 green)
      (wood p16 beech)
      (treatment p16 varnished)
      (available p17)
      (colour p17 green)
      (wood p17 walnut)
      (treatment p17 varnished)
      (available p18)
      (colour p18 natural)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 mauve)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (wood p20 walnut)
      (treatment p20 glazed)
      (available p21)
      (colour p21 black)
      (wood p21 pine)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (wood p22 mahogany)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 white)
      (wood p23 pine)
      (available p24)
      (wood p24 cherry)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 natural)
      (wood p25 mahogany)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 black)
      (wood p26 teak)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 red)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (wood p28 mahogany)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 blue)
      (wood p30 mahogany)
      (available p31)
      (colour p31 natural)
      (surface-condition p31 smooth)
      (available p32)
      (wood p32 beech)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 white)
      (wood p33 oak)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 red)
      (wood p34 mahogany)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 mauve)
      (treatment p35 varnished)
      (available p36)
      (colour p36 blue)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 green)
      (wood p37 cherry)
      (available p38)
      (colour p38 green)
      (wood p38 cherry)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 blue)
      (treatment p39 glazed)
      (available p40)
      (colour p40 green)
      (wood p40 pine)
      (treatment p40 glazed)
      (available p41)
      (colour p41 white)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 black)
      (wood p42 walnut)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 mauve)
      (wood p44 cherry)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 natural)
      (wood p46 mahogany)
      (available p47)
      (colour p47 blue)
      (wood p47 mahogany)
      (available p48)
      (colour p48 white)
      (treatment p48 glazed)
      (available p49)
      (colour p49 green)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 green)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 blue)
      (wood p51 mahogany)
      (available p52)
      (colour p52 white)
      (wood p52 oak)
      (available p53)
      (colour p53 blue)
      (treatment p53 varnished)
      (available p54)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (wood p55 walnut)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 mauve)
      (wood p56 pine)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 cherry)
      (treatment p57 glazed)
      (available p58)
      (colour p58 green)
      (wood p58 teak)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (wood p59 pine)
      (treatment p59 glazed)
      (available p60)
      (wood p60 teak)
      (treatment p60 glazed)
      (available p61)
      (colour p61 blue)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
    )
  )
  
)
