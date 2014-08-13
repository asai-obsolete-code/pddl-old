; woodworking task with 32 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 779228

(define (problem wood-prob-sat-115)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white red mauve blue black green - acolour
    beech mahogany teak oak cherry walnut pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 white)
    (wood p8 beech)
    (surface-condition p8 smooth)
    (treatment p8 glazed)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 red)
    (wood p11 teak)
    (surface-condition p11 smooth)
    (treatment p11 colourfragments)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (available p28)
    (colour p28 red)
    (wood p28 pine)
    (surface-condition p28 rough)
    (treatment p28 colourfragments)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 natural)
    (wood p30 oak)
    (surface-condition p30 rough)
    (treatment p30 colourfragments)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s1)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s9)
    (wood b3 oak)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 teak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 beech)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 beech)
    (surface-condition b11 smooth)
    (available b11)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 oak)
      (available p1)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 green)
      (surface-condition p2 verysmooth)
      (available p3)
      (wood p3 mahogany)
      (treatment p3 varnished)
      (available p4)
      (colour p4 mauve)
      (wood p4 teak)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 green)
      (wood p5 pine)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (wood p6 pine)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 white)
      (wood p7 mahogany)
      (treatment p7 glazed)
      (available p8)
      (colour p8 blue)
      (wood p8 beech)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (wood p9 walnut)
      (treatment p9 glazed)
      (available p10)
      (wood p10 cherry)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 black)
      (wood p12 cherry)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 cherry)
      (treatment p13 glazed)
      (available p14)
      (colour p14 black)
      (wood p14 walnut)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 pine)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 green)
      (treatment p16 glazed)
      (available p17)
      (colour p17 mauve)
      (wood p17 oak)
      (available p18)
      (colour p18 green)
      (wood p18 beech)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 black)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (wood p21 oak)
      (available p22)
      (wood p22 walnut)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 white)
      (treatment p23 varnished)
      (available p24)
      (colour p24 blue)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 red)
      (wood p25 beech)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (wood p26 pine)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 red)
      (wood p27 beech)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 natural)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 green)
      (surface-condition p29 verysmooth)
      (available p30)
      (wood p30 oak)
      (treatment p30 varnished)
      (available p31)
      (colour p31 mauve)
      (wood p31 walnut)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
    )
  )
  
)
