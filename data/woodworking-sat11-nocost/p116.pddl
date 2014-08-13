; woodworking task with 35 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 350966

(define (problem wood-prob-sat-116)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black white mauve red green blue - acolour
    oak teak pine cherry mahogany walnut beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 natural)
    (wood p10 mahogany)
    (surface-condition p10 rough)
    (treatment p10 colourfragments)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 white)
    (wood p12 cherry)
    (surface-condition p12 rough)
    (treatment p12 glazed)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (available p16)
    (colour p16 red)
    (wood p16 beech)
    (surface-condition p16 rough)
    (treatment p16 colourfragments)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (available p27)
    (colour p27 white)
    (wood p27 teak)
    (surface-condition p27 smooth)
    (treatment p27 varnished)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s3)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s4)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s2)
    (wood b5 oak)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s5)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 teak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 beech)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s5)
    (wood b12 beech)
    (surface-condition b12 rough)
    (available b12)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (treatment p0 varnished)
      (available p1)
      (wood p1 teak)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 mauve)
      (wood p3 cherry)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 mauve)
      (wood p4 cherry)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 mauve)
      (wood p7 cherry)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 red)
      (wood p8 beech)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 red)
      (wood p9 beech)
      (available p10)
      (colour p10 red)
      (wood p10 mahogany)
      (available p11)
      (colour p11 red)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 red)
      (wood p12 cherry)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 green)
      (wood p13 cherry)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (treatment p15 varnished)
      (available p16)
      (colour p16 mauve)
      (treatment p16 glazed)
      (available p17)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 white)
      (treatment p18 varnished)
      (available p19)
      (colour p19 red)
      (wood p19 mahogany)
      (treatment p19 varnished)
      (available p20)
      (colour p20 red)
      (wood p20 walnut)
      (available p21)
      (colour p21 white)
      (wood p21 beech)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 red)
      (wood p22 mahogany)
      (available p23)
      (colour p23 green)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 mauve)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 red)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 black)
      (surface-condition p26 smooth)
      (available p27)
      (wood p27 teak)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 mauve)
      (treatment p28 varnished)
      (available p29)
      (colour p29 blue)
      (wood p29 pine)
      (surface-condition p29 smooth)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (wood p31 pine)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 green)
      (wood p32 mahogany)
      (treatment p32 glazed)
      (available p33)
      (wood p33 cherry)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (wood p34 teak)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
    )
  )
  
)
