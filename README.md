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
  
  For example: 
  
  > $stagehand web-simple
  
  > $pub get
  
  Run the app
  > $webdev serve
  
  Open your web link on the browser: http://localhost:8080/
  
  
  ##########################
  
  
  # Stagehand - A Dart project generator

![Stagehand banner](https://raw.githubusercontent.com/dart-lang/stagehand/master/site/banner_stagehand.jpg)

[![pub package](https://img.shields.io/pub/v/stagehand.svg)](https://pub.dartlang.org/packages/stagehand)
[![Build Status](https://travis-ci.org/dart-lang/stagehand.svg?branch=master)](https://travis-ci.org/dart-lang/stagehand)
[![Coverage Status](https://coveralls.io/repos/dart-lang/stagehand/badge.svg?branch=master)](https://coveralls.io/r/dart-lang/stagehand?branch=master)

## Helps you get set up!

Stagehand helps you get your Dart projects set up and ready for the big show.
It is a Dart project scaffolding generator, inspired by tools like Web Starter
Kit and Yeoman.

## Stagehand templates
* `console-full` - A command-line application sample.
* `package-simple` - A starting point for Dart libraries or applications.
* `server-shelf` - A web server built using the shelf package.
* `web-angular` - A web app with material design components.
* `web-simple` - A web app that uses only core Dart libraries.
* `web-stagexl` - A starting point for 2D animation and games.

## Installation

Requirements:

To install:

```console
> pub global activate stagehand
```

To update, run activate again:

```console
> pub global activate stagehand
```

## Usage

Stagehand will generate a project skeleton into the current directory. As an
example, here is how you create a package with Stagehand:

```console
> mkdir fancy_project
> cd fancy_project
> stagehand package-simple
```

And to list all of the project templates:

```console
> stagehand
```

## Goals

* Opinionated and prescriptive; minimal to no options
* Support for server and client apps
* The best way to create a new Dart project
* Used by IntelliJ, WebStorm, Atom, Sublime, and more
* Distributed as a pub package

## Issues and bugs

Please file reports on the
[GitHub Issue Tracker](https://github.com/dart-lang/stagehand/issues).

## Contributing

Contributions welcome! Please read this short
[guide](https://github.com/dart-lang/stagehand/wiki/Contributing) first.

## Analytics and crash reports

Learn more about how [Stagehand uses Google Analytics][analytics] for measuring
usage and error reporting, and how you can opt out.

[analytics]: https://github.com/dart-lang/stagehand/wiki/Anonymous-analytics-and-crash-reports