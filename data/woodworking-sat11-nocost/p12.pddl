; woodworking task with 33 parts and 140% wood
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 477863

(define (problem wood-prob-sat-12)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    black green mauve blue red white - acolour
    oak beech cherry walnut teak mahogany pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
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
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 mauve)
    (wood p1 teak)
    (surface-condition p1 verysmooth)
    (treatment p1 glazed)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (available p8)
    (colour p8 white)
    (wood p8 mahogany)
    (surface-condition p8 smooth)
    (treatment p8 varnished)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 blue)
    (wood p25 pine)
    (surface-condition p25 smooth)
    (treatment p25 colourfragments)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 walnut)
    (surface-condition p26 verysmooth)
    (treatment p26 colourfragments)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s10)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s6)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s6)
    (wood b4 oak)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s6)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 teak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 beech)
    (surface-condition b10 smooth)
    (available b10)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 cherry)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 red)
      (wood p1 teak)
      (available p2)
      (colour p2 mauve)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 black)
      (surface-condition p3 smooth)
      (available p4)
      (wood p4 walnut)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 white)
      (wood p5 mahogany)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (wood p6 pine)
      (surface-condition p6 verysmooth)
      (available p7)
      (wood p7 mahogany)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 blue)
      (wood p8 mahogany)
      (available p9)
      (colour p9 natural)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 mauve)
      (wood p10 walnut)
      (available p11)
      (colour p11 black)
      (wood p11 pine)
      (available p12)
      (colour p12 mauve)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 black)
      (wood p13 beech)
      (available p14)
      (colour p14 black)
      (wood p14 beech)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 mauve)
      (wood p15 teak)
      (surface-condition p15 smooth)
      (available p16)
      (wood p16 cherry)
      (treatment p16 varnished)
      (available p17)
      (colour p17 mauve)
      (wood p17 cherry)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 green)
      (treatment p18 glazed)
      (available p19)
      (colour p19 red)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 black)
      (treatment p20 glazed)
      (available p21)
      (colour p21 black)
      (treatment p21 varnished)
      (available p22)
      (colour p22 white)
      (wood p22 teak)
      (treatment p22 varnished)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 mauve)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 green)
      (wood p25 pine)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (wood p26 walnut)
      (treatment p26 glazed)
      (available p27)
      (colour p27 red)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (wood p29 oak)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 green)
      (wood p30 walnut)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (wood p31 cherry)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (wood p32 pine)
      (surface-condition p32 smooth)
    )
  )
  
)
