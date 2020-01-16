# Modelling a web request from browser to db and back again

## Learning objectives

1) Remember that a model, view, controller (MVC) is a pattern for making websites
2) Understand how information is sent between each component when a browser makes a request

This is a diagram showing a very common way to structure web applications.
![](mvc.png)

What are each of the components on this diagram?

What is the responsibility of the:
- client? -> provide input
- controller? -> Tell model what to do and view what to display
- model? -> logic and database requests
- view? -> create specific html from template
- database? -> CRUD data

## Modelling a request

Get into groups of 5 and assign each person a role of either browser, controller, model, view or database.

Each person needs a pen a set of 2 different coloured post-its (one colour for making requests and one colour
for sending responses).

### Scenario 1

User goes to the homepage that displays the latest Tweets

Client - request: GET /homepage -> Controller
Controller - request: return tweets -> Model
Model - request: SELECT * FROM tweets -> Database
Database - response: Database object (inc tweets) -> Model
Model - response: Array of tweets as strings -> Controller
Controller - request: Homepage view (inc array of tweets) -> View
View - response -> HTML of homepage with tweets -> Controller
Controller response -> HTTP reponse with HTML of homepage with tweets -> Client

### Scenario 2

User adds a new tweet to Twitter

Client - request: POST /homepage (tweet value) -> Controller
Controller - request: add tweet (tweet value, user id) -> Model
Model - request: INSERT INTO tweets(user id, tweet) VALUES (user_id, tweet value) -> Database
Database - response: INSERT 1 -> Model
Model - response: 'tweet added' (generic confirmation response) -> Controller
Controller - redirect back to GET /homepage
Controller - request: return tweets -> Model
Model - request: SELECT * FROM tweets -> Database
Database - response: Database object (inc tweets) -> Model
Model - response: Array of tweets as strings -> Controller
Controller - request: Homepage view (inc array of tweets, generic tweet added confirmation) -> View
View - response -> HTML of homepage with tweets and confirmation -> Controller
Controller response -> HTTP reponse with HTML of homepage with tweets and confirmation of new tweet added -> Client

### Scenario 3

User logs into Twitter
