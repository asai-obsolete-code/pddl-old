; woodworking task with 23 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 333125

(define (problem wood-prob-sat-112)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black blue white mauve red green - acolour
    walnut oak mahogany beech cherry pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 - board
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
    (has-colour glazer1 blue)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (available p13)
    (colour p13 white)
    (wood p13 beech)
    (surface-condition p13 smooth)
    (treatment p13 glazed)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (available p22)
    (colour p22 mauve)
    (wood p22 oak)
    (surface-condition p22 rough)
    (treatment p22 glazed)
    (goalsize p22 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s4)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s5)
    (wood b3 oak)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 pine)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s4)
    (wood b5 pine)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s7)
    (wood b6 walnut)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s6)
    (wood b7 beech)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s1)
    (wood b8 beech)
    (surface-condition b8 rough)
    (available b8)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (treatment p0 varnished)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 red)
      (wood p3 beech)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 mahogany)
      (treatment p4 varnished)
      (available p5)
      (colour p5 green)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (wood p6 walnut)
      (treatment p6 glazed)
      (available p7)
      (colour p7 blue)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 black)
      (wood p8 pine)
      (available p9)
      (wood p9 pine)
      (treatment p9 glazed)
      (available p10)
      (wood p10 cherry)
      (treatment p10 glazed)
      (available p11)
      (colour p11 blue)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 black)
      (treatment p12 glazed)
      (available p13)
      (colour p13 red)
      (wood p13 beech)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 black)
      (wood p14 cherry)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 red)
      (wood p15 mahogany)
      (available p16)
      (wood p16 pine)
      (treatment p16 glazed)
      (available p17)
      (colour p17 white)
      (treatment p17 glazed)
      (available p18)
      (colour p18 red)
      (wood p18 mahogany)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 black)
      (wood p19 oak)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 red)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (wood p21 walnut)
      (surface-condition p21 smooth)
      (available p22)
      (wood p22 oak)
      (surface-condition p22 verysmooth)
    )
  )
  
)
