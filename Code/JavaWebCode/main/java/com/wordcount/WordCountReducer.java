package com.wordcount;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

public class WordCountReducer extends Reducer<Text, IntWritable, Text, IntWritable> {
    @Override
    protected void reduce(Text key, Iterable<IntWritable> values, Context context) throws IOException, InterruptedException {
        // welcome，（1,1,1,1）
        Integer count = 0;
        for (IntWritable value : values) {
            count += value.get();
        }

        // (welcome,4)
        context.write(key,new IntWritable(count));

    }
}
