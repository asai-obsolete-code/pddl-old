; woodworking task with 53 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 604455

(define (problem wood-prob-sat-62)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black white red mauve green blue - acolour
    beech pine oak cherry teak mahogany walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 - aboardsize
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
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer1 natural)
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
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher2 blue)
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
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 mauve)
    (wood p2 teak)
    (surface-condition p2 verysmooth)
    (treatment p2 varnished)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 white)
    (wood p4 mahogany)
    (surface-condition p4 verysmooth)
    (treatment p4 varnished)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 green)
    (wood p5 cherry)
    (surface-condition p5 verysmooth)
    (treatment p5 varnished)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 red)
    (wood p15 mahogany)
    (surface-condition p15 verysmooth)
    (treatment p15 glazed)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 white)
    (wood p17 pine)
    (surface-condition p17 rough)
    (treatment p17 varnished)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 blue)
    (wood p19 beech)
    (surface-condition p19 verysmooth)
    (treatment p19 colourfragments)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 mauve)
    (wood p20 beech)
    (surface-condition p20 smooth)
    (treatment p20 glazed)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 mauve)
    (wood p24 cherry)
    (surface-condition p24 rough)
    (treatment p24 colourfragments)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 mauve)
    (wood p26 cherry)
    (surface-condition p26 smooth)
    (treatment p26 colourfragments)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (available p33)
    (colour p33 natural)
    (wood p33 teak)
    (surface-condition p33 rough)
    (treatment p33 colourfragments)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (available p35)
    (colour p35 mauve)
    (wood p35 mahogany)
    (surface-condition p35 smooth)
    (treatment p35 varnished)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 mauve)
    (wood p37 walnut)
    (surface-condition p37 rough)
    (treatment p37 colourfragments)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 natural)
    (wood p40 cherry)
    (surface-condition p40 rough)
    (treatment p40 varnished)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 mahogany)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s9)
    (wood b2 oak)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 oak)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s3)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 teak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 beech)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
    (wood b15 beech)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s3)
    (wood b16 beech)
    (surface-condition b16 rough)
    (available b16)
  )
  (:goal
    (and
      (available p0)
      (wood p0 teak)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 black)
      (treatment p1 glazed)
      (available p2)
      (colour p2 natural)
      (wood p2 teak)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 blue)
      (wood p3 walnut)
      (available p4)
      (colour p4 blue)
      (wood p4 mahogany)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 natural)
      (treatment p5 glazed)
      (available p6)
      (colour p6 white)
      (treatment p6 varnished)
      (available p7)
      (colour p7 natural)
      (wood p7 walnut)
      (available p8)
      (colour p8 mauve)
      (wood p8 mahogany)
      (treatment p8 glazed)
      (available p9)
      (colour p9 mauve)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 red)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 green)
      (treatment p12 glazed)
      (available p13)
      (colour p13 white)
      (treatment p13 varnished)
      (available p14)
      (colour p14 green)
      (wood p14 mahogany)
      (treatment p14 varnished)
      (available p15)
      (colour p15 black)
      (treatment p15 varnished)
      (available p16)
      (colour p16 natural)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 pine)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 natural)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (wood p19 beech)
      (treatment p19 glazed)
      (available p20)
      (colour p20 natural)
      (wood p20 beech)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 red)
      (treatment p21 glazed)
      (available p22)
      (wood p22 pine)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 natural)
      (treatment p23 glazed)
      (available p24)
      (colour p24 black)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 green)
      (wood p25 oak)
      (available p26)
      (colour p26 black)
      (wood p26 cherry)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 green)
      (wood p27 oak)
      (available p28)
      (colour p28 black)
      (treatment p28 varnished)
      (available p29)
      (colour p29 blue)
      (wood p29 walnut)
      (available p30)
      (colour p30 white)
      (surface-condition p30 verysmooth)
      (available p31)
      (wood p31 beech)
      (surface-condition p31 verysmooth)
      (available p32)
      (wood p32 teak)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 blue)
      (wood p33 teak)
      (available p34)
      (colour p34 mauve)
      (wood p34 teak)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 natural)
      (wood p35 mahogany)
      (treatment p35 glazed)
      (available p36)
      (colour p36 red)
      (wood p36 cherry)
      (surface-condition p36 smooth)
      (available p37)
      (colour p37 black)
      (treatment p37 varnished)
      (available p38)
      (wood p38 oak)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 green)
      (wood p39 beech)
      (available p40)
      (wood p40 cherry)
      (surface-condition p40 verysmooth)
      (available p41)
      (wood p41 oak)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 mauve)
      (treatment p42 glazed)
      (available p43)
      (wood p43 teak)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 natural)
      (wood p45 beech)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 white)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 mauve)
      (wood p47 beech)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 black)
      (wood p50 pine)
      (available p51)
      (wood p51 oak)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 natural)
      (wood p52 teak)
    )
  )
  
)
