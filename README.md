# RobotFramework_ProjectExample

Goal: Project to show different ways to develop and execute RobotFramework Tests


Web tests:

    web_tests_verify_emails.robot contains 2 examples of web tests
    The default browser in settings file is chrome (variable Browser)
    But if one pass the option ex: '--variable BROWSER:edge' in robot command, the variable BROWSER is overwritten
    PS: Don't forget to have the webdrivers in PATH


API tests:
    
    3 type os API tests were developed: 
        -> Keyword driven tests (api_keyword_driven.robot)
        -> BDD with data driven example table (api_bdd_with_table.robot)
        -> BDD with data driven CSV (api_bdd_with_csv.robot)


Run Tests:

    All tests of this project can be runned by executing the bat file 'runTests.bat'
    The variable BROWSER inside 'runTests.bat' define the browser
    Each execution generates a folder that contains the reports files
    Inside the bat file there are 2 different ways to run tests:
        -> robot command (run tests sequentially)
        -> pabot command (run tests in parallel)
    The split level of pabot can be changed with the option --testlevelsplit
    
    
    
Final considerations:

    - The main focus of this project was to show different ways of develop and running tests;
    - BDD test development make tests more readable;
    - To run the same test with different data, data driven approach is the best option
    - BDD with CSV it's the best option to data driven approach with a lot of examples
    - With lots of suites/tests, pabot it's the best option to run tests


Hope you enjoyed!

    