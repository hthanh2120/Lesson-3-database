import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  port="3306",
  user="root",
  password="21102000",
  database="store_cms_plusplus"
)

mycursor = mydb.cursor()

#3.1 Viết các câu query
# -- 1. Tìm kiếm các laptop có ram từ 4GB đến 8GB (Bao gồm cả 2 giá trị này)
# SELECT * FROM store_cms_plusplus.laptop WHERE ram BETWEEN 4 AND 8;
#
# -- 2. Tìm kiếm các laptop có ram=8GB, ssd=256GB
# SELECT * FROM store_cms_plusplus.laptop WHERE ram = "8GB" AND ssd = "256GB";
#
# -- 3. Tìm kiếm các laptop có maker chứa ký tự "a"
# SELECT * FROM store_cms_plusplus.laptop WHERE maker LIKE "%a%";
#
# -- 4. Tìm kiếm các laptop có cpu là Intel
# SELECT * FROM store_cms_plusplus.laptop WHERE `cpu` LIKE "Intel%";
#
# -- 5. Tìm kiếm các laptop có sold > 30 và sắp xếp các laptop theo giá giảm dần.
# SELECT * FROM store_cms_plusplus.laptop WHERE sold > 30 ORDER BY sold DESC;

# 3.2 Viết các tính năng cho chương trình tìm kiếm Laptop
def seach_laptop(maker, type, screen_resolution, price, sold, start, end):
    sql = "SELECT * FROM store_cms_plusplus.laptop WHERE true"
    if maker!=None:
        sql += " AND maker LIKE '%" + maker + "%'"
    if type!=None:
        sql += " AND type LIKE '%" + type + "%'"
    if screen_resolution!=None:
        sql += " AND type LIKE '%" + screen_resolution + "%'"
    if price!=None:
        sql += " AND price >" + price
    if sold!=None:
        sql += " AND sold >=" + sold
    if start!=None and end!=None:
        sql += " AND price BETWEEN " + start + " AND " + end

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


seach_laptop("ASUS", "Vivo", None, None, None, "10000000", "50000000")






# def seach_laptop():
#     sql = "SELECT maker, count(*) as quantity FROM store_cms_plusplus.laptop group by maker order by quantity desc"
#
#     print(sql)
#     mycursor.execute(sql)
#     myresult = mycursor.fetchall()
#
#     for x in myresult:
#         print("maker:", x[0] + " quantity:", x[1])
#      maker = x[0]
#      quantity = x[1]
#      maker = x[3]
#      type = x[4]
#      ram = x[5]
#      cpu = x[6]
#      ssd = x[7]
#      hdd = x[8]
#      price = x[9]
#      card = x[10]
#      screen_resolution = x[11]
#      screen_size = x[12]
#      sold = x[13]
#          print("id: %s, name: %s, maker: %s, type: %s, ram: %s, cpu: %s, ssd: %s, hdd: %s, price: %s, card: %s, screen_resolution: %s, screen_size: %s, sold: %s" % \
#              (id, name, maker, type, ram, cpu, ssd, hdd, price, card, screen_resolution, screen_size, sold))
#
#
# seach_laptop()