# Programming Elm
This repository of code is from following the examples in Programming Elm. It is a great book and recommend a read if you are interested in Elm. I did not follow all the code instructions as I am still at the basics stage with Elm.

# elm-files
This small Elm application was the first demonstration of Elm from the book which was not in the Elm REPL. It demonstrates the Elm data types: String, Int, Float, Bool. It showcased this by displaying text within the browser.

![Screenshot of HTML output of elm-files program](/demonstration/elm-files-demonstration.png)

# Picshare
The Picshare application was the introduction app into how Elm uses the Model View Update. The web app uses web sockets to receive a series of images which make up a feed. Elm application receives the feed and renders the results to the browser and updates the browser with its virtual dom.

![Screenshare of the Picshare application loading new images into the user feed](/demonstration/picshare-demonstration.gif)

# vite-elm-app-picshare
The vite-elm-app-picshare is a port of the Picshare application to use Vite as its web server to allow for advanced features such as hot module reload and asset and stylesheet management.  This configuration allows for neat tools such as Elm time travel functionality.

![Screenshare of the Elm time travel functionality in the Picshare application](/demonstration/elm-time-travel-demonstration.gif)

# ping-pong-ports
A small Elm application which demonstrates its ability to interact with JavaScript outside the application via ports. This small application has two buttons, ping and pong. When one is clicked, it becomes disabled and a counter incremented.  A message is sent to the other application which enables its button to be enabled, which, creates a simple ping pong example.

![Screenshare of ping-pong-ports application functionality](/demonstration/ping-pong-ports-demonstration.gif)

# debugging
debugging is a small project with a focus on debugging tools. There is not much visual output within the application. The focus was using Debug.toString function and handling JSON parsing errors, and using Debug.todo to stub out functionality.

# awesome-date
Unit tests for examples for Elm are demonstrated in this application. AwesomeDate is an Elm file which has date based logic. The AwsomeDateTest file is the unit tests associated with the AwesomeDate. It demonstrates how to create a test suite and unit tests with a focus on adding years and determining leap years.
