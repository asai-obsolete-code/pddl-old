; woodworking task with 39 parts and 140% wood
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 56079

(define (problem wood-prob-sat-16)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    black red white mauve green blue - acolour
    pine oak walnut mahogany teak cherry beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 - board
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
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (empty highspeed-saw0)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (available p0)
    (colour p0 mauve)
    (wood p0 oak)
    (surface-condition p0 rough)
    (treatment p0 varnished)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 blue)
    (wood p1 cherry)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 white)
    (wood p4 oak)
    (surface-condition p4 rough)
    (treatment p4 glazed)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
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
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 red)
    (wood p19 cherry)
    (surface-condition p19 smooth)
    (treatment p19 varnished)
    (goalsize p19 large)
    
    
    
    
    (available p20)
    (colour p20 natural)
    (wood p20 mahogany)
    (surface-condition p20 rough)
    (treatment p20 colourfragments)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 green)
    (wood p21 oak)
    (surface-condition p21 rough)
    (treatment p21 varnished)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (available p32)
    (colour p32 blue)
    (wood p32 cherry)
    (surface-condition p32 verysmooth)
    (treatment p32 varnished)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 white)
    (wood p33 walnut)
    (surface-condition p33 smooth)
    (treatment p33 glazed)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 black)
    (wood p36 oak)
    (surface-condition p36 verysmooth)
    (treatment p36 colourfragments)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 mahogany)
    (surface-condition p37 smooth)
    (treatment p37 varnished)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s2)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s6)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 teak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s3)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 beech)
    (surface-condition b11 rough)
    (available b11)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 oak)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (wood p1 cherry)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 blue)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 black)
      (treatment p3 varnished)
      (available p4)
      (colour p4 blue)
      (surface-condition p4 verysmooth)
      (available p5)
      (wood p5 oak)
      (treatment p5 glazed)
      (available p6)
      (colour p6 black)
      (wood p6 teak)
      (available p7)
      (colour p7 white)
      (treatment p7 varnished)
      (available p8)
      (colour p8 white)
      (wood p8 cherry)
      (available p9)
      (colour p9 red)
      (wood p9 teak)
      (treatment p9 glazed)
      (available p10)
      (colour p10 natural)
      (wood p10 pine)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 mauve)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 white)
      (wood p12 mahogany)
      (available p13)
      (colour p13 black)
      (wood p13 oak)
      (available p14)
      (colour p14 red)
      (treatment p14 glazed)
      (available p15)
      (colour p15 blue)
      (wood p15 mahogany)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 black)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 mauve)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 blue)
      (wood p18 pine)
      (available p19)
      (colour p19 blue)
      (wood p19 cherry)
      (available p20)
      (colour p20 red)
      (surface-condition p20 smooth)
      (available p21)
      (wood p21 oak)
      (surface-condition p21 smooth)
      (available p22)
      (wood p22 pine)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 green)
      (wood p25 teak)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 blue)
      (treatment p26 varnished)
      (available p27)
      (colour p27 white)
      (wood p27 oak)
      (available p28)
      (colour p28 white)
      (wood p28 beech)
      (treatment p28 glazed)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 red)
      (wood p30 beech)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 natural)
      (treatment p31 glazed)
      (available p32)
      (wood p32 cherry)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 green)
      (treatment p33 glazed)
      (available p34)
      (wood p34 cherry)
      (surface-condition p34 smooth)
      (available p35)
      (wood p35 mahogany)
      (surface-condition p35 smooth)
      (available p36)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 red)
      (wood p37 mahogany)
      (treatment p37 glazed)
      (available p38)
      (colour p38 red)
      (treatment p38 varnished)
    )
  )
  
)
