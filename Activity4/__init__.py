import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  port="3306",
  user="root",
  password="21102000",
  database="store_cms_plusplus"
)

mycursor = mydb.cursor()

mycursor = mydb.cursor()
class Statistic :
    def __init__(self, maker, sold, totalmoney):
        self.maker = maker
        self.sold = sold
        self.totalmoney = totalmoney
    def __str__(self):
        return "maker = %s, sold = %s, totalmoney = %s" % (self.maker, self.sold,self.totalmoney)

def getStatisticByMaker():
    str = "select maker, sum(sold), sum(sold*price) 'totalMoney' from laptop group by maker ;"
    mycursor.execute(str)
    myresult = mycursor.fetchall()
    list = []
    for x in myresult:
        statistic = Statistic(x[0], x[1], x[2])
        list.append(statistic)
    print(list)
    for x in list:
        print(x)

getStatisticByMaker()

# mycursor.execute("SELECT * FROM laptop ORDER BY price ASC LIMIT 5;")
# result = mycursor.fetchall()
# print(result)
#
# mycursor.execute('SELECT DISTINCT maker as "Hang sx" FROM laptop ORDER BY maker ASC;')
# result = mycursor.fetchall()
# print(result)

# 4.1 Viết câu query
# 1. Trả ra 5 laptop có giá nhỏ nhất.
# SELECT * FROM store_cms_plusplus.laptop ORDER BY price ASC LIMIT 5;
#
# 2. Trả ra các hãng sản xuất laptop và sắp xếp theo thứ tự Alphabet.
# SELECT DISTINCT maker FROM store_cms_plusplus.laptop ORDER BY maker ASC;
#
# 3. Viết câu query trả ra doanh số laptop bán được và doanh thu của cửa hàng.
# SELECT SUM(sold) AS 'Doanh số', SUM(sold * price) AS 'Doanh thu' FROM store_cms_plusplus.laptop;
# class Statistic:
#     def __init__(self, maker, sold, totalMoney):
#         self.maker = maker
#         self.sold = sold
#         self.totalMoney = totalMoney
#     def __str__(self):
#         return "Hãng: %s, Số lượng: %s, Số tiền: %s" % (self.maker, self.sold, self.totalMoney)
#
# def getStatisticbyMaker():
#     mycursor.execute(f"SELECT maker, sold, (sold * price) FROM store_cms_plusplus.laptop GROUP BY maker ORDER BY maker ASC;")
#     result = mycursor.fetchall()
#     result_list = []
#     for i in result:
#         stat = Statistic(i[0], i[1], i[2])
#         result_list.append(stat)
#     return result_list
#
# for i in getStatisticbyMaker():
#     print(i)

# 4.2 Viết chức năng thống kê số lượng, số tiền bán được của mỗi hãng laptop.
# class Counter:
#     def __init__(self, maker, quantity):
#         self.maker = maker
#         self.quantity = quantity
#     def __str__(self):
#         return "Maker: %s, Quantity: %s" % (self.maker, self.quantity)
#
# def getCounterByMaker():
#     str = "select maker, count(maker) as 'quantity' from laptop group by maker order by quantity desc;"
#     mycursor.execute(str)
#     myresult = mycursor.fetchall()
#     list = []
#     for x in myresult:
#         counter = Counter(x[0], x[1])
#         list.append(counter)
#     print(list)
#     for x in list:
#         print(x)
#
# getCounterByMaker()

# 4.3 Viết tính năng thống kê số lượng loại máy tính của mỗi hãng, sắp xếp theo số lượng giảm dần
# class Statistic:
#     def __init__(self, maker, sold, totalMoney):
#         self.maker = maker
#         self.sold = sold
#         self.totalMoney = totalMoney
#     def __str__(self):
#         return "Maker: %s, Sold: %s, Total Money:" % (self.maker, self.sold, self.totalMoney)
#
# def getStatisticByMaker():
#     str = "select maker, sum(sold), sum(sold*price) 'totalMoney' from laptop group by maker ;"
#     mycursor.execute(str)
#     myresult = mycursor.fetchall()
#     list = []
#     for x in myresult:
#         statistic = Statistic(x[0], x[1], x[2])
#         list.append(x)
#     print(list)
#     for x in list:
#         print(x)
#
# getStatisticByMaker()