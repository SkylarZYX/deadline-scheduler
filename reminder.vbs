Set obj = CreateObject("wscript.shell")

X=MsgBox("Hey there! Do you remember the deadline you set for whatever you're working on?",0+64,"Important Reminder!")

obj.run "chcktask.bat"
WScript.Sleep 2000

' Display deadlines from task.txt by chcktask.bat
Set objFileToRead = CreateObject("Scripting.FileSystemObject").OpenTextFile("task.txt",1)
Dim strTask
strTask = objFileToRead.ReadAll()
objFileToRead.Close
X=MsgBox(strTask,0+64,"Deadline Log")