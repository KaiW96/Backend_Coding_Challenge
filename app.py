from flask import Flask, render_template, request, redirect
from flask_mysqldb import MySQL
import csv
import sys
import pandas as pd
import MySQLdb

#import yaml

app = Flask(__name__)

# Configure db
#db = yaml.load(open('db.yaml'))
#app.config['MYSQL_HOST'] = db['localhost']
#app.config['MYSQL_USER'] = db['mysql_user']
#app.config['MYSQL_PASSWORD'] = db['mysql_password']
#app.config['MYSQL_DB'] = db['mysql_db']

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PORT'] = 3306

app.config['MYSQL_PASSWORD'] = ""
app.config['MYSQL_DB'] = "shopify_inventory"
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
#CORS(app, expose_headers='Authorization')

mysql = MySQL(app)

""" ---- Index API ----- """
@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        if request.form['submit_button'] == 'Create':
        # Fetch form data
            userDetails = request.form
            name = userDetails['name']
            price = userDetails['price']
            department = userDetails['department']
            description = userDetails['description']
            cur = mysql.connection.cursor()
            cur.execute("INSERT INTO inventory(name,price,department,description) VALUES (%s, %s,%s,%s)", (name,price,department,description))
            mysql.connection.commit()
            cur.close()

        elif request.form['submit_button'] == 'Edit':
            return redirect('/edit')
        
        elif request.form['submit_button'] == 'Delete':
            return redirect('/delete')

        elif request.form['submit_button'] == 'View':
            return redirect('/view')

        # export to csv functionality
        elif request.form['submit_button'] == 'Export to CSV':
               header = ['Product ID', 'Name','Price', 'Department', 'Description']
               
               #Had to use MySQLdb to connect instead of mysql.connection for it to work
               db = MySQLdb.connect("localhost","root","","shopify_inventory")
               cur = db.cursor()
               cur.execute("SELECT * FROM inventory")
               
               result = cur.fetchall()
               c = csv.writer(open('user_dump01.csv', 'w',encoding='utf-8'))
               c.writerow(header)
               for row in result:
                   c.writerow(row)
    return render_template('index.html')

""" ---- Edit API ----- """
@app.route('/edit',methods=['GET', 'POST'])
def edit():
    if request.method == 'POST':
        if request.form['submit_button'] == 'Return':
          return redirect('/')
    
        if request.form['submit_button'] == 'Edit':
            userDetails = request.form
            product_id = userDetails['product_id']
            name = userDetails['name']
            #email = userDetails['email']
            price = userDetails['price']
            department = userDetails['department']
            description = userDetails['description']
            cur = mysql.connection.cursor()
            #update query, used product id as primary key and overwrites the rest
            cur.execute("UPDATE inventory SET name = (%s), price = (%s),department = (%s),description = (%s) WHERE product_id = (%s)",
             (name,price,department,description, product_id))
            mysql.connection.commit()
            cur.close()
    return render_template('edit.html')


""" ---- Delete API ----- """
@app.route('/delete',methods=['GET', 'POST'])
def delete():
    if request.method == 'POST':
        if request.form['submit_button'] == 'Return':
          return redirect('/')
    
        if request.form['submit_button'] == 'Delete':
            userDetails = request.form
            product_id = userDetails['product_id']
            cur = mysql.connection.cursor()
            #delete query, used product id as primary key and overwrites the rest
            cur.execute("DELETE From inventory WHERE product_id = (%s)", [product_id])
            mysql.connection.commit()
            cur.close()
    return render_template('delete.html')

""" ---- View API ----- """
@app.route('/view',methods=['GET', 'POST'])
def users():
    if request.method == 'POST':
          return redirect('/')

    cur = mysql.connection.cursor()
    resultValue = cur.execute("SELECT * FROM inventory")
    userDetails = cur.fetchall()
    return render_template('view.html',userDetails=userDetails)



if __name__ == '__main__':
    app.run(debug=True)
