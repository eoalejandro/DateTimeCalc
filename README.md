# Monthly Metrics Report 

## Background
By the 4th business day of the month the project team needs to submit a report to IES with the following information:
		○ The type of questions submitted
		○ The amount of time from receipt to sending a substantive reply. 
		○ High level updates:
			§ % of tickets we addressed within the 2 hour window
			§ Common ticket types. Essentially, was there an issue this month that many people faced?
			§ Any issues that we faced

## Objective
The goal of this program is to calculate the WWC Public Help Desk performance metrics. 

## Instructions

1. Go [here](https://mathematicampr.atlassian.net/jira/servicedesk/projects/TOASTHD/issues/jql=project%20%3D%20TOASTHD%20ORDER%20BY%20%22Time%20to%20resolution%22%20ASC)

1.1 Make sure you have the JQL dialog box (see Jira sheet for how to do this)

1.2 Put this query in:
   project = "TOASTHD" and "Date/Time Request Received[Time stamp]" >= "YYYY/MM/01" and "Date/Time Request Received[Time stamp]" <= "YYYY/MM/DD" 

1.2.1 And make the necessary changes to the dates

1.3 Click on "export issues" and then click on Export Excel CSV (all fields)

1.3.1 This will pull up a report with fields from ALL projects at Mathematica that use Jira. I asked on yammer if there's a way to avoid this, but I haven't received any answers yet. Check here to see if it's been addressed by the time you have to do this. Otherwise, it's a lot of deleting columns.


