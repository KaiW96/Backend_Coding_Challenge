# Shopify Coding Challenge

Updated: January 2022

## Authors
* Kai Wang

# Installation

Steps to compile and run this application

1. Clone The Repository on your local device.
2. If your local device already has a mysql table that is named "shopify_inventory", drop it.
3. Source the sql file on the MySQL Command Line Client(make sure to include your full path in the command)

For example:
  ```C:\Users\---Your path---\Learning-Management-System\database\database.sql```
  
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
