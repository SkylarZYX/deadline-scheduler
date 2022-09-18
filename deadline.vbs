Dim oShell
Set oShell = CreateObject("WScript.Shell")

X=MsgBox("THE DEADLINE HAS BEEN HIT!",0+16,"DEADLINE HIT!")

Set objFileToRead = CreateObject("Scripting.FileSystemObject").OpenTextFile("created.txt",1)
Dim strVal
strVal = objFileToRead.ReadAll()
objFileToRead.Close

WScript.Sleep 5000

If strVal = 1 Then
oShell.Run "schtasks /delete /tn deadline-remind /f", 0, False
oShell.Run "subtract.bat", 0, False
oShell.Run "shutdown.exe /l /f", 0, False ' force log out
Else
oShell.Run "subtract.bat", 0, False
oShell.Run "shutdown.exe /l /f", 0, False ' force log out
End If