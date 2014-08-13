; woodworking task with 65 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 521698

(define (problem wood-prob-sat-32)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red white blue black green mauve - acolour
    oak pine cherry teak beech mahogany walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 black)
    (wood p7 mahogany)
    (surface-condition p7 smooth)
    (treatment p7 varnished)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (available p10)
    (colour p10 natural)
    (wood p10 cherry)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 red)
    (wood p11 beech)
    (surface-condition p11 verysmooth)
    (treatment p11 varnished)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 mauve)
    (wood p12 beech)
    (surface-condition p12 smooth)
    (treatment p12 colourfragments)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (available p16)
    (colour p16 mauve)
    (wood p16 teak)
    (surface-condition p16 smooth)
    (treatment p16 colourfragments)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 mauve)
    (wood p19 oak)
    (surface-condition p19 verysmooth)
    (treatment p19 glazed)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 white)
    (wood p22 cherry)
    (surface-condition p22 rough)
    (treatment p22 varnished)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (available p24)
    (colour p24 red)
    (wood p24 walnut)
    (surface-condition p24 rough)
    (treatment p24 glazed)
    (goalsize p24 small)
    
    
    
    
    (available p25)
    (colour p25 black)
    (wood p25 walnut)
    (surface-condition p25 verysmooth)
    (treatment p25 glazed)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 red)
    (wood p35 beech)
    (surface-condition p35 verysmooth)
    (treatment p35 glazed)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 blue)
    (wood p37 beech)
    (surface-condition p37 smooth)
    (treatment p37 glazed)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (available p44)
    (colour p44 natural)
    (wood p44 teak)
    (surface-condition p44 smooth)
    (treatment p44 varnished)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 green)
    (wood p47 oak)
    (surface-condition p47 smooth)
    (treatment p47 colourfragments)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 blue)
    (wood p49 beech)
    (surface-condition p49 verysmooth)
    (treatment p49 varnished)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (available p53)
    (colour p53 black)
    (wood p53 walnut)
    (surface-condition p53 smooth)
    (treatment p53 glazed)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s2)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s12)
    (wood b6 pine)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s5)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s2)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s3)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 beech)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 beech)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 beech)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 beech)
    (surface-condition b17 rough)
    (available b17)
  )
  (:goal
    (and
      (available p0)
      (wood p0 pine)
      (treatment p0 varnished)
      (available p1)
      (colour p1 green)
      (wood p1 teak)
      (treatment p1 glazed)
      (available p2)
      (wood p2 teak)
      (treatment p2 varnished)
      (available p3)
      (colour p3 green)
      (wood p3 walnut)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 natural)
      (treatment p5 glazed)
      (available p6)
      (colour p6 green)
      (wood p6 oak)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 natural)
      (wood p7 mahogany)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (wood p8 mahogany)
      (surface-condition p8 smooth)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 green)
      (wood p10 cherry)
      (available p11)
      (colour p11 blue)
      (wood p11 beech)
      (treatment p11 glazed)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 black)
      (wood p13 oak)
      (available p14)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 red)
      (wood p16 teak)
      (available p17)
      (colour p17 black)
      (wood p17 mahogany)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 mauve)
      (surface-condition p18 smooth)
      (available p19)
      (wood p19 oak)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 blue)
      (wood p20 mahogany)
      (surface-condition p20 smooth)
      (available p21)
      (colour p21 blue)
      (wood p21 walnut)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (wood p22 cherry)
      (treatment p22 varnished)
      (available p23)
      (colour p23 mauve)
      (treatment p23 varnished)
      (available p24)
      (colour p24 green)
      (wood p24 walnut)
      (treatment p24 glazed)
      (available p25)
      (colour p25 green)
      (wood p25 walnut)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 black)
      (wood p26 walnut)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 green)
      (wood p27 beech)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 black)
      (wood p28 beech)
      (available p29)
      (wood p29 pine)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 natural)
      (wood p30 pine)
      (available p31)
      (colour p31 red)
      (wood p31 beech)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 mauve)
      (wood p32 pine)
      (available p33)
      (wood p33 teak)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 white)
      (wood p34 beech)
      (available p35)
      (colour p35 black)
      (wood p35 beech)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 mauve)
      (wood p36 mahogany)
      (treatment p36 varnished)
      (available p37)
      (wood p37 beech)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 black)
      (wood p38 beech)
      (available p39)
      (colour p39 natural)
      (wood p39 pine)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 white)
      (wood p40 cherry)
      (available p41)
      (colour p41 natural)
      (wood p41 teak)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (wood p42 pine)
      (treatment p42 glazed)
      (available p43)
      (colour p43 white)
      (wood p43 pine)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (wood p44 teak)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (wood p45 cherry)
      (treatment p45 varnished)
      (available p46)
      (wood p46 mahogany)
      (surface-condition p46 smooth)
      (available p47)
      (wood p47 oak)
      (treatment p47 glazed)
      (available p48)
      (colour p48 white)
      (surface-condition p48 verysmooth)
      (available p49)
      (colour p49 mauve)
      (wood p49 beech)
      (available p50)
      (colour p50 green)
      (wood p50 oak)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 blue)
      (wood p51 teak)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 red)
      (wood p52 pine)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 blue)
      (wood p53 walnut)
      (treatment p53 varnished)
      (available p54)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 blue)
      (wood p55 beech)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (wood p56 walnut)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 black)
      (wood p57 beech)
      (available p58)
      (colour p58 blue)
      (wood p58 beech)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (wood p59 oak)
      (treatment p59 glazed)
      (available p60)
      (wood p60 beech)
      (treatment p60 glazed)
      (available p61)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 white)
      (treatment p62 varnished)
      (available p63)
      (colour p63 blue)
      (treatment p63 glazed)
      (available p64)
      (wood p64 pine)
      (surface-condition p64 smooth)
    )
  )
  
)
