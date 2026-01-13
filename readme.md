This is my solution for the tech test:

App.rb:

App.rb contains the logic for consuming the API endpoint.

If the HTTP response is successful, then the data is parsed and looped to group the questions and answers together by question key.

The matching answers are counted for each question by comparing each answer in the loop.

How to run:

A JSON summary is outputted by typing in "ruby app.rb in the terminal"

Index.html:

Index.html contains HTML boilerplate and the logic for loading Chart.Js 

I pasted the JSON directly into this file, and created a loop for every question to be rendered in a bar chart. 

I found this quite difficult, because I was unfamiliar with Chart.JS . I had to use ai to help me debug this file.

If I had more time, I would get the HTML file automatically generated with the JSON embedded after running 
ruby app.rb . This would be really cool because the process would be automated.

How to run:

Right click on index.html and click on "open in default browser"

Thank you for this opportunity!
