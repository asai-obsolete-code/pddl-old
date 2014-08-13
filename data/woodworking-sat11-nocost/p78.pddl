; woodworking task with 101 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 839019

(define (problem wood-prob-sat-78)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve black white red blue green - acolour
    mahogany cherry teak beech walnut pine oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 mauve)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 black)
    (wood p9 oak)
    (surface-condition p9 smooth)
    (treatment p9 varnished)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 white)
    (wood p18 teak)
    (surface-condition p18 smooth)
    (treatment p18 glazed)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (available p23)
    (colour p23 white)
    (wood p23 beech)
    (surface-condition p23 rough)
    (treatment p23 glazed)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 white)
    (wood p33 oak)
    (surface-condition p33 rough)
    (treatment p33 varnished)
    (goalsize p33 medium)
    
    
    
    
    (available p34)
    (colour p34 natural)
    (wood p34 walnut)
    (surface-condition p34 verysmooth)
    (treatment p34 varnished)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 blue)
    (wood p35 mahogany)
    (surface-condition p35 verysmooth)
    (treatment p35 glazed)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 green)
    (wood p43 cherry)
    (surface-condition p43 verysmooth)
    (treatment p43 colourfragments)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 red)
    (wood p47 oak)
    (surface-condition p47 smooth)
    (treatment p47 glazed)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 black)
    (wood p52 oak)
    (surface-condition p52 smooth)
    (treatment p52 glazed)
    (goalsize p52 small)
    
    
    
    
    (available p53)
    (colour p53 red)
    (wood p53 oak)
    (surface-condition p53 rough)
    (treatment p53 varnished)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (available p60)
    (colour p60 mauve)
    (wood p60 beech)
    (surface-condition p60 rough)
    (treatment p60 glazed)
    (goalsize p60 medium)
    
    
    
    
    (available p61)
    (colour p61 black)
    (wood p61 pine)
    (surface-condition p61 verysmooth)
    (treatment p61 colourfragments)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 red)
    (wood p65 oak)
    (surface-condition p65 verysmooth)
    (treatment p65 colourfragments)
    (goalsize p65 small)
    
    
    
    
    (available p66)
    (colour p66 mauve)
    (wood p66 oak)
    (surface-condition p66 rough)
    (treatment p66 colourfragments)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 red)
    (wood p71 pine)
    (surface-condition p71 verysmooth)
    (treatment p71 glazed)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (available p73)
    (colour p73 mauve)
    (wood p73 walnut)
    (surface-condition p73 smooth)
    (treatment p73 colourfragments)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (available p79)
    (colour p79 red)
    (wood p79 oak)
    (surface-condition p79 smooth)
    (treatment p79 colourfragments)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (available p82)
    (colour p82 blue)
    (wood p82 teak)
    (surface-condition p82 rough)
    (treatment p82 colourfragments)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (available p89)
    (colour p89 white)
    (wood p89 beech)
    (surface-condition p89 smooth)
    (treatment p89 glazed)
    (goalsize p89 small)
    
    
    
    
    (available p90)
    (colour p90 mauve)
    (wood p90 pine)
    (surface-condition p90 verysmooth)
    (treatment p90 varnished)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s3)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s1)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s11)
    (wood b11 oak)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s11)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s4)
    (wood b14 oak)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s10)
    (wood b15 pine)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s5)
    (wood b16 pine)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s6)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 walnut)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 walnut)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 teak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s10)
    (wood b25 teak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s6)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 teak)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s3)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 beech)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s5)
    (wood b30 beech)
    (surface-condition b30 smooth)
    (available b30)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 white)
      (wood p1 walnut)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 black)
      (treatment p2 glazed)
      (available p3)
      (colour p3 black)
      (wood p3 cherry)
      (available p4)
      (wood p4 teak)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 red)
      (wood p5 mahogany)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 natural)
      (wood p6 teak)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 mauve)
      (wood p8 pine)
      (available p9)
      (colour p9 mauve)
      (wood p9 oak)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 green)
      (treatment p10 varnished)
      (available p11)
      (colour p11 natural)
      (wood p11 oak)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 blue)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 natural)
      (wood p13 mahogany)
      (available p14)
      (wood p14 walnut)
      (treatment p14 glazed)
      (available p15)
      (wood p15 mahogany)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 red)
      (wood p16 teak)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 mauve)
      (wood p17 cherry)
      (surface-condition p17 verysmooth)
      (available p18)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (wood p19 mahogany)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 green)
      (surface-condition p20 smooth)
      (available p21)
      (wood p21 pine)
      (surface-condition p21 verysmooth)
      (available p22)
      (wood p22 mahogany)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 mauve)
      (wood p23 beech)
      (treatment p23 glazed)
      (available p24)
      (colour p24 white)
      (wood p24 mahogany)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (wood p26 pine)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 natural)
      (treatment p27 glazed)
      (available p28)
      (colour p28 green)
      (wood p28 mahogany)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (wood p29 walnut)
      (treatment p29 glazed)
      (available p30)
      (colour p30 red)
      (wood p30 oak)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 mauve)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 red)
      (wood p33 oak)
      (surface-condition p33 smooth)
      (available p34)
      (wood p34 walnut)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 green)
      (wood p35 mahogany)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 black)
      (wood p36 pine)
      (available p37)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 mauve)
      (wood p38 mahogany)
      (available p39)
      (colour p39 white)
      (wood p39 mahogany)
      (surface-condition p39 smooth)
      (available p40)
      (wood p40 oak)
      (treatment p40 varnished)
      (available p41)
      (colour p41 mauve)
      (wood p41 teak)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 red)
      (wood p42 walnut)
      (treatment p42 varnished)
      (available p43)
      (colour p43 blue)
      (wood p43 cherry)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 natural)
      (wood p44 walnut)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 red)
      (wood p46 mahogany)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 mauve)
      (treatment p47 glazed)
      (available p48)
      (colour p48 red)
      (wood p48 mahogany)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (wood p49 pine)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 white)
      (wood p50 walnut)
      (surface-condition p50 verysmooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 white)
      (wood p51 beech)
      (available p52)
      (colour p52 white)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 white)
      (wood p53 oak)
      (available p54)
      (wood p54 teak)
      (treatment p54 glazed)
      (available p55)
      (colour p55 green)
      (wood p55 mahogany)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 green)
      (wood p56 cherry)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 natural)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 oak)
      (treatment p58 varnished)
      (available p59)
      (wood p59 pine)
      (treatment p59 glazed)
      (available p60)
      (colour p60 green)
      (wood p60 beech)
      (available p61)
      (colour p61 natural)
      (surface-condition p61 smooth)
      (available p62)
      (wood p62 oak)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 mauve)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 white)
      (wood p64 cherry)
      (treatment p64 varnished)
      (available p65)
      (colour p65 white)
      (wood p65 oak)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 black)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 blue)
      (treatment p67 varnished)
      (available p68)
      (colour p68 mauve)
      (wood p68 mahogany)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 mauve)
      (surface-condition p69 verysmooth)
      (available p70)
      (wood p70 cherry)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 black)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 red)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 natural)
      (wood p73 walnut)
      (available p74)
      (colour p74 mauve)
      (treatment p74 glazed)
      (available p75)
      (colour p75 mauve)
      (surface-condition p75 verysmooth)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 red)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 white)
      (wood p78 pine)
      (available p79)
      (wood p79 oak)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 black)
      (treatment p80 varnished)
      (available p81)
      (colour p81 green)
      (wood p81 walnut)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (wood p82 teak)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (wood p83 teak)
      (treatment p83 glazed)
      (available p84)
      (colour p84 red)
      (wood p84 walnut)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 green)
      (wood p85 teak)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 green)
      (wood p87 teak)
      (available p88)
      (colour p88 black)
      (wood p88 walnut)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 natural)
      (wood p89 beech)
      (surface-condition p89 smooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 black)
      (treatment p90 varnished)
      (available p91)
      (wood p91 teak)
      (treatment p91 glazed)
      (available p92)
      (colour p92 red)
      (surface-condition p92 verysmooth)
      (available p93)
      (colour p93 natural)
      (wood p93 walnut)
      (available p94)
      (colour p94 green)
      (treatment p94 varnished)
      (available p95)
      (wood p95 oak)
      (treatment p95 glazed)
      (available p96)
      (colour p96 red)
      (wood p96 teak)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 green)
      (wood p97 teak)
      (surface-condition p97 verysmooth)
      (available p98)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (wood p99 pine)
      (surface-condition p99 verysmooth)
      (treatment p99 glazed)
      (available p100)
      (colour p100 red)
      (treatment p100 varnished)
    )
  )
  
)
