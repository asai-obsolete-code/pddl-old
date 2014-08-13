; woodworking task with 24 parts and 120% wood
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 90334

(define (problem wood-prob-sat-9)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    red blue green white mauve black - acolour
    cherry pine mahogany teak walnut beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 - part
    b0 b1 b2 b3 b4 b5 b6 b7 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (empty highspeed-saw0)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (available p0)
    (colour p0 green)
    (wood p0 walnut)
    (surface-condition p0 rough)
    (treatment p0 glazed)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 green)
    (wood p5 teak)
    (surface-condition p5 rough)
    (treatment p5 colourfragments)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 green)
    (wood p7 cherry)
    (surface-condition p7 rough)
    (treatment p7 glazed)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 black)
    (wood p11 beech)
    (surface-condition p11 rough)
    (treatment p11 glazed)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 blue)
    (wood p20 mahogany)
    (surface-condition p20 smooth)
    (treatment p20 varnished)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s5)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s4)
    (wood b2 pine)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s10)
    (wood b3 walnut)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s2)
    (wood b4 walnut)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 teak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 teak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s4)
    (wood b7 beech)
    (surface-condition b7 smooth)
    (available b7)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (wood p1 walnut)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 green)
      (wood p2 teak)
      (available p3)
      (colour p3 blue)
      (wood p3 teak)
      (available p4)
      (wood p4 mahogany)
      (surface-condition p4 verysmooth)
      (available p5)
      (wood p5 teak)
      (surface-condition p5 verysmooth)
      (available p6)
      (wood p6 pine)
      (surface-condition p6 verysmooth)
      (available p7)
      (wood p7 cherry)
      (treatment p7 varnished)
      (available p8)
      (colour p8 white)
      (wood p8 walnut)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 mauve)
      (wood p9 pine)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 mauve)
      (treatment p10 varnished)
      (available p11)
      (colour p11 red)
      (treatment p11 glazed)
      (available p12)
      (colour p12 natural)
      (wood p12 teak)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 red)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 black)
      (wood p14 teak)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 black)
      (wood p16 cherry)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 green)
      (treatment p17 varnished)
      (available p18)
      (colour p18 natural)
      (wood p18 mahogany)
      (treatment p18 glazed)
      (available p19)
      (colour p19 mauve)
      (wood p19 walnut)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 natural)
      (treatment p20 varnished)
      (available p21)
      (wood p21 mahogany)
      (surface-condition p21 smooth)
      (available p22)
      (wood p22 teak)
      (treatment p22 varnished)
      (available p23)
      (wood p23 cherry)
      (treatment p23 varnished)
    )
  )
  
)
