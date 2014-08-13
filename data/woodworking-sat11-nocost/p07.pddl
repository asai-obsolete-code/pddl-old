; woodworking task with 24 parts and 100% wood
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 660554

(define (problem wood-prob-sat-7)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    white blue green mauve red black - acolour
    mahogany beech cherry pine oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (empty highspeed-saw0)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 white)
    (wood p9 cherry)
    (surface-condition p9 smooth)
    (treatment p9 colourfragments)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (available p20)
    (colour p20 blue)
    (wood p20 pine)
    (surface-condition p20 verysmooth)
    (treatment p20 glazed)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s0)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s9)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s0)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s1)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 teak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s4)
    (wood b9 beech)
    (surface-condition b9 rough)
    (available b9)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 oak)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 oak)
      (treatment p1 varnished)
      (available p2)
      (colour p2 red)
      (treatment p2 varnished)
      (available p3)
      (wood p3 oak)
      (treatment p3 varnished)
      (available p4)
      (colour p4 green)
      (wood p4 mahogany)
      (available p5)
      (wood p5 mahogany)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 blue)
      (wood p6 cherry)
      (available p7)
      (colour p7 white)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 green)
      (wood p8 teak)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 mauve)
      (wood p9 cherry)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 blue)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 natural)
      (treatment p11 varnished)
      (available p12)
      (wood p12 cherry)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 white)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 mauve)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 black)
      (wood p17 teak)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 mauve)
      (wood p18 cherry)
      (treatment p18 glazed)
      (available p19)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 red)
      (wood p20 pine)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 natural)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 natural)
      (wood p22 mahogany)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 green)
      (wood p23 cherry)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
    )
  )
  
)
