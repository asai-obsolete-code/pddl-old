; woodworking task with 23 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 989424

(define (problem wood-prob-sat-18)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red mauve white green black blue - acolour
    mahogany oak pine cherry walnut teak - awood
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 red)
    (wood p6 cherry)
    (surface-condition p6 rough)
    (treatment p6 varnished)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 green)
    (wood p19 teak)
    (surface-condition p19 rough)
    (treatment p19 varnished)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 mauve)
    (wood p21 walnut)
    (surface-condition p21 rough)
    (treatment p21 colourfragments)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s2)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 oak)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 oak)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s6)
    (wood b5 pine)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s8)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s2)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 teak)
    (surface-condition b8 smooth)
    (available b8)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (treatment p0 glazed)
      (available p1)
      (colour p1 green)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 pine)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 natural)
      (wood p4 oak)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 natural)
      (wood p5 walnut)
      (treatment p5 varnished)
      (available p6)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (wood p8 teak)
      (treatment p8 glazed)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 mahogany)
      (treatment p10 glazed)
      (available p11)
      (colour p11 black)
      (wood p11 oak)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (wood p12 mahogany)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 natural)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 green)
      (wood p14 oak)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 white)
      (treatment p15 varnished)
      (available p16)
      (colour p16 red)
      (wood p16 teak)
      (treatment p16 varnished)
      (available p17)
      (wood p17 walnut)
      (treatment p17 varnished)
      (available p18)
      (wood p18 mahogany)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 natural)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 mauve)
      (wood p20 mahogany)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (wood p22 teak)
      (surface-condition p22 smooth)
    )
  )
  
)
