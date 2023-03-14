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
        my_str = infos[2]
        if my_str[0:2] == "上海":
            return "上海", 1
        elif my_str[0:2] == "云南":
            return "云南", 1
        elif my_str[0:3] == "内蒙古":
            return "内蒙古", 1
        elif my_str[0:2] == "北京":
            return "北京", 1
        elif my_str[0:2] == "台湾":
            return "台湾", 1
        elif my_str[0:2] == "吉林":
            return "吉林", 1
        elif my_str[0:2] == "四川":
            return "四川", 1
        elif my_str[0:2] == "天津":
            return "天津", 1
        elif my_str[0:2] == "宁夏":
            return "宁夏", 1
        elif my_str[0:2] == "安徽":
            return "安徽", 1
        elif my_str[0:2] == "山东":
            return "山东", 1
        elif my_str[0:2] == "山西":
            return "山西", 1
        elif my_str[0:2] == "广东":
            return "广东", 1
        elif my_str[0:2] == "广西":
            return "广西", 1
        elif my_str[0:2] == "新疆":
            return "新疆", 1
        elif my_str[0:2] == "江苏":
            return "江苏", 1
        elif my_str[0:2] == "江西":
            return "江西", 1
        elif my_str[0:2] == "河北":
            return "河北", 1
        elif my_str[0:2] == "河南":
            return "河南", 1
        elif my_str[0:2] == "浙江":
            return "浙江", 1
        elif my_str[0:2] == "海南":
            return "海南", 1
        elif my_str[0:2] == "湖北":
            return "湖北", 1
        elif my_str[0:2] == "湖南":
            return "湖南", 1
        elif my_str[0:2] == "澳门":
            return "澳门", 1
        elif my_str[0:2] == "甘肃":
            return "甘肃", 1
        elif my_str[0:2] == "福建":
            return "福建", 1
        elif my_str[0:2] == "西藏":
            return "西藏", 1
        elif my_str[0:2] == "贵州":
            return "贵州", 1
        elif my_str[0:2] == "辽宁":
            return "辽宁", 1
        elif my_str[0:2] == "重庆":
            return "重庆", 1
        elif my_str[0:2] == "陕西":
            return "陕西", 1
        elif my_str[0:2] == "青海":
            return "青海", 1
        elif my_str[0:2] == "香港":
            return "香港", 1
        elif my_str[0:3] == "黑龙江":
            return "黑龙江", 1
        else:
            return "海外", 1


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
    # percentage_list = mapValuesRDD.collect()
    #
    # result_list = [(result_list[i] + (percentage_list[i][1],)) for i in range(min(len(result_list), len(percentage_list)))]
    #
    # print(result_list)


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

    sql_insert = "insert into province(name,nums) " \
                 "values(%s,%s)"

    sql_delete = "delete from province"


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
