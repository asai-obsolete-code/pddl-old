; woodworking task with 116 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 293230

(define (problem wood-prob-sat-83)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black red blue white mauve green - acolour
    teak cherry walnut pine oak mahogany beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 blue)
    (wood p2 walnut)
    (surface-condition p2 rough)
    (treatment p2 varnished)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 red)
    (wood p5 oak)
    (surface-condition p5 smooth)
    (treatment p5 varnished)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 green)
    (wood p12 mahogany)
    (surface-condition p12 smooth)
    (treatment p12 varnished)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 red)
    (wood p20 pine)
    (surface-condition p20 verysmooth)
    (treatment p20 glazed)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 green)
    (wood p30 teak)
    (surface-condition p30 verysmooth)
    (treatment p30 glazed)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 blue)
    (wood p31 oak)
    (surface-condition p31 verysmooth)
    (treatment p31 glazed)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 white)
    (wood p36 cherry)
    (surface-condition p36 verysmooth)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (available p42)
    (colour p42 natural)
    (wood p42 oak)
    (surface-condition p42 smooth)
    (treatment p42 colourfragments)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (available p52)
    (colour p52 black)
    (wood p52 cherry)
    (surface-condition p52 verysmooth)
    (treatment p52 glazed)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 blue)
    (wood p57 teak)
    (surface-condition p57 smooth)
    (treatment p57 glazed)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 green)
    (wood p59 pine)
    (surface-condition p59 smooth)
    (treatment p59 glazed)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (available p63)
    (colour p63 white)
    (wood p63 mahogany)
    (surface-condition p63 rough)
    (treatment p63 glazed)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 natural)
    (wood p65 walnut)
    (surface-condition p65 smooth)
    (treatment p65 glazed)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 natural)
    (wood p66 mahogany)
    (surface-condition p66 rough)
    (treatment p66 colourfragments)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 red)
    (wood p71 cherry)
    (surface-condition p71 verysmooth)
    (treatment p71 glazed)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (available p76)
    (colour p76 red)
    (wood p76 beech)
    (surface-condition p76 verysmooth)
    (treatment p76 glazed)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (available p82)
    (colour p82 green)
    (wood p82 pine)
    (surface-condition p82 rough)
    (treatment p82 varnished)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 white)
    (wood p84 beech)
    (surface-condition p84 smooth)
    (treatment p84 varnished)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 black)
    (wood p87 walnut)
    (surface-condition p87 smooth)
    (treatment p87 varnished)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (available p94)
    (colour p94 blue)
    (wood p94 pine)
    (surface-condition p94 smooth)
    (treatment p94 colourfragments)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (available p109)
    (colour p109 green)
    (wood p109 pine)
    (surface-condition p109 rough)
    (treatment p109 colourfragments)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (available p111)
    (colour p111 red)
    (wood p111 beech)
    (surface-condition p111 verysmooth)
    (treatment p111 colourfragments)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (available p113)
    (colour p113 natural)
    (wood p113 walnut)
    (surface-condition p113 verysmooth)
    (treatment p113 glazed)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s2)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 oak)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s7)
    (wood b13 oak)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s8)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 pine)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 walnut)
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
    (boardsize b21 s2)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 teak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s5)
    (wood b23 teak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s8)
    (wood b24 teak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 teak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s6)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 beech)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s6)
    (wood b28 beech)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s10)
    (wood b29 beech)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s6)
    (wood b30 beech)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s7)
    (wood b31 beech)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 beech)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s7)
    (wood b33 beech)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s2)
    (wood b34 beech)
    (surface-condition b34 smooth)
    (available b34)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 mahogany)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 green)
      (wood p1 cherry)
      (treatment p1 glazed)
      (available p2)
      (colour p2 mauve)
      (wood p2 walnut)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 green)
      (treatment p3 glazed)
      (available p4)
      (colour p4 blue)
      (surface-condition p4 smooth)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 blue)
      (wood p6 cherry)
      (treatment p6 glazed)
      (available p7)
      (colour p7 natural)
      (surface-condition p7 verysmooth)
      (available p8)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 green)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 green)
      (wood p10 teak)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 blue)
      (wood p11 beech)
      (available p12)
      (wood p12 mahogany)
      (surface-condition p12 verysmooth)
      (available p13)
      (wood p13 pine)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 blue)
      (wood p14 cherry)
      (treatment p14 glazed)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 black)
      (wood p16 oak)
      (available p17)
      (colour p17 black)
      (treatment p17 glazed)
      (available p18)
      (colour p18 white)
      (wood p18 oak)
      (treatment p18 varnished)
      (available p19)
      (wood p19 mahogany)
      (surface-condition p19 verysmooth)
      (available p20)
      (wood p20 pine)
      (treatment p20 varnished)
      (available p21)
      (colour p21 white)
      (wood p21 cherry)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 red)
      (wood p22 walnut)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 mauve)
      (wood p23 beech)
      (treatment p23 varnished)
      (available p24)
      (colour p24 black)
      (wood p24 teak)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (wood p25 teak)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (wood p26 walnut)
      (available p27)
      (wood p27 mahogany)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 mauve)
      (wood p28 cherry)
      (available p29)
      (colour p29 white)
      (wood p29 cherry)
      (treatment p29 varnished)
      (available p30)
      (colour p30 blue)
      (wood p30 teak)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 green)
      (wood p31 oak)
      (surface-condition p31 verysmooth)
      (available p32)
      (wood p32 mahogany)
      (surface-condition p32 verysmooth)
      (available p33)
      (wood p33 pine)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 red)
      (wood p34 walnut)
      (available p35)
      (colour p35 blue)
      (surface-condition p35 smooth)
      (available p36)
      (wood p36 cherry)
      (treatment p36 varnished)
      (available p37)
      (colour p37 red)
      (wood p37 cherry)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (wood p38 oak)
      (treatment p38 glazed)
      (available p39)
      (wood p39 oak)
      (treatment p39 varnished)
      (available p40)
      (colour p40 natural)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 white)
      (treatment p41 varnished)
      (available p42)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (wood p43 walnut)
      (surface-condition p43 verysmooth)
      (available p44)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 mauve)
      (wood p45 oak)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 white)
      (wood p46 beech)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 mauve)
      (treatment p47 varnished)
      (available p48)
      (wood p48 mahogany)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 mauve)
      (wood p49 walnut)
      (surface-condition p49 verysmooth)
      (available p50)
      (wood p50 mahogany)
      (treatment p50 glazed)
      (available p51)
      (colour p51 white)
      (wood p51 cherry)
      (treatment p51 varnished)
      (available p52)
      (colour p52 natural)
      (treatment p52 glazed)
      (available p53)
      (colour p53 black)
      (treatment p53 varnished)
      (available p54)
      (wood p54 pine)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 green)
      (treatment p55 glazed)
      (available p56)
      (colour p56 natural)
      (wood p56 beech)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 green)
      (wood p57 teak)
      (available p58)
      (colour p58 blue)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 white)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 mauve)
      (wood p60 mahogany)
      (available p61)
      (colour p61 natural)
      (treatment p61 varnished)
      (available p62)
      (colour p62 black)
      (wood p62 cherry)
      (available p63)
      (wood p63 mahogany)
      (treatment p63 varnished)
      (available p64)
      (wood p64 beech)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 mauve)
      (wood p65 walnut)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (wood p66 mahogany)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 red)
      (wood p67 cherry)
      (surface-condition p67 smooth)
      (available p68)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 red)
      (wood p69 cherry)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 white)
      (wood p70 beech)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (surface-condition p71 verysmooth)
      (treatment p71 varnished)
      (available p72)
      (wood p72 beech)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 red)
      (surface-condition p73 verysmooth)
      (available p74)
      (colour p74 black)
      (treatment p74 glazed)
      (available p75)
      (surface-condition p75 smooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 natural)
      (wood p76 beech)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 mauve)
      (wood p77 oak)
      (surface-condition p77 verysmooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 green)
      (surface-condition p78 smooth)
      (available p79)
      (colour p79 green)
      (wood p79 pine)
      (available p80)
      (colour p80 blue)
      (treatment p80 varnished)
      (available p81)
      (colour p81 red)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 natural)
      (treatment p83 varnished)
      (available p84)
      (colour p84 mauve)
      (wood p84 beech)
      (available p85)
      (wood p85 cherry)
      (surface-condition p85 verysmooth)
      (available p86)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (wood p87 walnut)
      (treatment p87 glazed)
      (available p88)
      (wood p88 mahogany)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 red)
      (surface-condition p89 verysmooth)
      (available p90)
      (wood p90 beech)
      (treatment p90 varnished)
      (available p91)
      (wood p91 beech)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 white)
      (wood p92 oak)
      (available p93)
      (colour p93 red)
      (wood p93 beech)
      (surface-condition p93 smooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 mauve)
      (wood p94 pine)
      (available p95)
      (colour p95 mauve)
      (wood p95 beech)
      (surface-condition p95 verysmooth)
      (available p96)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (wood p98 cherry)
      (surface-condition p98 smooth)
      (available p99)
      (colour p99 blue)
      (treatment p99 varnished)
      (available p100)
      (wood p100 oak)
      (treatment p100 varnished)
      (available p101)
      (colour p101 blue)
      (surface-condition p101 verysmooth)
      (available p102)
      (wood p102 teak)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (wood p103 oak)
      (surface-condition p103 verysmooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 red)
      (treatment p104 glazed)
      (available p105)
      (colour p105 natural)
      (wood p105 beech)
      (surface-condition p105 verysmooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 blue)
      (treatment p106 varnished)
      (available p107)
      (colour p107 black)
      (surface-condition p107 verysmooth)
      (available p108)
      (colour p108 black)
      (wood p108 mahogany)
      (treatment p108 varnished)
      (available p109)
      (colour p109 mauve)
      (wood p109 pine)
      (available p110)
      (wood p110 oak)
      (treatment p110 varnished)
      (available p111)
      (surface-condition p111 verysmooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 black)
      (wood p112 teak)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 red)
      (treatment p113 varnished)
      (available p114)
      (colour p114 natural)
      (wood p114 walnut)
      (available p115)
      (colour p115 natural)
      (wood p115 beech)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
    )
  )
  
)
