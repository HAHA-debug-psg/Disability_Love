import pymysql

from pyspark.sql import SparkSession

if __name__ == "__main__":
    spark = SparkSession.builder.appName("wordcount").master("local[2]").getOrCreate()
    sc = spark.sparkContext

    # 1 创建RDD
    tm = sc.textFile("C:\\Users\\李洋\\Desktop\\data.txt")


    # 2 对每条数据进行处理，处理成 pairRDD key：value  ------ map
    def handline(line):
        # print(line)
        infos = line.split("\t")
        my_str = infos[9]
        if my_str == "null":
            return "其他", 1
        else:
            return my_str, 1


    result = tm.map(lambda line: handline(line))
    sumCount = result.reduceByKey(lambda x, y: x + y)
    print(sumCount.collect())

    result_list = sumCount.collect();

    def takeSecond(elem):
        return elem[1]

    result_list.sort(key=takeSecond)

    print(result_list)

    # 建立数据库连接
    db = pymysql.connect(
        host="localhost",
        port=3306,
        user="root",
        password="123456",
        database="mydatabase"
    )
    # 获取游标对象
    cursor = db.cursor()

    sql_insert = "insert into education(name,count) " \
                 "values(%s,%s)"

    sql_delete = "delete from education"


    cursor.execute(sql_delete)

    for line in result_list:
        values = (line[0], int(line[1]))
        print(values)
        cursor.execute(sql_insert, values)
    # 关闭游标，提交，关闭数据库连接
    # 如果没有这些关闭操作，执行后在数据库中查看不到数据
    cursor.close()
    db.commit()
    db.close()
