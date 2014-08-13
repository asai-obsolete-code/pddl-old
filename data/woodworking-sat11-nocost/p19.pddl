; woodworking task with 26 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 842313

(define (problem wood-prob-sat-19)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black mauve blue white green red - acolour
    pine beech oak teak mahogany cherry walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 mauve)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (available p6)
    (colour p6 mauve)
    (wood p6 mahogany)
    (surface-condition p6 rough)
    (treatment p6 glazed)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (available p8)
    (colour p8 red)
    (wood p8 teak)
    (surface-condition p8 smooth)
    (treatment p8 varnished)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 green)
    (wood p10 oak)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 red)
    (wood p19 beech)
    (surface-condition p19 rough)
    (treatment p19 varnished)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s2)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s3)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s3)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 walnut)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s7)
    (wood b8 teak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s2)
    (wood b9 teak)
    (surface-condition b9 smooth)
    (available b9)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 oak)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 natural)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 mauve)
      (wood p3 mahogany)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 green)
      (wood p4 mahogany)
      (available p5)
      (colour p5 natural)
      (wood p5 cherry)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 red)
      (wood p6 mahogany)
      (treatment p6 varnished)
      (available p7)
      (wood p7 oak)
      (surface-condition p7 smooth)
      (available p8)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 smooth)
      (available p11)
      (wood p11 mahogany)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 blue)
      (wood p12 pine)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 blue)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 black)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 cherry)
      (treatment p15 varnished)
      (available p16)
      (colour p16 red)
      (wood p16 oak)
      (surface-condition p16 verysmooth)
      (available p17)
      (wood p17 oak)
      (treatment p17 glazed)
      (available p18)
      (colour p18 natural)
      (wood p18 teak)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (wood p19 beech)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 green)
      (wood p20 walnut)
      (surface-condition p20 verysmooth)
      (available p21)
      (wood p21 oak)
      (treatment p21 varnished)
      (available p22)
      (wood p22 teak)
      (treatment p22 glazed)
      (available p23)
      (colour p23 black)
      (surface-condition p23 verysmooth)
      (available p24)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (surface-condition p25 smooth)
    )
  )
  
)
