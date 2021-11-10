import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  port="3306",
  user="root",
  password="21102000",
  database="store_cms_plusplus"
)

mycursor = mydb.cursor()

# 4.1 Viết câu query
# 1. Trả ra 5 laptop có giá nhỏ nhất.
# SELECT * FROM store_cms_plusplus.laptop ORDER BY price ASC LIMIT 5;
#
# 2. Trả ra các hãng sản xuất laptop và sắp xếp theo thứ tự Alphabet.
# SELECT DISTINCT maker FROM store_cms_plusplus.laptop ORDER BY maker ASC;
#
# 3. Viết câu query trả ra doanh số laptop bán được và doanh thu của cửa hàng.
# SELECT SUM(sold) AS 'Doanh số', SUM(sold * price) AS 'Doanh thu' FROM store_cms_plusplus.laptop;

# 4.2 Viết chức năng thống kê số lượng, số tiền bán được của mỗi hãng laptop.
class Counter:
    def __init__(self, maker, quantity):
        self.maker = maker
        self.quantity = quantity

def getCounterByMaker():
    str = "select maker, count(maker) 'quantity' from laptop group by maker order by quantity desc;"
    mycursor.execute(str)
    myresult = mycursor.fetchall()
    list = []
    for x in myresult:
        list.append(x)
    return list

def main():
    list = getCounterByMaker()
    for x in list:
        maker = x[0]
        quantity = x[1]
        print(f"Maker: {maker}, Quantity: {quantity}")

main()



# 4.3 Viết tính năng thống kê số lượng loại máy tính của mỗi hãng, sắp xếp theo số lượng giảm dần
class Counter:
    def __init__(self, maker, quantity):
        self.maker = maker
        self.quantity = quantity

def getStatisticByMaker():
    str = "select maker, sum(sold), sum(sold*price) 'totalMoney' from laptop group by maker ;"
    mycursor.execute(str)
    myresult = mycursor.fetchall()
    list = []
    for x in myresult:
        list.append(x)
    return list

def main1():
    list = getStatisticByMaker()
    for x in list:
        maker = x[0]
        sold = x[1]
        totalMoney = x[2]
        print(f"Maker: {maker}, Sold: {sold}, totalMoney: {totalMoney}")

main1()
