# Shopify Coding Challenge

Updated: January 2022

The repository will be set to public after the submission deadline on January 19th

## Youtube Demonstration
The youtube link below will take you to the live demonstration of the application in case you are not able install or run the program.
```Link-------------------------------------------```

## Authors
* Kai Wang

# Required Technologies
Python 3.6 and above <br />
MySQl database

# Installation

Steps to compile and run this application

1. Clone The Repository on your local device.
2. If your local device already has a mysql table that is named "shopify_inventory", drop it.
3. Source the sql file on the MySQL Command Line Client(make sure to include your full path in the command)

For example:
  ```C:\Users\---Your path---\Backend_Coding_Challenge\database\database.sql```

Followed with
  ```use shopify_inventory```
  
4. Navigate back to Learning-Management-System folder and in a terminal, enter the following commands

	```pip3 install -r requirements.txt```
	
5. Now we create a virtual environment in python

	```python -m venv env```

	```.\env\Scripts\activate```

	```pip install flask```

The virtual environment folder is included for now to include all requirements and facilitate testing.

You may or may not need to change the MySQL credentials such as password.
In my code, the Host is set as ```localhost```
user as ```root```, port as ```3306```
and no password is set.

If you need to make any changes, go to the app.py file and set your credentials in the code located in lines 20 to 28

8. Now that you have all the dependencies needed to run this application, run the command
	```python app.py```.

Go to your default browser and run the program on localhost:5000 or ```http://127.0.0.1:5000/```

There are two ways to populate the database. The first method is by manually creating a new item in the application. 
The second method is by using the provided SQL queries from Queries.sql in the database folder.

# Sample Screenshots

## Main Menu:

<img width="929" alt="mainmenu" src="https://user-images.githubusercontent.com/77874716/149857352-ed44bc40-a12e-4629-8733-0d8cf3c3bd42.PNG">

## View Inventory:
<img width="907" alt="view" src="https://user-images.githubusercontent.com/77874716/149859426-7948b5ad-eb2f-41b3-adab-8f91dc13b8cd.PNG">

## Create Item Page:
Enter the Name, Price, Department, Description and Store URL. A unique Product ID will automatically be created.
<img width="930" alt="create" src="https://user-images.githubusercontent.com/77874716/149860638-aebfd1bb-e39f-4e7d-94e1-e5dd9d2763b5.PNG">


## Edit Page:
Select an item to edit. In this screenshot the fourth product from the inventory was selected. Every parameter can be edited except 
the Product ID since it is set as a primary key. 
<img width="931" alt="edit" src="https://user-images.githubusercontent.com/77874716/149859619-8e2ba4c8-8342-4390-bf38-b841ff4dd3ce.PNG">

## Delete Page:
Select an item to delete. Once the Item is deleted it will take you to the confirmation screen below. From here you can either return to 
main menu or view inventory.
<img width="932" alt="delete" src="https://user-images.githubusercontent.com/77874716/149864865-f1d1b47e-6bdb-4188-8205-34e1fb4e39ad.PNG">


## Export to CSV:
In the view inventory page, click on the Export button to get the data of the selected product. A csv file will be created in the current directory.
Below is a screen shot of product 7 data exported in a csv format. 
<img width="725" alt="export" src="https://user-images.githubusercontent.com/77874716/149861486-91bb0381-286b-492c-862d-35d8a170bcda.PNG">

# Routes
| API Endpoints | Description | GET | POST | DELETE
| --- | --- |
| `/` | Main Menu | Query all inventory | redirect to create | |
| `git diff` | Show file differences that **haven't been** staged |
