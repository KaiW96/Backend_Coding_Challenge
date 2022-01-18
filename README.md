# Shopify Coding Challenge

Updated: January 2022

The repository will be set to public after the submission deadline on January 19th

## Authors
* Kai Wang

# Required Technologies
Python 3.6 and above
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

8. Now that you have all the dependencies needed to run this application, run the command
	```python app.py```.

Go to your default browser and run the program on localhost:5000

# Sample Screenshots

## Main Menu:

<img width="929" alt="mainmenu" src="https://user-images.githubusercontent.com/77874716/149857352-ed44bc40-a12e-4629-8733-0d8cf3c3bd42.PNG">

## View Inventory:
<img width="907" alt="view" src="https://user-images.githubusercontent.com/77874716/149859426-7948b5ad-eb2f-41b3-adab-8f91dc13b8cd.PNG">


