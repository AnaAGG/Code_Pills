# Selenium

![intro](https://github.com/AnaAGG/Code_Pills/blob/main/Selenium/Images/main.png)


## What is Selenium?
Selenium is an open-source tool that automates web browsers. It provides a single interface that lets you write test scripts in programming languages like Ruby, Java, NodeJS, PHP, Perl, Python, and C#, among others.

A browser-driver then executes these scripts on a browser-instance on your device (more on this in a moment).

## Why do I need Selenium Automation Testing?
Imagine that a manual tester has this scenario: Checking whether the web app’s signup page (www.example.com/signup) validates input strings and registers a user successfully in latest versions of Chrome and Firefox, on Windows 7.

Assume that the signup page has these input fields—username, email address, and password. The tester will get a Windows 7 desktop and follow these steps, consecutively, on latest versions of Chrome and Firefox:

1. Enter the URL in the address bar (www.example.com/signup)


2. Enter an invalid string in each input field (email, username, and password)


3. Check whether the input strings were validated against corresponding regexes and any pre-existing values in the database


4. Enter ‘valid’ strings in each input field; click Sign Up


5. Check whether “Welcome, ‘{‘username’}’“ page showed up


6. Check whether the system database created a new userID for ‘{‘username’}’


7. Mark the test ‘passed’ if it did, ‘failed’ if the signup feature broke anywhere during the test.


## Documentation

- [Basic Selenium](https://www.browserstack.com/docs/automate/selenium/getting-started/python#run-your-first-test)

- [Selenium Documentation](https://www.selenium.dev/documentation/)