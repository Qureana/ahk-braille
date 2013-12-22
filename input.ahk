; カーソルキーなどが使えなくなる．
; 長押しが効かなくなる 
loop{
  Input, UserInput, T.2 L1 C I, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{Capslock}{Numlock}{PrintScreen}{Pause},ds
  if ErrorLevel = Max
  {
  ;    MsgBox, You entered "%UserInput%", which is the maximum length of text.
  ;    return
  }
  if ErrorLevel = Timeout
  {
      Send, %UserInput%
      ;MsgBox, You entered "%UserInput%" at which time the input timed out.
  ;    return
  }
  if ErrorLevel = NewInput
  ;    return
  IfInString, ErrorLevel, EndKey:
  {
      Send, %EndKey%
  ;    MsgBox, You entered "%UserInput%" and terminated the input with %ErrorLevel%.
  ;    return
  }
  ; Otherwise, a match was found.
  SetKeyDelay, -1  ; Most editors can handle the fastest speed.
  if UserInput = ds
      Send, by the way
  else if UserInput = f
      Send, hogehoge
}
