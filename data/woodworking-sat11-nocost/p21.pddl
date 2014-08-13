; woodworking task with 32 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 613775

(define (problem wood-prob-sat-21)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green red white black mauve blue - acolour
    cherry walnut mahogany beech oak pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 - aboardsize
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
    (has-colour glazer0 blue)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 black)
    (has-colour glazer2 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 blue)
    (wood p8 walnut)
    (surface-condition p8 smooth)
    (treatment p8 varnished)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 black)
    (wood p10 pine)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 white)
    (wood p11 walnut)
    (surface-condition p11 smooth)
    (treatment p11 colourfragments)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 mauve)
    (wood p19 beech)
    (surface-condition p19 verysmooth)
    (treatment p19 varnished)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 white)
    (wood p23 beech)
    (surface-condition p23 rough)
    (treatment p23 varnished)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 white)
    (wood p27 cherry)
    (surface-condition p27 smooth)
    (treatment p27 varnished)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 red)
    (wood p28 oak)
    (surface-condition p28 verysmooth)
    (treatment p28 varnished)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 black)
    (wood p29 teak)
    (surface-condition p29 rough)
    (treatment p29 colourfragments)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (boardsize b0 s4)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 oak)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s2)
    (wood b2 oak)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 pine)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 pine)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s1)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s3)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 teak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s2)
    (wood b9 teak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 beech)
    (surface-condition b10 rough)
    (available b10)
  )
  (:goal
    (and
      (available p0)
      (wood p0 oak)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (wood p1 pine)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 black)
      (wood p2 oak)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 mauve)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 green)
      (surface-condition p4 verysmooth)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 black)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 blue)
      (wood p7 pine)
      (treatment p7 glazed)
      (available p8)
      (wood p8 walnut)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 white)
      (wood p9 pine)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 red)
      (wood p10 pine)
      (treatment p10 glazed)
      (available p11)
      (colour p11 blue)
      (wood p11 walnut)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (wood p12 beech)
      (treatment p12 glazed)
      (available p13)
      (colour p13 white)
      (wood p13 teak)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 green)
      (wood p14 cherry)
      (available p15)
      (colour p15 mauve)
      (wood p15 walnut)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 mauve)
      (wood p16 pine)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 natural)
      (treatment p17 glazed)
      (available p18)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 red)
      (treatment p19 glazed)
      (available p20)
      (wood p20 teak)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (wood p21 oak)
      (surface-condition p21 verysmooth)
      (available p22)
      (wood p22 walnut)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 green)
      (treatment p23 varnished)
      (available p24)
      (colour p24 mauve)
      (surface-condition p24 verysmooth)
      (available p25)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 mauve)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 red)
      (treatment p27 varnished)
      (available p28)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 mauve)
      (surface-condition p30 verysmooth)
      (available p31)
      (wood p31 pine)
      (surface-condition p31 verysmooth)
    )
  )
  
)
