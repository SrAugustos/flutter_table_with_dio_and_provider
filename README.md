# Intro
This is a flutter Application created for stage 2 of Digistarts' selection process
# Instructions
## Log in with an email and password
* *Email:* teste@teste.com
* *Password:* 123456
* After logging in, there will be a small delay for the data to be shown
# Functionalities
## Auth Check
* There is an Auth Check layer that redirects the user according to their login state
## Login
* From an email and password, log into the firebase server.
* This function sends the new login state to the Auth Check layer
## Create a List
* Consumes a Rest API and stores the obtained data in a local list. From there using ChangeNotifier reactivity the data is plotted on the screen in a DataTable Widget
* API consumption is called via init state when page is called
* Table is scrollable vertically and horizontally
# Architecture
* Micro services with MVC
# Packages 
* Provider
* Dio
* Firebase
# Platforms
* Web
* Android
