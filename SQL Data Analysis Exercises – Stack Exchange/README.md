# About this Exercise
Stack Exchange Is a network of sites, allowing different communities learn and share their knowledge.
Movies & TV Stack Exchange – is one of these sites, focused entirely on questions and answers regarding movies and series. The following database is built according to its structure, and simulates some of the data it has.

 

### Diagram

![sof_movies_erd](https://github.com/yogesh-hack/data-analysis-with-SQL-practice-excercise/assets/83384315/d5028d33-ea9d-49c2-a87d-78d60d3de0d4)


**ERD General Description**
This database consists of 4 tables

Posts – Each post can have different comments, each post can be voted by different users (in order to improve its ranking)
Votes – Each vote consists of a voting ID, user number (FK), post number (FK), and a date of creation
Comments – The details regarding the various posts comments
Users – The details of the users who commented / wrote a post / voted
 

Exercises
The following exercises are constructed in ascending difficulty order. First ones are pretty easy, made for warm-up. The advanced exercises, on the other hand, can be quite challenging.

 
#### Basic Analysis

- How many post were made each year ?
- How many votes were made in each day of the week (Sunday, Monday, Tuesday, etc.) ?
- List all comments created on September 19th, 2012
- List all users under the age of 33, living in London

#### Advanced Analysis

- Display the number of votes for each post title
- Display posts with comments created by users living in the same location as the post creator
- How many users have never voted ?
- Display all posts having the highest amount of comments
- For each post, how many votes are coming from users living in Canada ? What’s their percentage of the total number of votes
- How many hours in average, it takes to the first comment to be posted after a creation of a new post
- Whats the most common post tag ?
Create a pivot table displaying how many posts were created for each year (Y axis) and each month (X axis)
