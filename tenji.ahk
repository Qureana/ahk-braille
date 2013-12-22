#MaxThreads 1
#InstallKeybdHook
#UseHook
sleep_time := 80

c_default := 0
c_dakuon  := 1
c_handakuon := 2
c_youon := 3
c_dakuon_youon := 4
c_handakuon_youon := 5

status := %c_default%

#r::Reload
f::
d::
s::
j::
k::
l::
  IfWinActive,ahk_class Vim
  { 
    Send %A_ThisHotkey%
    Return
  }
  sleep, %sleep_time%
  key_value = 0
  if GetKeyState("f", "P")
  	 key_value += 1
  if GetKeyState("d", "P")
  	 key_value += 2
  if GetKeyState("s", "P")
  	 key_value += 4
  if GetKeyState("j", "P")
  	 key_value += 8
  if GetKeyState("k", "P")
  	 key_value += 16
  if GetKeyState("l", "P")
  	 key_value += 32

  if(status == c_dakuon){
;    MsgBox, "ë˜âπ"
    if(key_value == 33)
    	Send, ga
    if(key_value == 35)
    	Send, gi
    if(key_value == 41)
    	Send, gu
    if(key_value == 43)
    	Send, ge
    if(key_value == 42)
    	Send, go
    if(key_value == 49)
    	Send, za
    if(key_value == 51)
    	Send, zi
    if(key_value == 57)
    	Send, zu
    if(key_value == 59)
    	Send, ze
    if(key_value == 58)
    	Send, zo
    if(key_value == 21)
    	Send, da
    if(key_value == 23)
    	Send, di
    if(key_value == 29)
    	Send, du
    if(key_value == 31)
    	Send, de
    if(key_value == 30)
    	Send, do
    if(key_value == 37)
    	Send, ba
    if(key_value == 39)
    	Send, bi
    if(key_value == 45)
    	Send, bu
    if(key_value == 47)
    	Send, be
    if(key_value == 46)
    	Send, bo
    status = %c_default%
  }
  else if(status == c_handakuon){
;    MsgBox, "îºë˜âπ"
    if(key_value == 37)
    	Send, pa
    if(key_value == 39)
    	Send, pi
    if(key_value == 45)
    	Send, pu
    if(key_value == 47)
    	Send, pe
    if(key_value == 46)
    	Send, po
    status = %c_default%
  }
  else if(status == c_youon){
;    MsgBox, "ùXâπ"
    if(key_value == 33)
    	Send, kya
    if(key_value == 41)
    	Send, kyu
    if(key_value == 42)
    	Send, kyo
    if(key_value == 49)
    	Send, sya
    if(key_value == 57)
    	Send, syu
    if(key_value == 58)
    	Send, syo
    if(key_value == 21)
    	Send, tya
    if(key_value == 29)
    	Send, tyu
    if(key_value == 30)
    	Send, tyo
    if(key_value == 5)
    	Send, nya
    if(key_value == 13)
    	Send, nyu
    if(key_value == 14)
    	Send, nyo
    if(key_value == 37)
    	Send, hya
    if(key_value == 45)
    	Send, hyu
    if(key_value == 46)
    	Send, hyo
    if(key_value == 53)
    	Send, mya
    if(key_value == 61)
    	Send, myu
    if(key_value == 62)
    	Send, myo
    if(key_value == 17)
    	Send, rya
    if(key_value == 25)
    	Send, ryu
    if(key_value == 26)
    	Send, ryo
    status = %c_default%
  }
  else if(status == c_dakuon_youon){
;    MsgBox, "ë˜âπ+ùXâπ"
    if(key_value == 33)
    	Send, gya
    if(key_value == 41)
    	Send, gyu
    if(key_value == 42)
    	Send, gyo
    if(key_value == 49)
    	Send, zya
    if(key_value == 57)
    	Send, zyu
    if(key_value == 58)
    	Send, zyo
    if(key_value == 21)
    	Send, dya
    if(key_value == 29)
    	Send, dyu
    if(key_value == 30)
    	Send, dyo
    if(key_value == 37)
    	Send, bya
    if(key_value == 45)
    	Send, byu
    if(key_value == 46)
    	Send, byo
    status = %c_default%
  }
  else if(status == c_handakuon_youon){
;    MsgBox, "îºë˜âπ+ùXâπ"
    if(key_value == 37)
    	Send, pya
    if(key_value == 45)
    	Send, pyu
    if(key_value == 46)
    	Send, pyo
    status = %c_default%
  }
  else
  {
    if(key_value == 1)
    	Send, a
    if(key_value == 3)
    	Send, i
    if(key_value == 9)
    	Send, u
    if(key_value == 11)
    	Send, e
    if(key_value == 10)
    	Send, o
    if(key_value == 33)
    	Send, ka
    if(key_value == 35)
    	Send, ki
    if(key_value == 41)
    	Send, ku
    if(key_value == 43)
    	Send, ke
    if(key_value == 42)
    	Send, ko
    if(key_value == 49)
    	Send, sa
    if(key_value == 51)
    	Send, si
    if(key_value == 57)
    	Send, su
    if(key_value == 59)
    	Send, se
    if(key_value == 58)
    	Send, so
    if(key_value == 21)
    	Send, ta
    if(key_value == 23)
    	Send, ti
    if(key_value == 29)
    	Send, tu
    if(key_value == 31)
    	Send, te
    if(key_value == 30)
    	Send, to
    if(key_value == 5)
    	Send, na
    if(key_value == 7)
    	Send, ni
    if(key_value == 13)
    	Send, nu
    if(key_value == 15)
    	Send, ne
    if(key_value == 14)
    	Send, no
    if(key_value == 37)
    	Send, ha
    if(key_value == 39)
    	Send, hi
    if(key_value == 45)
    	Send, hu
    if(key_value == 47)
    	Send, he
    if(key_value == 46)
    	Send, ho
    if(key_value == 53)
    	Send, ma
    if(key_value == 55)
    	Send, mi
    if(key_value == 61)
    	Send, mu
    if(key_value == 63)
    	Send, me
    if(key_value == 62)
    	Send, mo
    if(key_value == 12)
    	Send, ya
    if(key_value == 44)
    	Send, yu
    if(key_value == 28)
    	Send, yo
    if(key_value == 17)
    	Send, ra
    if(key_value == 19)
    	Send, ri
    if(key_value == 25)
    	Send, ru
    if(key_value == 27)
    	Send, re
    if(key_value == 26)
    	Send, ro
    if(key_value == 4)
    	Send, wa
;    if(key_value == 6)
;    	Send, i
;    if(key_value == 22)
;    	Send, e
    if(key_value == 20)
    	Send, wo
    if(key_value == 52)
    	Send, nn
    if(key_value == 2)
    	Send, xtu
    if(key_value == 18)
    	Send, -
    if(key_value == 50)
    	Send, .
    if(key_value == 48)
    	Send, ,
    if(key_value == 34)
    	Send, +/
    if(key_value == 22)
    	Send, +1
    ;if(key_value == 16)
    ;	Send, /
    if(key_value == 16){
        status = %c_dakuon%
    }
    if(key_value == 32){
    	status = %c_handakuon%
    }
    if(key_value == 8){
    	status = %c_youon%
    }
    if(key_value == 24){
    	status = %c_dakuon_youon%
    }
    if(key_value == 40){
    	status = %c_handakuon_youon%
    }
    if GetKeyState("s","P")
      KeyWait, s
    if GetKeyState("d","P")
      KeyWait, d
    if GetKeyState("f","P")
      KeyWait, f
    if GetKeyState("j","P")
      KeyWait, j
    if GetKeyState("k","P")
      KeyWait, k
    if GetKeyState("l","P")
      KeyWait, l
  }
  return
