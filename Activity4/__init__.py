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
    def __str__(self):
        return "Maker: %s, Quantity: %s" % (self.maker, self.quantity)

def getCounterByMaker():
    str = "select maker, count(maker) 'quantity' from laptop group by maker order by quantity desc;"
    mycursor.execute(str)
    myresult = mycursor.fetchall()
    list = []
    for x in myresult:
        counter = Counter(x[0], x[1])
        list.append(counter)
    print(list)
    for x in list:
        print(x)

getCounterByMaker()

# 4.3 Viết tính năng thống kê số lượng loại máy tính của mỗi hãng, sắp xếp theo số lượng giảm dần
class Statistic:
    def __init__(self, maker, sold, totalMoney):
        self.maker = maker
        self.sold = sold
        self.totalMoney = totalMoney
    def __str__(self):
        return "Maker: %s, Sold: %s, Total Money:" % (self.maker, self.sold, self.totalMoney)

def getStatisticByMaker():
    str = "select maker, sum(sold), sum(sold*price) 'totalMoney' from laptop group by maker ;"
    mycursor.execute(str)
    myresult = mycursor.fetchall()
    list = []
    for x in myresult:
        statistic = Statistic(x[0], x[1], x[2])
        list.append(x)
    print(list)
    for x in list:
        print(x)

getStatisticByMaker()