; ENConvertURL 1.13
;   automatically monitors the clipboard, converting EvernoteWeb URLs to LocalLink format
;   written by luckman212
;   see http://discussion.evernote.com/topic/54638-new-en-520-copy-note-link-behavior-is-unusable/

#SingleInstance force
#NoEnv
#Warn
#Persistent

appver := "1.13"
inifile := "ENConvertURL.ini"
firstrun := ""

IfNotExist,%inifile%
{
  firstrun := "true"
  IniWrite,yes,%inifile%,Settings,PlayBeep
}
IniRead,PlayBeep,%inifile%,Settings,PlayBeep,yes
Menu, tray, NoStandard
Menu, tray, add, v%appver%, QuitApp
Menu, tray, disable, v%appver%
Menu, tray, add, Beep, TogPlayBeep
if PlayBeep = yes
  Menu, tray, check, Beep
Menu, tray, add
Menu, tray, add, Quit, QuitApp
Menu, Tray, Tip, EN URL Converter

if firstrun=true
{
  TrayTip,Evernote URL Converter,Right-click on this menu to disable the beep sound.,5,1
}

return

OnClipboardChange:
if A_EventInfo <> 1
  return
IfNotInString, clipboard, https://www.evernote.com/shard/
{
  return
}
out_arr := StrSplit( clipboard, "/" )
shard_num := out_arr[5]
acc_num := out_arr[7]
guid := out_arr[8]
clipboard = evernote:///view/%acc_num%/%shard_num%/%guid%/%guid%/
if PlayBeep = yes
  SoundBeep, 1250, 250
return

TogPlayBeep:
if PlayBeep = yes
{
  Menu, tray, Uncheck, Beep
  PlayBeep := "no"
} else {
  Menu, tray, Check, Beep
  PlayBeep := "yes"
}
IniWrite,%PlayBeep%,%inifile%,Settings,PlayBeep
return

QuitApp:
ExitApp
