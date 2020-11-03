Feature: 
The following requirements are given for http://uitest.duodecadits.com website.
a) Write test cases in Gherkin or using the IEEE829 standard to achieve 100% requirement coverage.

Scenario: Take a look the Title on http://uitest.duodecadits.com
 """
 Priority 2 - Moderate - REQ-UI-01
 """
	Given I'm on the http://uitest.duodecadits.com page
	When I Take a look the Title
	Then I should be "UI Testing Site"
    
Scenario: Take a look the Title on http://uitest.duodecadits.com/form.html
 """
 Priority 2 - Moderate - REQ-UI-01
 """
	Given I'm on the http://uitest.duodecadits.com/form.html page
	When I Take a look the Title
	Then I should see "UI Testing Site"
    
Scenario: Take a look the Title on http://uitest.duodecadits.com/error
 """
 Priority 2 - Moderate - REQ-UI-01
 """
	Given I'm on the http://uitest.duodecadits.com/error page
	When I Take a look the Title
	Then I should see "UI Testing Site"
    
    
Scenario: Take a look the Company Logo on http://uitest.duodecadits.com
 """
 Priority 2 - Moderate - REQ-UI-02
 """
	Given I'm on the http://uitest.duodecadits.com page
	When I Take a look the Company Logo
	Then I should see the Company Logo
    
Scenario: Take a look the Company Logo on http://uitest.duodecadits.com/form.html
 """
 Priority 2 - Moderate - REQ-UI-02
 """
	Given I'm on the http://uitest.duodecadits.com/form.html page
	When I Take a look the Company Logo
	Then I should see the Company Logo
    
Scenario: Take a look the Company Logo on http://uitest.duodecadits.com/error
 """
 Priority 2 - Moderate - REQ-UI-02
 """
	Given I'm on the http://uitest.duodecadits.com/error page
	When I Take a look the Company Logo
	Then I should see the Company Logo
    
Scenario: Take a look Home button functionality on http://uitest.duodecadits.com/ 
 """
 Priority 1 - High - REQ-UI-03
 """
	Given I'm on the http://uitest.duodecadits.com
	When I click on the Home button,
	Then  I should get navigated to the Home page http://uitest.duodecadits.com/

Scenario: Take a look Home button functionality on http://uitest.duodecadits.com/form.html
 """
 Priority 1 - High - REQ-UI-03
 """
	Given I'm on the http://uitest.duodecadits.com/form.html
	When I click on the Home button,
	Then  I should get navigated to the Home page http://uitest.duodecadits.com/
    
Scenario: Take a look Home button state on http://uitest.duodecadits.com/ 
 """
 Priority 3 - Low - REQ-UI-04
 """
	Given I'm on the http://uitest.duodecadits.com
	When I click on the Home button,
	Then Home button should turn to active status

Scenario: Take a look Form button functionality on http://uitest.duodecadits.com/ 
 """
 Priority 1 - High - REQ-UI-05
 """
	Given I'm on the http://uitest.duodecadits.com
	When I click on the Form button,
	Then  I should get navigated to the Form page http://uitest.duodecadits.com/form.html

Scenario: Take a look Form button functionality on http://uitest.duodecadits.com/form.html
 """
 Priority 1 - High - REQ-UI-05
 """
	Given I'm on the http://uitest.duodecadits.com/form.html
	When I click on the From button,
	Then  I should get navigated to the Form page http://uitest.duodecadits.com/form.html
    
Scenario: Take a look Form button state on http://uitest.duodecadits.com/form.html
 """
 Priority 3 - Low - REQ-UI-06
 """
	Given I'm on the http://uitest.duodecadits.com/form.html
	When I click on the Form button,
	Then Form button should turn to active status
    
Scenario: Take a look Error button functionality on http://uitest.duodecadits.com/ 
 """
 Priority 1 - High - REQ-UI-07
 """
	Given I'm on the http://uitest.duodecadits.com
	When I click on the Error button,
	Then  I should get navigated to the Error page hhttp://uitest.duodecadits.com/error
	And I should get a 404 HTTP response code

Scenario: Take a look Error button functionality on http://uitest.duodecadits.com/form.html
 """
 Priority 1 - High - REQ-UI-07
 """
	Given I'm on the http://uitest.duodecadits.com/form.html
	When I click on the Error button,
	Then  I should get navigated to the Error page http://uitest.duodecadits.com/error
	And I should get a 404 HTTP response code

Scenario: Take a look the Logo functionality on http://uitest.duodecadits.com/ 
 """
 Priority 1 - High - REQ-UI-08
 """
	Given I'm on the http://uitest.duodecadits.com
	When I click on the Logo
	Then  I should get navigated to the Home page http://uitest.duodecadits.com/

Scenario: Take a look the Logo functionality on http://uitest.duodecadits.com/form.html
 """
 Priority 1 - High - REQ-UI-08
 """
	Given I'm on the http://uitest.duodecadits.com/form.html
	When I click on the Logo
	Then  I should get navigated to the Home page http://uitest.duodecadits.com/
    
Scenario: Take a look the home page on http://uitest.duodecadits.com/ regarding h1 tag
 """
 Priority 3 - Low - REQ-UI-09
 """
	Given I'm on the http://uitest.duodecadits.com
	When When I Take a look home page regarding h1 tag
	Then The following text should be visible: Welcome on the Docler Holding QA Department

Scenario: Take a look the home page on http://uitest.duodecadits.com/ regarding p tag
 """
 Priority 3 - Low - REQ-UI-10
 """
	Given I'm on the http://uitest.duodecadits.com
	When When I Take a look home page regarding p tag
	Then The following text should be visible:This site is dedicated to perform some exercises and demonstrate automated web testing.
    
Scenario: Take a look the Form page, a form should be visible with one input box and one submit button on http://uitest.duodecadits.com/form.html
 """
 Priority 1 - High - REQ-UI-11
 """
	Given I'm on the http://uitest.duodecadits.com/form.html
	When I Take a look the Form page
	Then  I should see one input box
	And I shoud see one submit button    
    
Scenario Outline: Hello page Take a look
 """
 Priority 1 - High -  REQ-UI-12
 """
	Given I'm on the http://uitest.duodecadits.com/form.htm page
	When I type <value> to the input field
	And I click on the submit button
	Then I should redirect to the Hello page
 	And The following text should appear <result>

	Examples:
	| <value>| <result>			| 
	|John    | Hello John!		|
	|Sophia  | Hello Sophia!	|
	|Charlie | Hello Charlie!	|
	|Emily   | Hello Emily!		|
