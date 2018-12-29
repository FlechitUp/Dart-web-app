# Dart-web-app
__Install Dart (Windows)__

	Next install the VS Code Dart extension. You can install it via the Extension tabs in 
	VS Code by searching for Dart, or by downloading it from Visual Studio Code Marketplace.

	Dowload the Dart sdk:
	https://www.dartlang.org/tools/sdk/archive

	Unzip to any location on you computer. I unzipped it to my C:\dart


	Next add three paths of the follow image to our environment variables so that we can
	access it from our command-line.
	![alt text](https://github.com/FlechitUp/Dart-web-app/blob/master/var.PNG)

__Create a Project__

 Open the console and write:

  > $pub global activate webdev
  
  > $pub global activate stagehand
  
  Create the file project
  > $mkdir nameFile
  
  > $cd nameFile
  
  Choose a Stagehand templates:
	* `console-full` - A command-line application sample.
	
	* `package-simple` - A starting point for Dart libraries or applications.
	
	* `server-shelf` - A web server built using the shelf package.
	
	* `web-angular` - A web app with material design components.
	
	* `web-simple` - A web app that uses only core Dart libraries.
	
	* `web-stagexl` - A starting point for 2D animation and games.
  
  > $stagehand web-simple
  
  > $pub get
  
  Run the app
  > $webdev serve
  
  Open your web link on the browser: http://localhost:8080/
  