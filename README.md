# Database9

## Database Project

### Introduction (Team, Project Description)

Team Members: Yuy H., Evette T.H.

Description
Due to Coronavirus, campuses have been implmenting precautionary methods to keep thier students safe while maintaining control of food services delivered on campus.
Creating a database that will be intended for unviersity students and adminstrators only to order/deliver food/restaurant services. 
It will also include a rating system for both drivers and restaurants.

### CASE DIAGRAM FOR RATING SYSTEM

<img width="656" alt="Screen Shot 2020-11-19 at 3 42 19 PM" src="https://user-images.githubusercontent.com/71344424/99754185-e1c28180-2ab5-11eb-9f0c-44206460910d.png">

### BUSINESS RULE

#### A)Person
Persons (campus faculty, staff, students) have accounts in the system with personid (PK), name, email, and cell. Only faculty, staff and students are included. One person (and only one) can be one or many of the Persons (campus faculty, staff, students or make an order.

##### Faculty
For faculty we will include a facultyid(PK), personid(FK), thier title, degree, and highest degree. 

##### Student
For students of the university, we will include studentid(PK), personid(FK), graduation year, major, and type of major.
Student can also be a driver (One and only one to one or many)

##### Staff
For staff who are staff members of the university, we will make sure to include their Position and AdminYorN.

#### B)Locations
The university campus will have approved locations in which food can be delivered at these spots. These will include, dorms, university facilities, and approved classroom buildings. The database will keep track of the locations which will include, LocationID, LocationName, LocationAddress and (optional) Latitude and Longitude are maintained in the database. Additionally a food delivery drop-off point is included (designated place for meeting or delivering food in the location – this can be a brief description).
Location can have one or many orders

#### C)Delivery Personnel
Persons can also be drivers (delivery personnel which have to be approved). 
Drivers have licensenumber and datehired plus ratings. You may also want to keep vehicle information (relative to the vehicle that the driver uses)
One and only one vehicle is associated to one or many deliverys made by student driver, the vehicle database includes vehicleid, vehicle plate, model, and year.
All delivery personnel are drivers who are students.

#### D)Orders
There is a flat fee of $5 for each delivery. 
Each delivery is tied to one and only person for the order. The delivery contains deliveryid(PK) driverID(FK) vehicleID(FK), and delivery time.
The order must only come from one restaurant, but a restuarant can have one to many orders from different persons.
For the order database, we will include total price, delivery charge, the driver, and the delivery times. There also will be a unique identifier that ties the ID for the order at the restaurant. For the actual items on the order they will come from the restaurant database so we will not be responsible for that.

#### E)Ratings
There will be a rating system implemented into the database for persons to rate the order from 1 through 5. The rating system will include a ratingid(PK), orderid(FK) driver rating, restaurant rating, driver comment, and restaurant comment. 
The rating must only come from one order, but a order can have one to many ratings becuase of multiple people have many orders.

### EERD (full database)

<img width="592" alt="Screen Shot 2020-11-19 at 10 36 18 PM" src="https://user-images.githubusercontent.com/71344424/99755035-bb9de100-2ab7-11eb-9b4d-4daad5c89678.png">

### DATA DICTIONARY
#### Delivery and Driver

<img width="1280" alt="Screen Shot 2020-11-20 at 9 21 18 PM" src="https://user-images.githubusercontent.com/71344424/99865275-adfb6080-2b76-11eb-9b4a-d77d069ad326.png">

#### Faculty and Location

<img width="1279" alt="Screen Shot 2020-11-20 at 9 21 28 PM" src="https://user-images.githubusercontent.com/71344424/99865320-d97e4b00-2b76-11eb-945a-9c39df1d8191.png">

#### Order and Person

#### Ratings and Restaurant

#### Staff, Student and Vehicle

MySQL Queries
Stored Procedure
Web/App Implementation (Optional) or Description of Future Work
MySQL dump
PPT Video (link)
