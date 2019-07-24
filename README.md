# LinearProgressBarSwift
An example of Linear Progess Bar in swift like Android.

LinearProgressBarSwift
A framework that allows you to create a Linear Progress Bar like in Android ( https://i.stack.imgur.com/wAkcG.png ).

How to use it:
1. Get the repository.
2. Copy LinearProgressBar, Utility class. Create IBOutlet of uiview and connect. 
3. In viewDidLoad(), write to show the prgress : 

 Utility.addLinearProgressBar(parentView: self.linearProgressBarHolder, subView: self.linearBar)
 self.linearBar.startAnimation()
 
 To stop Animation/Hide, use : 
 
 self.linearBar.stopAnimation()
       
Note : Some idea of the class is taken from https://github.com/PhilippeBoisney/LinearProgressBar but implementation logic is different.

Thanks. 
