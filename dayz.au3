#include <Misc.au3>
 
Const $startRunning = "24"
Const $stopRunning = "23"
Local $user32 = DllOpen("user32.dll")
 
While True
	If _IsPressed($startRunning, $user32) Then
		While _IsPressed($startRunning, $user32)
			Sleep(100)
		WEnd
		Send("{w down}" & "{LSHIFT down}")
	ElseIf _IsPressed($stopRunning, $user32) Then
		While _IsPressed($stopRunning, $user32)
			Sleep(100)
		WEnd
		Send("{w up}"  & "{LSHIFT up}")
	EndIf
	Sleep(100)
WEnd
