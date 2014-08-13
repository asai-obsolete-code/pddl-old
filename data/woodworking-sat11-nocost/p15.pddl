; woodworking task with 39 parts and 120% wood
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 762617

(define (problem wood-prob-sat-15)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    mauve blue green white black red - acolour
    pine oak mahogany teak walnut beech cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (empty highspeed-saw0)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (available p0)
    (colour p0 green)
    (wood p0 pine)
    (surface-condition p0 smooth)
    (treatment p0 colourfragments)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 blue)
    (wood p5 pine)
    (surface-condition p5 smooth)
    (treatment p5 glazed)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (available p13)
    (colour p13 blue)
    (wood p13 oak)
    (surface-condition p13 smooth)
    (treatment p13 colourfragments)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 red)
    (wood p17 mahogany)
    (surface-condition p17 rough)
    (treatment p17 glazed)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 natural)
    (wood p21 teak)
    (surface-condition p21 smooth)
    (treatment p21 varnished)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 green)
    (wood p24 beech)
    (surface-condition p24 rough)
    (treatment p24 colourfragments)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 blue)
    (wood p34 walnut)
    (surface-condition p34 verysmooth)
    (treatment p34 varnished)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 natural)
    (wood p37 teak)
    (surface-condition p37 verysmooth)
    (treatment p37 varnished)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s2)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s5)
    (wood b6 oak)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s11)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s2)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 teak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s2)
    (wood b11 teak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s4)
    (wood b12 beech)
    (surface-condition b12 rough)
    (available b12)
  )
  (:goal
    (and
      (available p0)
      (wood p0 pine)
      (treatment p0 glazed)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (wood p2 oak)
      (treatment p2 varnished)
      (available p3)
      (colour p3 blue)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 cherry)
      (treatment p4 varnished)
      (available p5)
      (wood p5 pine)
      (treatment p5 varnished)
      (available p6)
      (colour p6 white)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (wood p7 mahogany)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 mauve)
      (surface-condition p8 verysmooth)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (wood p10 pine)
      (treatment p10 glazed)
      (available p11)
      (colour p11 red)
      (wood p11 pine)
      (surface-condition p11 verysmooth)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 oak)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 cherry)
      (treatment p14 glazed)
      (available p15)
      (wood p15 teak)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 mauve)
      (wood p16 pine)
      (treatment p16 varnished)
      (available p17)
      (colour p17 mauve)
      (wood p17 mahogany)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 red)
      (treatment p18 glazed)
      (available p19)
      (wood p19 walnut)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 black)
      (wood p20 teak)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 red)
      (wood p21 teak)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 natural)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 natural)
      (wood p24 beech)
      (treatment p24 varnished)
      (available p25)
      (colour p25 red)
      (surface-condition p25 verysmooth)
      (available p26)
      (wood p26 oak)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 red)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 red)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 white)
      (wood p29 mahogany)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 green)
      (wood p30 beech)
      (available p31)
      (colour p31 mauve)
      (treatment p31 varnished)
      (available p32)
      (wood p32 oak)
      (treatment p32 varnished)
      (available p33)
      (wood p33 oak)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 black)
      (wood p34 walnut)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (wood p35 mahogany)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 mauve)
      (treatment p36 varnished)
      (available p37)
      (colour p37 red)
      (wood p37 teak)
      (available p38)
      (colour p38 white)
      (wood p38 oak)
    )
  )
  
)
