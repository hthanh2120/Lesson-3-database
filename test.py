import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  port="3306",
  user="root",
  password="21102000",
  database="store_cms_plusplus"
)

mycursor = mydb.cursor()

def seach_laptop(maker, type):
    sql = "SELECT * FROM store_cms_plusplus.laptop WHERE true"
    if maker!=None:
        sql += " AND maker LIKE '%" + maker + "%'"
    if type!=None:
        sql += " AND type LIKE '%" + type + "%'"

    print(sql)
    mycursor.execute(sql)
    myresult = mycursor.fetchall()

    for x in myresult:
        id = x[0]
        name = x[1]
        maker = x[3]
        type = x[4]
        ram = x[5]
        cpu = x[6]
        ssd = x[7]
        hdd = x[8]
        price = x[9]
        card = x[10]
        screen_resolution = x[11]
        screen_size = x[12]
        sold = x[13]
        print("id: %s, name: %s, maker: %s, type: %s, ram: %s, cpu: %s, ssd: %s, hdd: %s, price: %s, card: %s, screen_resolution: %s, screen_size: %s, sold: %s" % \
            (id, name, maker, type, ram, cpu, ssd, hdd, price, card, screen_resolution, screen_size, sold))


seach_laptop("ASUS", "Vivo")