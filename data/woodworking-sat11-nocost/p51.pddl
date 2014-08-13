; woodworking task with 20 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 684133

(define (problem wood-prob-sat-51)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve black white red green blue - acolour
    oak teak walnut beech cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 - part
    b0 b1 b2 b3 b4 b5 b6 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 green)
    (wood p3 oak)
    (surface-condition p3 rough)
    (treatment p3 varnished)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 cherry)
    (surface-condition p7 verysmooth)
    (treatment p7 colourfragments)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 natural)
    (wood p8 beech)
    (surface-condition p8 rough)
    (treatment p8 colourfragments)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (available p13)
    (colour p13 mauve)
    (wood p13 oak)
    (surface-condition p13 verysmooth)
    (treatment p13 varnished)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 black)
    (wood p17 oak)
    (surface-condition p17 rough)
    (treatment p17 glazed)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (boardsize b0 s3)
    (wood b0 beech)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 walnut)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s10)
    (wood b4 walnut)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 teak)
    (surface-condition b6 smooth)
    (available b6)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 cherry)
      (available p1)
      (colour p1 blue)
      (treatment p1 varnished)
      (available p2)
      (colour p2 white)
      (wood p2 cherry)
      (available p3)
      (colour p3 natural)
      (treatment p3 glazed)
      (available p4)
      (colour p4 green)
      (wood p4 beech)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 blue)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (wood p6 walnut)
      (treatment p6 glazed)
      (available p7)
      (wood p7 cherry)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 blue)
      (treatment p8 glazed)
      (available p9)
      (colour p9 red)
      (treatment p9 glazed)
      (available p10)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 blue)
      (wood p11 teak)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 white)
      (treatment p12 glazed)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 white)
      (wood p14 oak)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 black)
      (treatment p15 glazed)
      (available p16)
      (colour p16 mauve)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 red)
      (wood p17 oak)
      (available p18)
      (colour p18 mauve)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 natural)
      (treatment p19 glazed)
    )
  )
  
)
