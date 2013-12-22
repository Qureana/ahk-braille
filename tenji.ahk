#MaxThreads 1
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
  sleep, 50
  if GetKeyState("s","P"){
    if GetKeyState("d","P"){
      if GetKeyState("f","P"){
        Send, 7
      }
      else{
        Send, 6
      }
    }
    else{
      if GetKeyState("f", "P"){
        Send, 5
      }
      else{
        Send, 4
      }
    }
  }
  else{
    if GetKeyState("d", "P"){
      if GetKeyState("f", "P"){
        Send, 3
      }
      else{
        Send, 2
      }
    }
    else if GetKeyState("f", "P"){
      Send, 1
    }
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
  return
