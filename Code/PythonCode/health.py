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
        my_str = infos[4]
        if my_str == "截瘫":
            return "截瘫", 1
        elif my_str == "脑瘫":
            return "脑瘫", 1
        elif my_str == "毁容/五官异常":
            return "毁容/五官异常", 1
        elif my_str == "健全&健康":
            return "健全&健康", 1
        elif my_str == "健全（上门女婿）":
            return "健全（上门女婿）", 1
        elif my_str == "侧弯/驼背":
            return "侧弯/驼背", 1
        elif my_str == "双耳聋":
            return "双耳聋", 1
        elif my_str == "轻度手/脚残":
            return "轻度手/脚残", 1
        elif my_str == "袖珍人/矮小":
            return "袖珍人/矮小", 1
        elif my_str == "孤独/自闭症":
            return "孤独/自闭症", 1
        elif my_str == "慕残/爱弱":
            return "慕残/爱弱", 1
        elif my_str == "精神/心理疾病":
            return "精神/心理疾病", 1
        elif my_str == "精神分裂/癔症":
            return "精神分裂/癔症", 1
        elif my_str == "多重残疾":
            return "多重残疾", 1
        elif my_str == "骨骼/肌肉疾病":
            return "骨骼/肌肉疾病", 1
        elif my_str == "弱视/低视力":
            return "弱视/低视力", 1
        elif my_str == "左上肢残疾":
            return "左上肢残疾", 1
        elif my_str == "左下肢残疾":
            return "左下肢残疾", 1
        elif my_str == "右上肢残疾":
            return "右上肢残疾", 1
        elif my_str == "右下肢残疾":
            return "右下肢残疾", 1
        elif my_str == "双上肢残疾":
            return "双上肢残疾", 1
        elif my_str == "双下肢残疾":
            return "双下肢残疾", 1
        elif my_str == "智障/低智力":
            return "智障/低智力", 1
        elif my_str == "弱听/重听":
            return "弱听/重听", 1
        elif my_str == "单侧肢体残疾":
            return "单侧肢体残疾", 1
        elif my_str == "性弱/功能障碍":
            return "性弱/功能障碍", 1
        elif my_str == "口吃/结巴":
            return "口吃/结巴", 1
        else:
            return "其他", 1


    tep_result = tm.map(lambda line: handline(line))
    sumCount = tep_result.reduceByKey(lambda x, y: x + y)
    # [print(line) for line in sumCount.collect()]
    result = sumCount.collect();
    print(result)
    result_list = sorted(result)
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

    sql_insert = "insert into health(illness,count) " \
                 "values(%s,%s)"

    sql_delete = "delete from health"

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
