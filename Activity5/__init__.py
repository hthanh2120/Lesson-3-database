import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    port="3306",
    user="root",
    password="21102000",
    database="store_cms_plusplus"
)

mycursor = mydb.cursor()

def update_sold(id,up_sold):
    str = f"update laptop set sold = '{up_sold}' WHERE id='{id}';"
    mycursor.execute(str)
    mycursor.execute(f"select * from laptop where id = '{id}';")
    myresult = mycursor.fetchall()
    print(myresult)

update_sold('6',"120")

# def update_laptop(id, sold):
#     querry = "UPDATE store_cms_plusplus.laptop SET sold = %s, last_updated_timestamp = now() WHERE id = %s"
#     values = (sold, id)
#     mycursor.execute(querry, values)
#     mydb.commit()
#
#
# update_laptop(1, 100)

# mycursor.execute("SELECT * FROM store_cms_plusplus.laptop WHERE name LIKE '%a1%'")
#
# result = mycursor.fetchall()
#
# print(result)

# def insert_laptop(name, url, maker, type, ram, cpu, ssd, hdd, price, card, screen_resolution, screen_size, sold):
#   sql = "INSERT INTO store_cms_plusplus.laptop (name, url, maker, type, ram, cpu, ssd, hdd, price, card, screen_resolution, screen_size, sold) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
#   val = (name, url, maker, type, ram, cpu, ssd, hdd, price, card, screen_resolution, screen_size, sold)
#
#   mycursor.execute(sql, val)
#
#   mydb.commit()


# insert_laptop('Laptop ASUS ROG Zephyrus S GX531GM-ES004T (15.6" FHD/i7-8750H/16GB/512GB SSD/GTX 1060/Win10/2.1 kg)',
#               'https://phongvu.vn/may-tinh-xach-tay-laptop-asus-rog-zephyrus-gx531gm-es004t-i7-8750h-s19010009.html',
#               'ASUS',
#               'ROG',
#               '8GB',
#               'Intel Core i7',
#               '512GB',
#               '1TB',
#               '22000000',
#               'NVIDIA GeForce GTX 1050 3GB GDDR5',
#               '1920x1080',
#               '15.6',
#               '30')


# def seach_laptop(name):
#   sql = "SELECT * FROM store_cms_plusplus.laptop WHERE name = " + "'" + name + "'" + ";"
#
#   mycursor.execute(sql)
#
#   myresult = mycursor.fetchall()
#   my_list = []
#   for x in myresult:
#     my_list.append(x)
#
#   for i in my_list:
#     id = i[0]
#     name = i[1]
#     maker = i[3]
#     type = i[4]
#     ram = i[5]
#     cpu = i[6]
#     ssd = i[7]
#     hdd = i[8]
#     price = i[9]
#     card = i[10]
#     screen_resolution = i[11]
#     screen_size = i[12]
#     sold = i[13]
#     print(
#       "id: %s, name: %s, maker: %s, type: %s, ram: %s, cpu: %s, ssd: %s, hdd: %s, price: %s, card: %s, screen_resolution: %s, screen_size: %s, sold: %s" %
#       (id, name, maker, type, ram, cpu, ssd, hdd, price, card, screen_resolution, screen_size, sold))
#
#
# seach_laptop('Laptop ASUS ROG Zephyrus S GX531GM-ES004T (15.6" FHD/i7-8750H/16GB/512GB SSD/GTX 1060/Win10/2.1 kg)')

# def sold_update(id, sold_update):
#     sql = "UPDATE store_cms_plusplus.laptop SET sold = " + sold_update + ", last_updated_timestamp = CURRENT_TIMESTAMP WHERE id = " + id + ";"
#     mycursor.execute(sql)
#
#     mydb.commit()
#
# sold_update("8", "50")
