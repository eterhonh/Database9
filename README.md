# Database9

## Database Project

### Introduction (Team, Project Description)

Team Members: Yuy H., Evette T.H.

Description
Due to Coronavirus, campuses have been implmenting precautionary methods to keep thier students safe while maintaining control of food services delivered on campus.
Creating a database that will be intended for unviersity students and adminstrators only to order/deliver food/restaurant services. 
It will also include a rating system for both drivers and restaurants.

### CASE DIAGRAM FOR RATING SYSTEM

As demonstrated in the image below, the use case diagram shows how the customers will interact with the rating system. Accordingly, the customer will place an order and once their food is recieved, the customer can start the rating process. The customer will then rate the driver from a scale of 1-5, followed by an optional comment. Next, the customer will rate the restaurant from a scale of 1-5 (similar to the driver scale), also followed by an optional comment for the restaurant. After each rating process for both the driver and restaurant the administrators then recieve the information to organize and list both the restaurants  and drivers with average, max, and min ratings. Lastly, The data collected results in the customer having the option to search for the ratings on a particular restaurant organized by average, max, and min ratings.

<img width="656" alt="Screen Shot 2020-11-19 at 3 42 19 PM" src="https://user-images.githubusercontent.com/71344424/99754185-e1c28180-2ab5-11eb-9f0c-44206460910d.png">


### BUSINESS RULE

#### A.Person
Persons (campus faculty, staff, students) have accounts in the system with personid (PK), name, email, and cell. Only faculty, staff and students are included. One person (and only one) can be one or many of the Persons (campus faculty, staff, students or make an order.

##### Faculty
For faculty we will include a facultyid(PK), personid(FK), thier title, degree, and highest degree. 

##### Student
For students of the university, we will include studentid(PK), personid(FK), graduation year, major, and type of major.
Student can also be a driver (One and only one to one or many)

##### Staff
For staff who are staff members of the university, we will make sure to include their Position and AdminYorN.

#### B.Locations
The university campus will have approved locations in which food can be delivered at these spots. These will include, dorms, university facilities, and approved classroom buildings. The database will keep track of the locations which will include, LocationID, LocationName, LocationAddress and (optional) Latitude and Longitude are maintained in the database. Additionally a food delivery drop-off point is included (designated place for meeting or delivering food in the location – this can be a brief description).
Location can have one or many orders

#### C.Delivery Personnel
Persons can also be drivers (delivery personnel which have to be approved). 
Drivers have licensenumber and datehired plus ratings. You may also want to keep vehicle information (relative to the vehicle that the driver uses)
One and only one vehicle is associated to one or many deliverys made by student driver, the vehicle database includes vehicleid, vehicle plate, model, and year.
All delivery personnel are drivers who are students.

#### D.Orders
There is a flat fee of $5 for each delivery. 
Each delivery is tied to one and only person for the order. The delivery contains deliveryid(PK) driverID(FK) vehicleID(FK), and delivery time.
The order must only come from one restaurant, but a restuarant can have one to many orders from different persons.
For the order database, we will include total price, delivery charge, the driver, and the delivery times. There also will be a unique identifier that ties the ID for the order at the restaurant. For the actual items on the order they will come from the restaurant database so we will not be responsible for that.

#### E.Ratings
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

<img width="1279" alt="Screen Shot 2020-11-20 at 9 21 40 PM" src="https://user-images.githubusercontent.com/71344424/99865376-295d1200-2b77-11eb-81d7-b05612ec075e.png">

#### Ratings and Restaurant

<img width="1280" alt="Screen Shot 2020-11-20 at 9 21 49 PM" src="https://user-images.githubusercontent.com/71344424/99865384-3843c480-2b77-11eb-9fb3-54b6faf05727.png">

#### Staff, Student and Vehicle

<img width="1113" alt="Screen Shot 2020-11-20 at 9 22 39 PM" src="https://user-images.githubusercontent.com/71344424/99865391-4396f000-2b77-11eb-8e1e-2d11d236a573.png">


### MySQL QUERIES

#### Simplified Views

#### 1. ORDER BY total_price descending for the ratings and order tables

This first view is a ORDER BY query consisting of the ratings and order tables, where driver_rating is 5 and this is the [view file](simp1.sql). Below is an image of what the view displays:

<img width="391" alt="simp1" src="https://user-images.githubusercontent.com/61218535/101271017-163c6b80-374d-11eb-824b-8be14bf62052.png">

#### Advanced Views

#### 1. WHERE total_price is greater than $5 and ratings_id is greater than 3

This advanced view displays two AND statements by obtaining data from two tables, which are order and rating tables and this is the [view file](adva1.sql). In the image below the view displays:

<img width="391" alt="Adva1" src="https://user-images.githubusercontent.com/61218535/101271021-1dfc1000-374d-11eb-8276-924888066d25.png">


### MySQL DUMP

This is a dump of the UNCC Delivery schema that displays all the tables.

#### Delivery Table

This is the [Delivery table dump file](SQLdumps/deliverydump). Below is an image that displays part of the delivery table:

<img width="377" alt="deliverydump" src="https://user-images.githubusercontent.com/61218535/101269228-b937ba00-373a-11eb-82e2-9727197bd5ae.png">

As shown by the image above, the table consists of everthing specific to the delivery which includes the Delivery ID, Driver ID, Vehicle ID, and Delivery Time.

#### Drivers Table

This is the [Driver table dump file](SQLdumps/driverdump). Below is an image that displays part of the populated driver table:

<img width="378" alt="driverdump" src="https://user-images.githubusercontent.com/61218535/101269310-cd2feb80-373b-11eb-90c5-477e36c1929b.png">

A shown the image above, it contains information regarding the driver for the delevery services. This information includes the Driver ID, Student ID, License Number, Date Hired and the Driver Rating.

#### Faculty Table

This is the [Faculty table dump file](SQLdumps/facultydump). Below is an image that displays part of the populated faculty table:


<img width="485" alt="facultydump" src="https://user-images.githubusercontent.com/61218535/101269368-46c7d980-373c-11eb-9dcf-9a9693688187.png">

As shown by the image above, the table consists of everything specific to employees who are faculty members of the university which includes their IDs(faculty and person), Title, Highest Degree and College of their Degree. 


#### Locations Table

This is the [locations table dump file](SQLdumps/locationdump). Below is an image that displays part of the populated locations table:

<img width="1028" alt="locationdump" src="https://user-images.githubusercontent.com/61218535/101269419-bd64d700-373c-11eb-99bf-4fb7597b2cc6.png">

As shown in the image above, it displays the information for the deliverable location on campus, which includes the Locations ID, Name, Address, Latitude and longitude and the Drop off Point.

#### Orders Table

This is the [order table dump file](SQLdumps/orderdump). Below is an image that displays part of the populated orders table:

<img width="633" alt="orderdump" src="https://user-images.githubusercontent.com/61218535/101269472-395f1f00-373d-11eb-815a-5524c8a64c7f.png">

As shown the image above, the orders table consists of information relevant to the orders placed which includes the IDs(order, person, delivery, location, driver, and restaurant), the Total Price, and Delevery Fee.


#### Person Table

This is the [person table dump file](SQLdumps/persondump). Below is an image that displays part of the populated person table:

<img width="609" alt="persondump" src="https://user-images.githubusercontent.com/61218535/101269476-42e88700-373d-11eb-8d6e-45b302985193.png">

As shown by the image above, the table consists of important information for the person placing their order, which includes the Person ID, Name, Email, and Number.

#### Restaurant Table

This is the [restaurant table dump file](SQLdumps/restdump). Below is an image that displays part of the populated restaurant table:

<img width="1111" alt="restdump" src="https://user-images.githubusercontent.com/71344424/101269314-d325cc80-373b-11eb-9782-fde2fbc28968.png">

The image partially shows the restaurants available to order from, which consists of restaurants location, name, schedule, and website.

#### Staff Table

This is the [staff table dump file](SQLdumps/staffdump). Below is an image that displays part of the populated staff table:

<img width="330" alt="staffdump" src="https://user-images.githubusercontent.com/71344424/101269307-c2755680-373b-11eb-970e-43c6295b14ad.png">

The image partially shows the staff, consisting of position and if they are either an administrator or not an administrator.

#### Student Table

This is the [student table dump file](SQLdumps/studentdump). Below is an image that displays part of the student table:

<img width="484" alt="studentdump" src="https://user-images.githubusercontent.com/71344424/101269300-b7222b00-373b-11eb-9f0b-d9b99b3ce500.png">

The image partially shows students at the university that contains information specific to the student which consists of their graduation year, major, and level type.

#### Vehicle Table

This is the [vehicle table dump file](SQLdumps/vehicledump). Below is an image that displays part of the vehicle table:

<img width="287" alt="vehicledump" src="https://user-images.githubusercontent.com/71344424/101269293-a5d91e80-373b-11eb-9b8d-52175d676f9c.png">

The table consists of everything that is needed for a vehicle such as, vehicle plate, model, and make type.

#### Ratings Table

This is the [ratings table dump file](SQLdumps/ratingsdump). Below is an image that displays part of the ratings table:

<img width="602" alt="ratingsdump" src="https://user-images.githubusercontent.com/61218535/101268996-80e2ac80-3737-11eb-8a45-74253d478924.png">

The ratings table consists of the driver rating (1-5), restuarant rating (1-5), driver comment, and restuarant comment.


### RELATIONSHIPS

#### delivery_id 

In the image below, the box highlighted in green shows the primary key delivery_id in the delivery table. For the box highlighted in gold, it represents the foreign key in the order table:

![rel-delvid (1)](https://user-images.githubusercontent.com/61218535/101274304-f156f100-376a-11eb-9175-8c4e1b98bfa4.png)

#### driver_id 

In the image below, the box highlighted in green shows the primary key driver_id in the driver table. For the boxes highlighted in gold, it represents the foreign keys in the order and delivery tables:

![rel-drivid](https://user-images.githubusercontent.com/61218535/101272150-98319200-3757-11eb-92a1-62df26d37821.png)

#### location_id 

In the image below it shows the primary key location_id outlined in green found in the location table. The location_id foreign key in the order table is outlined in gold:

![rel-locid](https://user-images.githubusercontent.com/61218535/101271896-2b1cfd00-3755-11eb-80fa-0b5e78cafc66.png)

#### order_id

The image below displays the primary key of order_id highlighted in green in the orders table. The foreign key is located in the ratings table that is highlighted in gold:

![rel-orderid](https://user-images.githubusercontent.com/61218535/101271940-a7174500-3755-11eb-8af4-f66477249514.png)

#### person_id 

The image below shows the primary key person_id outlined in green which is located in the person table. The foreign keys are outlined in gold that is displayed in the order, faculty, and student tables:

![rel-personid](https://user-images.githubusercontent.com/61218535/101272011-57854900-3756-11eb-98e0-24aa2e3e52f3.png)

#### restaurant_id

In the image below, the primary key restaurant_id is outlined in green which is located in the restaurant table. The foreign key that is outlined in gold is shown in the order table:

![rel-restid](https://user-images.githubusercontent.com/61218535/101272040-99ae8a80-3756-11eb-9f83-b86d5f5e1c21.png)

#### vehicle_id

In the image below, the box highlighted in green shows the primary key vehicle_id in the vehicle table. For the box highlighted in gold, it represents the foreign key in the delivery table:

![rel-vehicleid](https://user-images.githubusercontent.com/61218535/101272062-dd08f900-3756-11eb-9d7f-0e5a53cbf8fb.png)



###Stored Procedure

###Web/App Implementation (Optional) or Description of Future Work

###PPT Video (link)
