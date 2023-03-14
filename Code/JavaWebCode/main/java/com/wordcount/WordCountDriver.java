package com.wordcount;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

import java.io.IOException;

public class WordCountDriver {
    public static void main(String[] args) throws IOException, ClassNotFoundException, InterruptedException {
        //创建配置对象
        Configuration conf = new Configuration();
        //创建 Job 对象 并可以指定名称
        Job job = Job.getInstance(conf,"wordcount");
        //指定启动类要启动的 mapper
        job.setJarByClass(WordCountReducer.class);
        // 指定mapper类
        job.setMapperClass(WordCountMapper.class);
        // 指定 reducer 类
        job.setReducerClass(WordCountReducer.class);
        //指定mapper的输出类想
        job.setMapOutputKeyClass(Text.class);
        job.setMapOutputValueClass(IntWritable.class);
        //指定reducer的输出类想
        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(IntWritable.class);

        // job 执行的数据路径
        FileInputFormat.setInputPaths(job,"hdfs://localhost:9000/scu/input");

        // job 执行结果的输出路基
        FileOutputFormat.setOutputPath(job,new Path("hdfs://localhost:9000/scu/output"));

        // 启动并提交job
        job.waitForCompletion(true);
    }
}
