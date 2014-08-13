; woodworking task with 38 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 696220

(define (problem wood-prob-sat-57)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black blue red mauve white green - acolour
    teak mahogany cherry pine walnut beech oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 - aboardsize
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
    (boardsize-successor s10 s11)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 mauve)
    (wood p7 mahogany)
    (surface-condition p7 verysmooth)
    (treatment p7 glazed)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 blue)
    (wood p27 cherry)
    (surface-condition p27 smooth)
    (treatment p27 glazed)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 green)
    (wood p28 oak)
    (surface-condition p28 rough)
    (treatment p28 varnished)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 natural)
    (wood p37 mahogany)
    (surface-condition p37 rough)
    (treatment p37 colourfragments)
    (goalsize p37 large)
    
    
    
    
    (boardsize b0 s11)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 oak)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s10)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s3)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s2)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 teak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s4)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 beech)
    (surface-condition b13 smooth)
    (available b13)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (treatment p0 glazed)
      (available p1)
      (wood p1 oak)
      (treatment p1 glazed)
      (available p2)
      (wood p2 oak)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 white)
      (wood p3 cherry)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (wood p4 mahogany)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (treatment p5 glazed)
      (available p6)
      (wood p6 walnut)
      (surface-condition p6 smooth)
      (available p7)
      (wood p7 mahogany)
      (surface-condition p7 smooth)
      (available p8)
      (wood p8 pine)
      (treatment p8 varnished)
      (available p9)
      (colour p9 white)
      (wood p9 pine)
      (available p10)
      (colour p10 mauve)
      (wood p10 mahogany)
      (available p11)
      (colour p11 red)
      (surface-condition p11 smooth)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 mauve)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (treatment p15 varnished)
      (available p16)
      (wood p16 teak)
      (treatment p16 varnished)
      (available p17)
      (colour p17 black)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 oak)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 green)
      (treatment p19 varnished)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (wood p21 beech)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (available p23)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 natural)
      (wood p24 oak)
      (available p25)
      (colour p25 natural)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 blue)
      (wood p26 teak)
      (available p27)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 white)
      (wood p28 oak)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 mauve)
      (surface-condition p29 smooth)
      (available p30)
      (wood p30 pine)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 natural)
      (wood p32 beech)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 red)
      (wood p33 cherry)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (wood p34 cherry)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 white)
      (treatment p35 glazed)
      (available p36)
      (colour p36 green)
      (treatment p36 varnished)
      (available p37)
      (wood p37 mahogany)
      (surface-condition p37 verysmooth)
    )
  )
  
)
