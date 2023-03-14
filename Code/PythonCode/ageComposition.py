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
        # return int(infos[3]), 1
        if int(infos[3]) <= 18:
            return "0-18", 1
        elif int(infos[3]) <= 30:
            return "18-30", 1
        elif int(infos[3]) <= 40:
            return "30-40", 1
        elif int(infos[3]) <= 50:
            return "40-50", 1
        elif int(infos[3]) <= 60:
            return "50-60", 1
        elif int(infos[3]) > 60:
            return "60-more", 1
        else:
            return "-1", 1


    tep_result = tm.map(lambda line: handline(line))
    sumCount = tep_result.reduceByKey(lambda x, y: x + y)
    # [print(line) for line in sumCount.collect()]
    result = sumCount.collect();
    print(result)
    result_list = sorted(result)
    print(result_list)

    # sumValue = 0
    # for a in result_list:
    #     sumValue = sumValue + a[1]
    # # print(sumValue)
    # rdd = sc.parallelize(result_list)
    # mapValuesRDD = rdd.mapValues(lambda x: x / sumValue)
    #
    # print(mapValuesRDD.collect())

    # db_list = result_list + mapValuesRDD.collect()

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

    sql_insert = "insert into age(age_type,nums) " \
                 "values(%s,%s)"

    sql_delete = "delete from age"

    # num = []
    # # percentage = []
    # for r in db_list:
    #     # print(r)
    #     num.append(r[1])

    # print(num)
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
