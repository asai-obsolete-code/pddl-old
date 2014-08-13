; woodworking task with 20 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 477863

(define (problem wood-prob-sat-17)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black green mauve blue red white - acolour
    oak beech cherry walnut teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 - part
    b0 b1 b2 b3 b4 b5 b6 b7 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 blue)
    (wood p5 cherry)
    (surface-condition p5 rough)
    (treatment p5 colourfragments)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 beech)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s3)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 oak)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s2)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 teak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 walnut)
    (surface-condition b7 smooth)
    (available b7)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (surface-condition p0 smooth)
      (available p1)
      (wood p1 walnut)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 natural)
      (wood p2 beech)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 natural)
      (wood p3 cherry)
      (treatment p3 varnished)
      (available p4)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (wood p5 cherry)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 white)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 black)
      (surface-condition p7 verysmooth)
      (available p8)
      (wood p8 beech)
      (treatment p8 glazed)
      (available p9)
      (wood p9 walnut)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 red)
      (wood p10 cherry)
      (available p11)
      (colour p11 green)
      (wood p11 cherry)
      (treatment p11 varnished)
      (available p12)
      (colour p12 mauve)
      (wood p12 walnut)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 black)
      (treatment p13 varnished)
      (available p14)
      (wood p14 walnut)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 mauve)
      (treatment p15 glazed)
      (available p16)
      (wood p16 beech)
      (treatment p16 varnished)
      (available p17)
      (wood p17 oak)
      (surface-condition p17 smooth)
      (available p18)
      (wood p18 teak)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 natural)
      (treatment p19 glazed)
    )
  )
  
)
