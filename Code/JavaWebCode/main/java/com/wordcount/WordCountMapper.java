package com.wordcount;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class WordCountMapper extends Mapper<LongWritable, Text, Text, IntWritable> {
    @Override
    protected void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        // 每输出一次都是一行数据，此mao方法是对每行数据操作
        // welcome to China
        String line = value.toString();
        // 处理数据
        String[] infos = line.split(" ");
        //  (welcome,1 ) ( to,1 ) ( China,1)
        //context.write(new Text(infos[0]),new IntWritable(1));
        //context.write(new Text(infos[1]),new IntWritable(1));
        //context.write(new Text(infos[2]),new IntWritable(1));
        for (String word : infos) {
            context.write(new Text(word), new IntWritable(1));
        }
    }
}
