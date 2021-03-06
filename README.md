# Weather Teaching Program

_Completed in 10/05/2019_

## 1. Product Summary:

   With the main goal is to help their learning process easier and stick to reality, my very first idea is that teaching words and spellings base on picture’s animation and quizzes, which is the easiest way for technology to strengthen their learning ability. Then I realized that why just teaching words by picture if we can go for a combination and let them learn more with relevant concept, such as daytime, month and a short of simple daily information. In additions, a2n idea for a program that has capability on both providing real-life information and developing educational purpose base on that phenomena are the great way for them to learning effectively and practically. 
 
   In order to combine and develop all of the ideas, I decide to orient my creative project into the direction of “ Display forecasted weather and word teaching for hearing impaired “which contain two main purposes: Not only informing today’s weather forecast by displaying in drawings and animations but also serving educational purposes in teaching and helping hearing impaired child to remember the words within the range of concepts in date and weather. I hope this project can be as effective and innovative as possible and brings some meaningful helps to the community.

![alt text](https://github.com/tmtrungg/Weather-Teaching-Program/blob/main/demo/demo.png?raw=true)
_(Screenshot of the actual game play)_

## Coding Concepts:
	
   - Functions: The program contains 6 different function for animation displaying: 3 kinds of weather, as well as 2 for weathers status icon and 1 for day and month.
   
   - Variables: For each weather animation required numerous variables for displaying and making effect, besides that there are also string functions for Boolean display and float function to control velocity of the moving and changing object. Variables numbers in this program reached more than 50 variables in order to completing complex colour changing effects and animations.
	
   - Loops: Three first loops are used in continuously sunshine moving and rapidly twinkling effect of 2 weather status when continuously changing its colour (using mod and number rules in order to control the speed). After that, another 32 small if loops are used to reset the rain falls continuously. Last is for loops for snow falling. 36 loops in total.
 
   - State changes: The program experienced state changes in changing colour in weather name box, weather display screens (after user interactions) and calendar theme fading effect to clarify the date, month information.


   - Object creation: The final display screen contains 4 different objects run separately:  
		1.	Calendar on the top right corner which can reveal day and month when user hold the mouse click in it.
		2.	Twinkling weather status in the top left which inform about safety level of the weather (2 different types, which appearance depends on the input).
		3.	Weather animation displaying effect (4 different weather types, which appearance depends on the input).
		4.	Multiple choices box for guessing the correct name with spelling effect.    
 
   - User interaction: Three kinds of interactions are included:
		1.	Two boxes of choice for the correct weather name, which contains a different effect for each.
		2.	Weather name spelling, which appear at the centre of the screen when user click and hold the mouse click on the correct name box.
		3.	Day and month reveal, which faded the calendar background to white when user click and hold the mouse click on it, reveal the day and month information.

   - Branching code: Branching codes are used in resetting the rain and snow when it touches the ground (making the continuous effects) and executed in the weather name box and calendar which pop up different visual effects when user hold the mouse click in. Branching codes are also used in loops and if code for twinkling speed control

   - Interaction between objects: There are 2 interaction between the objects in the final display screen:
		1.	Pop up the spelling of weather’s name when user hold the click button in the box of correct weather name box.
		2.	Weather colour appears in the animation effect right after user click on the correct weather name box.
		

   - Array: There are 3 arrays used in this program which create the falling snowy function, and the random weather and status in the display screen.
	
## 4. Overall System:
   In the beginning, the program takes the input of datetime and weather conditions of the day (from input or other applications or randomized one) and begin sorting data and creating dataset:
   
	•	Day and month: From today’s day and month, store in “day” and “month” variables.
	•	Weather: From weather forecast, categorize it into 1 of 3 basic weathers: sunny, cloudy, snowy and store in variable “weather”.
	•	Recognizing weather status, categorize it into 1 of 2 basic status: safe and dangerous and store in variable “status”.
	
   The collecting step repeat every day to renew the display and update daily information to the user. After scanning and determined those variables, the program will process to display 4 separate different objects after the user click “Start” in the beginning screen:
   
		1.	The orange calendar in the top left corner, which user can interact with by clicking and hold the mouse click on it in order to fade the theme colour, reveal the day and month information of that day (input and processed from “day” and “month” variable).
		2.	The twinkling icon in the top right corner, depends on variable “status” will display one of these 2:
			- The tick icon that twinkling in green and white if the status is “safe”.
			- The exclamation mark that twinkling in black and red if the status is “dangerous”.
		3.	The weather animation in black and white colours, depends on variable “weather” will display 1 of these 3:
			-	Cloud and rains fall continuously if the weather is “rainy”.
			-	Snow falls randomly and snowman if the weather is “snowy”.
			-	The sunshine twinkling with it sunshine around if the weather is “sunny”.
		4.	Two box of weather names (one is correct) is create below the screen, which contains 2 different effect when click on:
			a)	User click in the correct box:
				- The box changes its colour from black and white colour to weathers signature colour (blue for rainy, yellow for sunny, white for snowy and grey for windy)
				-	The true colour of weather animation appears instead of black and white in the beginning.
				-	The big spelling instruction appear in the centre of the screen when user hold the mouse click in that box.
			b)	User click in the incorrect box:
				-	The box changes its colour into red to inform that it is wrong.
