# Simple Blog

A simple ASP.NET MVC blog application.

## Getting Started

### Prerequisites

To run this project you will need to have installed:


- Visual Studio <https://visualstudio.microsoft.com/>
- MySQL <https://www.mysql.com/>


### Installing

1. Clone the project to your computer
```
git clone https://github.com/sharicahill/aspnetmvc-blog.git
```
2. Open the project in Visual Studio and build the application. This will install all the required NuGet packages.

3. Create a new MySQL database called simpleblog via the MySQL console.

```
CREATE DATABASE simpleblog;
```

4. Open the Web.config file and check the 'MainDb' connection string. Ensure the database user and password matches your local MySQL settings.

5. Run the script ```DeployDb-Dev.bat``` in the SimpleBlog/Tools folder. This will run the database migrations for this project using Fluent Migrator to update the database schema.

6. Run the following SQL commands in MySQL command-line or via MySQL Workbench. This will create a test user with admin privileges so you can log in to the application.

```
INSERT INTO simpleblog.users (id, username, email, password_hash) VALUES (1, 'test', 'test@test.com', '$2a$13$m9wDr2SucoSCxmc4.PWypuF8A1u/XSvTZQf2hJqzw.WqV7XMTORWi');

INSERT INTO simpleblog.roles (id, name) VALUES (1, 'admin');

INSERT INTO simpleblog.role_users (user_id, role_id) VALUES (1, 1)
```

7. Run the website and you will now be able to log in with the user ```test``` and password ```test```.
