; woodworking task with 26 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 177108

(define (problem wood-prob-sat-113)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red blue mauve green black white - acolour
    pine teak walnut oak beech mahogany cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 - part
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 red)
    (wood p1 beech)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 red)
    (wood p2 walnut)
    (surface-condition p2 verysmooth)
    (treatment p2 colourfragments)
    (goalsize p2 medium)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 oak)
    (surface-condition p3 smooth)
    (treatment p3 colourfragments)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 mauve)
    (wood p8 beech)
    (surface-condition p8 smooth)
    (treatment p8 varnished)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 green)
    (wood p9 beech)
    (surface-condition p9 rough)
    (treatment p9 varnished)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 mauve)
    (wood p12 beech)
    (surface-condition p12 rough)
    (treatment p12 colourfragments)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 red)
    (wood p14 cherry)
    (surface-condition p14 smooth)
    (treatment p14 varnished)
    (goalsize p14 large)
    
    
    
    
    (available p15)
    (colour p15 blue)
    (wood p15 oak)
    (surface-condition p15 rough)
    (treatment p15 glazed)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 mauve)
    (wood p17 beech)
    (surface-condition p17 verysmooth)
    (treatment p17 varnished)
    (goalsize p17 small)
    
    
    
    
    (available p18)
    (colour p18 red)
    (wood p18 mahogany)
    (surface-condition p18 smooth)
    (treatment p18 glazed)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (boardsize b0 s2)
    (wood b0 beech)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 oak)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s10)
    (wood b3 pine)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 walnut)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 walnut)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s4)
    (wood b6 walnut)
    (surface-condition b6 smooth)
    (available b6)
  )
  (:goal
    (and
      (available p0)
      (wood p0 walnut)
      (treatment p0 varnished)
      (available p1)
      (colour p1 green)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (wood p2 walnut)
      (treatment p2 glazed)
      (available p3)
      (colour p3 mauve)
      (wood p3 oak)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 green)
      (surface-condition p4 verysmooth)
      (available p5)
      (wood p5 walnut)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 black)
      (wood p6 walnut)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 green)
      (wood p7 beech)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 blue)
      (wood p8 beech)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 white)
      (wood p9 beech)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 green)
      (treatment p11 varnished)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 mauve)
      (wood p13 walnut)
      (available p14)
      (colour p14 green)
      (wood p14 cherry)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 natural)
      (wood p15 oak)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 white)
      (wood p16 walnut)
      (surface-condition p16 verysmooth)
      (available p17)
      (wood p17 beech)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 white)
      (wood p18 mahogany)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 black)
      (wood p19 oak)
      (surface-condition p19 verysmooth)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 smooth)
      (available p21)
      (wood p21 walnut)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (surface-condition p22 verysmooth)
      (available p23)
      (wood p23 pine)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 mauve)
      (wood p24 oak)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 blue)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
    )
  )
  
)
