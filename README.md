# Deadline Scheduler
A scheduler for Windows where you can set deadlines/tasks and have your computer remind you on a daily basis of when those deadlines are due before logging you out by force once the scheduled deadlines are hit.

~~also yes i am aware that batchfiles and vbscripts weren't the best languages for something like this but they are one of the only languages i'm familiar with please don't kill me~~
## Quick Setup

![](https://github.com/SkylarZYX/deadline-scheduler/assets/43320327/dace5cbc-b5fd-4223-8e7b-98f034058d7d)

Change the directory to the directory you installed the scheduler on for both deadline.bat & reminder.bat.

Also, make sure created.txt's value is set to 0 if there are no tasks currently created from the scheduler.

# Help
## How to create deadlines
**1.** Go to the directory you installed the deadline-scheduler at in File Explorer & open start.bat, this is the script where you schedule deadlines.

![Screenshot 2022-09-18 113928](https://user-images.githubusercontent.com/43320327/190915692-f7eb55cf-3962-4e90-8e99-a97b51ca86b8.png)

**2.** Once you have it opened, Enter the name of your deadline.

![Screenshot 2022-09-18 115037](https://user-images.githubusercontent.com/43320327/190916034-2b72fed1-f2b2-4a13-a93b-ac4d49fa4388.png)

**3.** After entering your deadline name, enter the date the deadline will be due at (the date format will depend on what country you live at) 

![Screenshot 2022-09-18 115137](https://user-images.githubusercontent.com/43320327/190916093-9d8a6877-8740-4f5f-bff4-fc3a3eaae12b.png)

**4.** Once you're at the next prompt, enter the time you want the deadline to run at (the time format is 24h, not 12h)

![Screenshot 2022-09-18 115611](https://user-images.githubusercontent.com/43320327/190916637-6f862cdc-3214-488e-a76a-d7f6f1e7c56d.png)

(you could also change the time of the reminder task at line 33 in start.bat)

**5.** Now once you've done all that, press enter and it should create the deadline for you!

![Screenshot 2022-09-18 120705](https://user-images.githubusercontent.com/43320327/190916780-85265279-b9e9-45a6-81f5-43896a915834.png)

If an error occurred while creating the deadlines due to a typo in the date or time, please resort to clearing deadlines & reminders below.
## Clear/Delete Created Deadlines/Tasks & Reminders
This is for in case an error happens in the scripts, or you'd like to get rid of your deadlines & the reminders due to the reminder log filling up or just in general.

**1.** In your windows search bar, type "Task Scheduler", this program will show all the tasks that have been scheduled & makes you able to manage them through a GUI interface.

**2.** Make sure you have "Task Scheduler Library" selected in the console tree window, this is where the reminder task is located.

![](https://user-images.githubusercontent.com/43320327/190910934-a257c848-7e26-4df0-aff8-9016a7392eb7.png)

**3.** Look in the Task Window of your Task Scheduler Library until you see the "deadline-reminder" task, once you see it, right-click it and delete.

![](https://user-images.githubusercontent.com/43320327/190910945-738a89e9-6408-4bae-be37-a7e70d19c80f.png)

Now we're going to do a similar thing we did above the last two steps.

**4.** Look for the "deadline" directory in your console tree window, this is the directory the deadline scheduler created. Select the directory once you see it.

![](https://user-images.githubusercontent.com/43320327/190911005-de7df7d5-75a6-4a34-b06b-29268c927c7b.png)

**5.** Now you're able to see all the tasks created by the scheduler, select all the tasks in that directory, right-click, and delete.

![](https://user-images.githubusercontent.com/43320327/190912081-bf53f3a0-efbe-4ded-b7ee-8347fdc32c16.png)

**6.** Now you can exit Task Scheduler, let's go to the deadline-scheduler directory where you installed all the scheduler scripts at in File Explorer. We're going to edit the "created.txt" file located in that directory.

**7.** Once you opened your text editor on created.txt, set the number value to "0". 

The reason why created.txt is important is because the reminder task will need to get deleted at some point when there are no deadlines left in the schtasks deadline directory. So this file basically shows how much deadlines have been created, so once all deadline tasks are past their run time, the deadline.vbs script will set the "created.txt" value to 0 and will automatically delete the reminder task.

# Other

Scripts made by SkylarZYX

Licensed under GNU GPL v2
