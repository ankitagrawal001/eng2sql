from flask import Flask , render_template , request, jsonify
from eng2sql.eng2sql import Eng2sql
import pymysql as p

app = Flask(__name__)

db = p.connect("localhost","abc","test123","city" )
cursor = db.cursor()

@app.route("/")
def hello():
    return render_template("webapp.html")

@app.route('/', methods=['POST'])
def my_form_post():
    text = request.form['text']
    processed_text = text.upper()
    return processed_text

@app.route('/abcd', methods = ['POST'])
def get_post_javascript_data():
    #jsdata = "fndbfkjd" #request.form['javascript_data']
    jsdata = request.get_json()
    res = Eng2sql(
        database_path=  'database_store/city.sql',
        language_path=  'lang_store/english.csv',
    ).get_query(jsdata["transcript"])
    #print(res)
    #print(type(res))
    #return res
    #res = lower(res)
    cursor.execute(res)
    field_name = [field[0] for field in cursor.description]
    results = cursor.fetchall()
    #print(results)
    c= "The Generated Query : \n\n " + res + "\n\n" + "Results \n \n"
    for k in field_name:
         c += k + "  "
    c += "\n\n"
    for i in results:
        for j in i:
            c+=str(j) + "  "
        c += "\n"
    #print(c)
    return c

if __name__ == "__main__":
    app.debug = True
    app.run()
