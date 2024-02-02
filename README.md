# How to Run Tests
There are several ways to run the written test cases;
1. Terminal can be opened in the following folder: Tikkie-Assignment which is
the root folder of the project.
    The following command should be written into the terminal "fastlane test_ui". After that, all the test cases will start to run.
   - After running the test with fastlane command, the test report can be found inside of the fastlane/test_output folder.
2. To execute the tests that are part of the test plan which is Regression, the following command should be written into the terminal under to root folder of Tikkie-Assignment, "fastlane test_ui_with_testplan testplan:Regression". To execute tests with any given test plan, I created a new function for passing test plans inside of the fastlane/Fastfile. 
2. The project should be opened in XCode. Then, under the ReferenceiOSUITests package, MainScreenUITests can be found to execute test cases.
    - Each test case can be run by clicking the run button.
  
