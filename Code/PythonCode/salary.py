from pyspark.sql import SparkSession

import pymysql

if __name__ == "__main__":
    spark = SparkSession.builder.appName("wordcount").master("local[2]").getOrCreate()
    sc = spark.sparkContext

    # 1 创建RDD
    tm = sc.textFile("C:\\Users\\李洋\\Desktop\\data.txt")


    # 2 对每条数据进行处理，处理成 pairRDD key：value  ------ map
    def handline(line):
        # print(line)
        infos = line.split("\t")
        my_str = infos[10]
        if my_str == "无收入":
            return "无收入", 1
        elif my_str == "500元以下":
            return "500元以下", 1
        elif my_str == "500-2000元":
            return "500-2000元", 1
        elif my_str == "2000-5000元":
            return "2000-5000元", 1
        elif my_str == "5000-10000元":
            return "5000-10000元", 1
        elif my_str == "10000-20000元":
            return "10000-20000元", 1
        elif my_str == "20000以上":
            return "20000以上", 1
        else:
            return "其他", 1


    tep_result = tm.map(lambda line: handline(line))
    sumCount = tep_result.reduceByKey(lambda x, y: x + y)
    # [print(line) for line in sumCount.collect()]
    result_list = sumCount.collect();


    def takeSecond(elem):
        return elem[1]

    result_list.sort(key=takeSecond)


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

    sql_insert = "insert into salary(type,count) " \
                 "values(%s,%s)"

    sql_delete = "delete from salary"

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
