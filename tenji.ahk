;#MaxThreads 1
#InstallKeybdHook
#UseHook

#r::Reload
s::
d::
f::
  IfWinActive,ahk_class Vim
  { 
    Send %A_ThisHotkey%
    Return
  }
  if (A_TickCount - prevTickCount) < 400 
    MsgBox, % "Continue: " A_TickCount - prevTickCount
  else
  {
    MsgBox, % "Time out: " A_TickCount - prevTickCount
  }
  prevTickCount = %A_TickCount%
  return
