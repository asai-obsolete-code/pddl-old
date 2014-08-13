; woodworking task with 65 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 55900

(define (problem wood-prob-sat-126)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green red blue mauve white black - acolour
    beech walnut oak mahogany cherry teak pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 - board
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
    (has-colour glazer0 blue)
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 green)
    (wood p2 teak)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 green)
    (wood p4 walnut)
    (surface-condition p4 rough)
    (treatment p4 colourfragments)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 mauve)
    (wood p7 walnut)
    (surface-condition p7 rough)
    (treatment p7 varnished)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 green)
    (wood p15 teak)
    (surface-condition p15 rough)
    (treatment p15 glazed)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 green)
    (wood p17 oak)
    (surface-condition p17 smooth)
    (treatment p17 colourfragments)
    (goalsize p17 medium)
    
    
    
    
    (available p18)
    (colour p18 natural)
    (wood p18 walnut)
    (surface-condition p18 verysmooth)
    (treatment p18 colourfragments)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 green)
    (wood p21 pine)
    (surface-condition p21 verysmooth)
    (treatment p21 colourfragments)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 red)
    (wood p28 walnut)
    (surface-condition p28 verysmooth)
    (treatment p28 varnished)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 blue)
    (wood p29 mahogany)
    (surface-condition p29 rough)
    (treatment p29 colourfragments)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 black)
    (wood p36 beech)
    (surface-condition p36 rough)
    (treatment p36 colourfragments)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 blue)
    (wood p37 beech)
    (surface-condition p37 rough)
    (treatment p37 glazed)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 mauve)
    (wood p48 pine)
    (surface-condition p48 smooth)
    (treatment p48 varnished)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (available p52)
    (colour p52 green)
    (wood p52 oak)
    (surface-condition p52 smooth)
    (treatment p52 glazed)
    (goalsize p52 large)
    
    
    
    
    (available p53)
    (colour p53 green)
    (wood p53 walnut)
    (surface-condition p53 verysmooth)
    (treatment p53 colourfragments)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (available p55)
    (colour p55 mauve)
    (wood p55 cherry)
    (surface-condition p55 rough)
    (treatment p55 colourfragments)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 white)
    (wood p59 cherry)
    (surface-condition p59 rough)
    (treatment p59 glazed)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s11)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 pine)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s10)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 walnut)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s7)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 teak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 beech)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s10)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s5)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 oak)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 red)
      (surface-condition p1 smooth)
      (available p2)
      (wood p2 teak)
      (treatment p2 varnished)
      (available p3)
      (colour p3 blue)
      (wood p3 teak)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (wood p4 walnut)
      (treatment p4 varnished)
      (available p5)
      (colour p5 white)
      (wood p5 walnut)
      (treatment p5 varnished)
      (available p6)
      (colour p6 black)
      (wood p6 walnut)
      (available p7)
      (colour p7 white)
      (wood p7 walnut)
      (available p8)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 mauve)
      (wood p9 walnut)
      (available p10)
      (wood p10 cherry)
      (treatment p10 glazed)
      (available p11)
      (colour p11 green)
      (wood p11 beech)
      (available p12)
      (colour p12 mauve)
      (wood p12 walnut)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 green)
      (wood p13 beech)
      (available p14)
      (colour p14 blue)
      (wood p14 teak)
      (treatment p14 varnished)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 mauve)
      (wood p16 cherry)
      (treatment p16 varnished)
      (available p17)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (wood p18 walnut)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 mauve)
      (wood p19 walnut)
      (treatment p19 glazed)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 smooth)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 natural)
      (wood p24 oak)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 black)
      (wood p26 walnut)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 white)
      (wood p27 cherry)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 white)
      (wood p28 walnut)
      (available p29)
      (colour p29 green)
      (treatment p29 varnished)
      (available p30)
      (wood p30 teak)
      (treatment p30 varnished)
      (available p31)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (wood p32 teak)
      (treatment p32 glazed)
      (available p33)
      (colour p33 blue)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 red)
      (wood p34 beech)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 green)
      (treatment p35 varnished)
      (available p36)
      (colour p36 blue)
      (wood p36 beech)
      (treatment p36 glazed)
      (available p37)
      (colour p37 white)
      (wood p37 beech)
      (available p38)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 blue)
      (wood p39 cherry)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 green)
      (wood p40 pine)
      (surface-condition p40 verysmooth)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (wood p42 walnut)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (wood p43 oak)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (wood p44 oak)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 black)
      (wood p45 teak)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 white)
      (wood p46 oak)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 natural)
      (wood p48 pine)
      (surface-condition p48 verysmooth)
      (available p49)
      (wood p49 cherry)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 green)
      (wood p50 pine)
      (available p51)
      (colour p51 mauve)
      (treatment p51 glazed)
      (available p52)
      (wood p52 oak)
      (treatment p52 varnished)
      (available p53)
      (colour p53 natural)
      (wood p53 walnut)
      (available p54)
      (colour p54 blue)
      (treatment p54 glazed)
      (available p55)
      (wood p55 cherry)
      (surface-condition p55 verysmooth)
      (available p56)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 white)
      (wood p57 beech)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 mauve)
      (wood p59 cherry)
      (surface-condition p59 smooth)
      (treatment p59 glazed)
      (available p60)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 teak)
      (treatment p61 glazed)
      (available p62)
      (colour p62 white)
      (surface-condition p62 smooth)
      (available p63)
      (wood p63 pine)
      (surface-condition p63 smooth)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
    )
  )
  
)
