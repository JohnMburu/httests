# Setting up#
Ensure that you have the latest version of NodeJs

 ## API Testing ##
    Clone the Project to you pc
 Open the httests/api folder
 Open the Terminal and run

 ```
 newman run ht.json
 ```
# Web application Tests
 ## Robot Framework ##
 Ensure that Python and pip is installed in your PC

 Run the following command in terminal
 
 ```
pip install robortframework
 ```

```
pip install --upgrade robotframework-seleniumlibrary
```
 
 ```
 pip install robotframework-ride
 ```

 Navigate to the test folder

 - cd httests
 - cd test

 to run the e2e tests
 run

 ```
 robot webtest.robot
 ```