; woodworking task with 56 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 597093

(define (problem wood-prob-sat-29)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue white green black red mauve - acolour
    mahogany pine cherry teak walnut beech oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 - aboardsize
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
    (has-colour glazer0 blue)
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 green)
    (wood p2 mahogany)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 blue)
    (wood p4 oak)
    (surface-condition p4 rough)
    (treatment p4 varnished)
    (goalsize p4 medium)
    
    
    
    
    (available p5)
    (colour p5 white)
    (wood p5 mahogany)
    (surface-condition p5 rough)
    (treatment p5 colourfragments)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 natural)
    (wood p10 beech)
    (surface-condition p10 smooth)
    (treatment p10 glazed)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 white)
    (wood p12 mahogany)
    (surface-condition p12 smooth)
    (treatment p12 varnished)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 mauve)
    (wood p14 cherry)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 mauve)
    (wood p20 oak)
    (surface-condition p20 rough)
    (treatment p20 glazed)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (available p27)
    (colour p27 green)
    (wood p27 teak)
    (surface-condition p27 verysmooth)
    (treatment p27 varnished)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 mauve)
    (wood p28 cherry)
    (surface-condition p28 rough)
    (treatment p28 colourfragments)
    (goalsize p28 small)
    
    
    
    
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
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 red)
    (wood p43 mahogany)
    (surface-condition p43 smooth)
    (treatment p43 colourfragments)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 green)
    (wood p47 mahogany)
    (surface-condition p47 rough)
    (treatment p47 varnished)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s8)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 oak)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s4)
    (wood b5 oak)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s8)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s3)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 teak)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s4)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 beech)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s2)
    (wood b15 beech)
    (surface-condition b15 rough)
    (available b15)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 pine)
      (surface-condition p0 verysmooth)
      (available p1)
      (colour p1 natural)
      (wood p1 walnut)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 blue)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 cherry)
      (surface-condition p3 smooth)
      (available p4)
      (wood p4 oak)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 black)
      (wood p5 mahogany)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 white)
      (treatment p6 glazed)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 black)
      (wood p8 cherry)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 green)
      (treatment p9 varnished)
      (available p10)
      (colour p10 black)
      (wood p10 beech)
      (treatment p10 varnished)
      (available p11)
      (wood p11 oak)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 black)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 blue)
      (wood p13 cherry)
      (available p14)
      (colour p14 black)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 green)
      (wood p15 pine)
      (available p16)
      (colour p16 green)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 mauve)
      (wood p17 walnut)
      (treatment p17 varnished)
      (available p18)
      (colour p18 black)
      (wood p18 walnut)
      (treatment p18 glazed)
      (available p19)
      (colour p19 white)
      (wood p19 mahogany)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 green)
      (wood p21 beech)
      (treatment p21 glazed)
      (available p22)
      (colour p22 blue)
      (treatment p22 varnished)
      (available p23)
      (colour p23 natural)
      (wood p23 oak)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 oak)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (wood p26 mahogany)
      (surface-condition p26 smooth)
      (available p27)
      (wood p27 teak)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 red)
      (treatment p28 varnished)
      (available p29)
      (colour p29 natural)
      (wood p29 walnut)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (wood p30 walnut)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 red)
      (wood p31 teak)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 blue)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 green)
      (wood p33 oak)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 green)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 natural)
      (wood p35 beech)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 red)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 red)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (wood p38 walnut)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 mauve)
      (wood p39 teak)
      (available p40)
      (colour p40 black)
      (treatment p40 varnished)
      (available p41)
      (wood p41 teak)
      (surface-condition p41 smooth)
      (available p42)
      (wood p42 mahogany)
      (treatment p42 varnished)
      (available p43)
      (wood p43 mahogany)
      (treatment p43 glazed)
      (available p44)
      (wood p44 oak)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 black)
      (wood p45 mahogany)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 green)
      (treatment p46 varnished)
      (available p47)
      (wood p47 mahogany)
      (surface-condition p47 verysmooth)
      (available p48)
      (colour p48 natural)
      (wood p48 teak)
      (treatment p48 glazed)
      (available p49)
      (colour p49 red)
      (wood p49 walnut)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 white)
      (wood p50 pine)
      (available p51)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (wood p52 pine)
      (treatment p52 varnished)
      (available p53)
      (colour p53 black)
      (treatment p53 varnished)
      (available p54)
      (colour p54 red)
      (wood p54 walnut)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 black)
      (wood p55 teak)
    )
  )
  
)
