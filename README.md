## JPACRUDProject

This project highlights a few flowers that are great additions to a bouquet. A user can execute basic CRUD functions using the site.

Technologies used:
Java
JEE
JSP & JEL
Spring Boot Spring STS
Gradle
Apache Tomcat 8.5
MySQL
MySQL Workbench
AWS EC2
HTML
CSS
XML
Bootstrap
Git
Github
Eclipse
Atom

* Database:
The database used is collection of data on flowers. Information like name, family, number of species, type (perennial/annual), etc. are provided.

* User interaction:
The first page the user interacts with is the homepage. On this page the user can explore current flowers found in the database or add new flowers to the database.

If the user chooses to "Get info" on a flower, they are redirected to a new page where database information is provided for the flower chosen. On this page, the user is also given the the option to delete or edit the flower described.

The user can enter information to create a new flower. Following submission of this information, the user is  redirected to a page that displays the new data just entered.

A range of technologies were used in this project. The main classes/interfaces included an entity class for flowers in the database, a flower controller, a range of .jsp files, a DAO class, and a DAO interface. MySQLWorkBench was used to create the flower database.

## Lesson learned:
I learned about how to enter information into a database using MySQLWorkBench. It was important that variables types in MySQLWorkBench matched variable types found in the actual entity class of the project. I also learned a bit more about how entity managers work and their role in managing databases.  
