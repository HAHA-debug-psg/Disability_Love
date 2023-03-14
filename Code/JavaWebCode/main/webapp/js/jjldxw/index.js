// 立即执行函数，防止变量污染 (function() {})();

// 柱状图模块1
(function () {
  // 1.实例化对
  const data_list = [{name:'江苏',value:0},{name:'安徽',value:1},{name:'湖北',value:11},{name:'湖南',value:2},{name:'广东',value:1},{name:'浙江',value:5},{name:'福建',value:2},{name:'山东',value:8},{name:'河南',value:4},{name:'河北',value:17},{name:'江西',value:2},{name:'黑龙江',value:0},{name:'陕西',value:0},{name:'贵州',value:1},{name:'吉林',value:9},{name:'广西',value:1},{name:'山西',value:5},{name:'云南',value:0},{name:'辽宁',value:17},{name:'甘肃',value:3},{name:'重庆',value:0},{name:'内蒙古',value:1},{name:'海南',value:0},{name:'天津',value:3},{name:'上海',value:7},{name:'宁夏',value:4},{name:'青海',value:1},{name:'北京',value:0},{name:'西藏',value:0}]
  const data_value_list= [0,1,11,2,1,5,2,8,4,17,2,0,0,1,9,1,5,0,17,3,0,1,0,3,7,4,1,0,0]
  const option = {
      
      tooltip: {
          trigger: 'item',
          formatter: '省份：{b}<br/>数量：{c}'
      },
  	
      dataRange: {
          min: 0,
          max: Math.max.apply(null, data_value_list),
          x: 'left',
          y: 'bottom',
          text: ['高', '低'],           // 文本，默认为数值文本
          calculable: true,
          //inRange: {
          //    color: ['#FFFFFF','#0000FF'],
          //    symbolSize: [10, 100]
          //}
      },
      series: [
          {
              name: '数据',
              type: 'map',
              mapType: 'china',
              roam: false,
              itemStyle: {
                  normal: { label: { show: true } },
                  emphasis: { label: { show: true } }
              },
              data: data_list
          }
      ]
  };
  ec_map = echarts.init(document.getElementById('main'));
  ec_map.setOption(option);
})();

(function () {
  // 1.实例化对
  const data_list = [
  {name:'河北',value:3.6},
  {name:'陕西',value:2.3},
  {name:'辽宁',value:2.7},
  {name:'黑龙江',value:2.2},
  {name:'江苏',value:6.2},
  {name:'浙江',value:6.6},
  {name:'安徽',value:1.7},
  {name:'福建',value:2.3},
  {name:'江西',value:2.5},
  {name:'山东',value:6.7},
  {name:'河南',value:3.8},
  {name:'湖北',value:3.1},
  {name:'湖南',value:4.4},
  {name:'广东',value:12.1},
  {name:'海南',value:0.27},
  {name:'四川',value:5.7},
  {name:'贵州',value:1.7},
  {name:'云南',value:1.9},
  {name:'陕西',value:2.3},
  {name:'甘肃',value:0.8},
  {name:'青海',value:0.27},
  {name:'内蒙古',value:1.3},
  {name:'广西',value:1.9},
  {name:'西藏',value:0.27},
  {name:'宁夏',value:0.18},
  {name:'新疆',value:0.53},
  {name:'北京',value:8.4},
  {name:'天津',value:3.3},
  {name:'上海',value:4.2},
  {name:'重庆',value:4.9},
  {name:'吉林',value:1.7},
  {name:'山西',value:0.2}]
  const data_value_list= [3.6,2.3,2.7,2.2,6.2,6.6,1.7,2.3,2.5,6.7,3.8,3.1,4.4,12.1,0.27,5.7,1.7,1.9,2.3,0.8,0.27,1.3,1.9,0.27,0.18,0.53,8.4,3.3,4.2,4.9,1.7,0.2]
  const option = {
      title: {
          text: '相亲网站用户地理位置分布占比',
          subtext: '数据来源：各个相亲网站',
          x: 'center'
      },
      tooltip: {
          trigger: 'item',
          formatter: '省份：{b}<br/>数量：{c}'
      },
  	
      dataRange: {
          min: 0,
          max: Math.max.apply(null, data_value_list),
          x: 'left',
          y: 'bottom',
          text: ['高', '低'],           // 文本，默认为数值文本
          calculable: true,
          //inRange: {
          //    color: ['#FFFFFF','#0000FF'],
          //    symbolSize: [10, 100]
          //}
      },
      series: [
          {
              name: '数据',
              type: 'map',
              mapType: 'china',
              roam: false,
              itemStyle: {
                  normal: { label: { show: true } },
                  emphasis: { label: { show: true } }
              },
              data: data_list
          }
      ]
  };
  ec_map = echarts.init(document.getElementById('spanc'));
  ec_map.setOption(option);
})();

// 立即执行函数，防止变量污染 (function() {})();
// 立即执行函数，防止变量污染 (function() {})();
(function () {
  // 1.实例化对
  var myChart = echarts.init(document.getElementById('mainhyx'));
  // 2.指定配置项和数据
  option = {
    
    tooltip: {
      trigger: 'axis',
      axisPointer: {
        type: 'shadow'
      }
    },
    legend: {},
    grid: {
      left: '3%',
      right: '4%',
      bottom: '3%',
      containLabel: true
    },
    xAxis: {
      type: 'value',
      boundaryGap: [0, 0.01]
    },
    yAxis: {
      type: 'category',
      data: ['非残疾离婚','非残疾丧偶','非残疾有配偶','非残疾未婚','残疾离婚','残疾丧偶','残疾有配偶','残疾未婚']
    },
    series: [
      {
        name: '1987',
        type: 'bar',
        data: [0.49, 9.16,74.29,16.15,1.50,10.26,58.95,29.29]
      },
      {
        name: '2006',
        type: 'bar',
        data: [1.09,5.96,75.08,17.87,2.84,7.26,58.69,31.19]
      }
    ]
  },
  // 3.把配置项给实例对象
  myChart.setOption(option);

  // 4.让图表随屏幕自适应
  window.addEventListener('resize', function () {
    myChart.resize();
  })
})();


(function () {
  // 1.实例化对
  const weatherIcons = {
      disability: 'image/disability.svg',
      ability: 'image/ability.svg',
      total: 'image/total.png'
    };
    const seriesLabel = {
      show: false
    };
	
  var myChart = echarts.init(document.getElementById('spana'));
  // 2.指定配置项和数据
 option = {
   title: {
     text: '婚姻网站男女性别比例调查',
	 subtext: '数据来源：各个相亲网站      人口普查'
   },
   tooltip: {
     trigger: 'axis',
     axisPointer: {
       type: 'shadow'
     }
   },
   legend: {
     data: ['男', '女']
   },
   grid: {
     left: 100
   },
  
   xAxis: {
     type: 'value',
     axisLabel: {
       formatter: '{value}'
     }
   },
   yAxis: {
     type: 'category',
     inverse: true,
     data: ['残疾婚恋网站', '正常婚恋网站', '全国男女比'],
     axisLabel: {
       formatter: function (value) {
         return value;
       },
       margin: 20,
       rich: {
         value: {
           lineHeight: 30,
           align: 'center'
         },
         disability: {
           height: 40,
           align: 'center',
           backgroundColor: {
             image: weatherIcons.disability
           }
         },
         ability: {
           height: 40,
           backgroundColor: {
             image: weatherIcons.ability
           }
         },
         total: {
           height: 40,
           align: 'center',
           backgroundColor: {
             image: weatherIcons.total
           }
         }
       }
     }
   },
   series: [
     {
       name: '男',
       type: 'bar',
       data: [89, 61, 51],
       label: seriesLabel,
       itemStyle: {
       borderRadius: [0, 10, 10, 0]
       }
     },
     {
       name: '女',
       type: 'bar',
       label: seriesLabel,
       data: [11, 39,49],
           itemStyle: {
         borderRadius: [0, 10, 10, 0]
       }
     }
   ]
 },
  // 3.把配置项给实例对象
  myChart.setOption(option);

  // 4.让图表随屏幕自适应
  window.addEventListener('resize', function () {
    myChart.resize();
  })
})();



(function () {
  // 1.实例化对

  var myChart = echarts.init(document.getElementById('spanb'));
  // 2.指定配置项和数据
 option = {
    tooltip: {
      trigger: 'item'
    },
    legend: {
      top: '0%',
      left: 'center'
    },
    series: [
      {
        name: '年龄组成',
        type: 'pie',
        radius: ['40%', '70%'],
        avoidLabelOverlap: false,
        itemStyle: {
          borderRadius: 10,
          borderColor: '#fff',
          borderWidth: 2
        },
        label: {
          show: false,
          position: 'center'
        },
        emphasis: {
          label: {
            show: true,
            fontSize: '40',
            fontWeight: 'bold'
          }
        },
        labelLine: {
          show: false
        },
        data: [
          { value: 0.0028, name: '18~20' },
          { value: 0.12, name: '21~25' },
          { value: 0.22, name: '26~30' },
          { value: 0.31, name: '31~35' },
          { value: 0.17, name: '36~40' },
          { value: 0.098, name: '41~45' },
          { value: 0.045, name: '46~50' },
          { value: 0.022, name: '51~55' },
          { value: 0.0089, name: '56~60' },
 		 { value: 0.0033, name: '60以上' },
        ]
      }
    ]
  },
  // 3.把配置项给实例对象
  myChart.setOption(option);

  // 4.让图表随屏幕自适应
  window.addEventListener('resize', function () {
    myChart.resize();
  })
})();


// 柱状图模块1
(function () {
  // 1.实例化对
  var myChart = echarts.init(document.getElementById('mains'));
  // 2.指定配置项和数据
  option = {
    tooltip: {
      trigger: 'axis',
      axisPointer: {
        type: 'crosss',
        crossStyle: {
          color: '#999'
        }
      }
    },
    toolbox: {
      feature: {
        dataView: { show: false, readOnly: false },
        magicType: { show: true, type: ['line', 'bar'] },
        restore: { show: true },
        saveAsImage: { show: false }
      }
    },
    legend: {
      data: [ 'Precipitation', 'Temperature']
    },
    xAxis: [
      {
        type: 'category',
        data: ['河北_1', '河北_2', '河北_3', '河北_4', '河北_5', '河北_6', '河北_7','河北_8','辽宁_1','辽宁_2','辽宁_3','辽宁_4','辽宁_5','辽宁_6','湖北_1','湖北_2','湖北_3','湖北_4','湖北_5'],
        axisPointer: {
          type: 'shadow'
        }
      }
    ],
    yAxis: [
      {
        type: 'value',
       
        min: 0,
        max: 500,
        interval: 50
      },
      {
        type: 'value',
        min: 0,
        max: 500,
        interval: 50,
        
      }
    ],
    series: [
      
      {
        name: '成功牵手',
        type: 'bar',
        tooltip: {
          valueFormatter: function (value) {
            return value + ' 人';
          }
        },
        data: [
         30,10,32,10,26,22,8,6,4,6,2,4,14,8,18,8,10,2,8
        ]
      },
      {
        name: '共计参与',
        type: 'line',
        yAxisIndex: 1,
        tooltip: {
          valueFormatter: function (value) {
            return value + ' 人';
          }
        },
        data: [410,245,458,205,295,195,220,115,65,24,135,145,30,285,135,86,110,74,45]
      }
    ]
  },
  // 3.把配置项给实例对象
  myChart.setOption(option);

  // 4.让图表随屏幕自适应
  window.addEventListener('resize', function () {
    myChart.resize();
  })
})();




(function () {
  // 1.实例化对
  var myChart = echarts.init(document.getElementById('mainc'));
  // 2.指定配置项和数据
  const hours = [
      '2015','2016','2017','2018','2019','2020','2021','2022'
  ];
  // prettier-ignore
  const days = [
      '东北', '华北', '西北',
      '华中', '华东', '华南', '西南'
  ];
  // prettier-ignore
  const data = [[0, 0, 0], [0, 1, 0], [0, 2, 245], [0, 3, 82], [0, 4, 0], [0, 5, 0], [0, 6, 0], [0, 7, 0],
  
                [1, 0, 0], [1, 1, 557.5], [1, 2, 2619], [1, 3, 2852.33], [1, 4, 2022], [1, 5, 1386], [1, 6, 721.5], [1, 7, 312],
                [2, 0, 0], [2, 1, 0], [2, 2, 0], [2, 3, 110], [2, 4, 79], [2, 5, 1254], [2, 6, 281], [2, 7, 144],
                [3, 0, 0], [3, 1, 0], [3, 2, 172.15], [3, 3, 350], [3, 4, 488.75], [3, 5, 0], [3, 6, 40], [3, 7, 0],
                [4, 0, 0], [4, 1, 0], [4, 2, 0], [4, 3, 1019.33], [4, 4, 1049.25], [4, 5, 2647], [4, 6, 0], [4, 7, 0],
                [5, 0, 0], [5, 1, 0], [5, 2, 0], [5, 3, 0], [5, 4, 0], [5, 5, 0], [5, 6, 0], [5, 7, 0],
                [6, 0, 178], [6, 1, 765], [6, 2, 2130.05], [6, 3,0], [6, 4, 1203], [6, 5,5019.33], [6, 6, 1399], [6, 7, 105]
                ];
  const title = [];
  const singleAxis = [];
  const series = [];
  days.forEach(function (day, idx) {
    title.push({
      textBaseline: 'middle',
	  textStyle: {
	                          color:'gray'
	                      },
      top: ((idx + 0.5) * 100) / 7 + '%',
      text: day
    });
    singleAxis.push({
      left: 150,
      type: 'category',
      boundaryGap: false,
      data: hours,
      top: (idx * 100) / 7 + 5 + '%',
      height: 100 / 7 - 10 + '%',
      axisLabel: {
        interval: 0,textStyle: {
                                color:'gray'
                            }
      }
    });
    series.push({
      singleAxisIndex: idx,
      coordinateSystem: 'singleAxis',
      type: 'scatter',
      data: [],
      symbolSize: function (dataItem) {
        return dataItem[1] * 0.02;
      }
    });
  });
  data.forEach(function (dataItem) {
    series[dataItem[0]].data.push([dataItem[1], dataItem[2]]);
  });
  option = {
	   tooltip: {
	      position: 'top'
	    },
    title: title,
    singleAxis: singleAxis,
    series: series
  },
  // 3.把配置项给实例对象
  myChart.setOption(option);

  // 4.让图表随屏幕自适应
  window.addEventListener('resize', function () {
    myChart.resize();
  })
})();


(function () {
  // 1.实例化对
  var myChart = echarts.init(document.getElementById('spand'));
  option = {
    title: {
      text: '残疾类型占比',
      subtext: '数据来源：各个相亲网站',
      left: 'center'
    },
    tooltip: {
      trigger: 'item'
    },
    legend: {
      orient: 'vertical',
      left: 'left'
    },
    series: [
      {
        name: '残疾类型占比',
        type: 'pie',
        radius: '50%',
        data: [
          { value: 55.7, name: '肢体残疾' },
          { value: 11.5, name: '视力残疾' },
          { value: 9.5, name: '精神残疾' },
          { value: 8.6, name: '智力残疾' },
          { value: 8.0, name: '听力残疾' },
          { value: 4.6, name: '多重残疾' }, 
          { value: 1.7, name: '言语残疾' }
        ],
        emphasis: {
          itemStyle: {
            shadowBlur: 10,
            shadowOffsetX: 0,
            shadowColor: 'rgba(0, 0, 0, 0.5)'
          }
        }
      }
    ]
  },
  // 3.把配置项给实例对象
  myChart.setOption(option);

  // 4.让图表随屏幕自适应
  window.addEventListener('resize', function () {
    myChart.resize();
  })
})();
// (function () {
//   // 1.实例化对象
//   const weatherIcons = {
//     disability: 'image/disability.svg'
//     ability: 'image/ability.svg',
//     total: 'image/total.png'
//   };
//   const seriesLabel = {
//     show: false
//   };
//   var myChart = echarts.init(document.getElementById('mainnv'));
//   // 2.指定配置项和数据
//   option = {
//   title: {
//     text: '婚姻网站男女性别比例调查'
//   },
//   tooltip: {
//     trigger: 'axis',
//     axisPointer: {
//       type: 'shadow'
//     }
//   },
//   legend: {
//     data: ['male', 'female']
//   },
//   grid: {
//     left: 100
//   },
 
//   xAxis: {
//     type: 'value',
//     axisLabel: {
//       formatter: '{value}'
//     }
//   },
//   yAxis: {
//     type: 'category',
//     inverse: true,
//     data: ['disability', 'ability', 'total'],
//     axisLabel: {
//       formatter: function (value) {
//         return '{' + value + '| }\n{value|' + value + '}';
//       },
//       margin: 20,
//       rich: {
//         value: {
//           lineHeight: 30,
//           align: 'center'
//         },
//         disability: {
//           height: 40,
//           align: 'center',
//           backgroundColor: {
//             image: weatherIcons.disability
//           }
//         },
//         ability: {
//           height: 40,
//           backgroundColor: {
//             image: weatherIcons.ability
//           }
//         },
//         total: {
//           height: 40,
//           align: 'center',
//           backgroundColor: {
//             image: weatherIcons.total
//           }
//         }
//       }
//     }
//   },
//   series: [
//     {
//       name: 'male',
//       type: 'bar',
//       data: [89, 61, 51],
//       label: seriesLabel,
//       itemStyle: {
//       borderRadius: [0, 10, 10, 0]
//       }
//     },
//     {
//       name: 'female',
//       type: 'bar',
//       label: seriesLabel,
//       data: [11, 39,49],
//           itemStyle: {
//         borderRadius: [0, 10, 10, 0]
//       }
//     }
//   ]
// },
//   // 3.把配置项给实例对象
//   myChart.setOption(option);

//   // 4.让图表随屏幕自适应
//   window.addEventListener('resize', function () {
//     myChart.resize();
//   })
// })();

(function () {
  // 1.实例化对
  var myChart = echarts.init(document.getElementById('mainss'));
  // 2.指定配置项和数据
  option = {
   
    grid: {
      left: '3%',
      right: '7%',
      bottom: '20%',
      containLabel: true
    },
    
   color:['#5470c6', '#91cc75', '#fac858', '#ee6666', '', '#3ba272', '#fc8452', '#9a60b4', '#ea7ccc','#000000','#0cf5e7','#cc00ff','','#00ff72','#ff9c00'],
    toolbox: {
      feature: {
        dataZoom: {},
        brush: {
          type: ['rect', 'polygon', 'clear']
        }
      }
    },
    brush: {},
    legend: {
      data: ['重婚或与他人同居', '家暴或虐待、遗弃家人','屡次赌博、吸毒','因感情不和分居满二年','一方失踪','患有法定禁止结婚疾病，或生理缺陷，或不能发生性行为','婚前缺乏了解，婚后感情薄弱','婚前隐瞒精神病，或婚后患精神病无法治愈','以欺骗方式骗取《结婚证》','登记后未同居','包办、买卖婚姻','与他人通奸，或过错方再次起诉离婚','一方被判刑，或其违法犯罪行为损害夫妻感情','受对方或对方亲属的虐待、遗弃','其他'],
                bottom :10,
				itemWidth: 10, // 图例图形的宽度
                itemHeight: 10, // 图例图形的高度
      

    },
    xAxis: [
      {
        type: 'value',
        scale: true,
        axisLabel: {
          formatter:function(param){
         if(param==0.5)
          return '安徽';
         if(param==1)
          return '北京';
         if(param==1.5)
          return '甘肃';
         if(param==2)
          return '广东';
         if(param==2.5)
          return '广西';
         if(param==3)
          return '河北';
         if(param==3.5)
          return '河南';
         if(param==4)
          return '湖北';
         if(param==4.5)
          return '湖南';
         if(param==5)
          return '吉林';
         if(param==5.5)
          return '江苏';
         if(param==6)
          return '江西';
         if(param==6.5)
          return '辽宁';
         if(param==7)
          return '内蒙古;'
         if(param==7.5)
          return '宁夏';
         if(param==8)
          return '山东';
         if(param==8.5)
          return '山西';
         if(param==9)
          return '陕西';
         if(param==9.5)
          return '上海';
         if(param==10)
          return '四川';
         if(param==10.5)
          return '云南'}
        },
        splitLine: {
          show: false
        },
        interval:0.5
      }
    ],
    yAxis: [
      {
        type: 'value',
        scale: true,
        axisLabel: {
          formatter: function(param){
            if(param==0)
            return '2019/6/1';
            if(param==90)
            return '2019/9/1';
            if(param==180)
            return '2019/12/1';
            if(param==270)
            return '2020/3/1';
            if(param==360)
            return '2020/6/1';
            if(param==450)
            return '2020/9/1';
            if(param==540)
            return '2020/12/1';
            if(param==630)
            return '2021/3/1';
            if(param==720)
            return '2021/6/1';
            if(param==810)
            return '2021/9/1';
            if(param==900)
            return '2021/12/1';
            if(param==990)
            return '2022/3/1';
            if(param==1080)
            return '2022/6/1';
          }
          
        },
        splitLine: {
          show: false
        },
        interval:90
      }
    ],
    series: [
      {
        name: '重婚或与他人同居',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data: [[5,630]],
        symbolSize:15
      },
      {
        name: '家暴或虐待、遗弃家人',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data: [[0.5,118],[0.5,548],[1,718],[1,579],[1.5,156],[1.4,143],[1.6,143],[1.5,103],[1.5,340],[1.5,884],[2,877],[3,543],[3,538],[3.5,747],[4,216],[4,375],[4,415],[4,654],[4.5,450],[4.5,774],[5,657],[6,111],[6,759],[6,520],[6.5,821],[6.5,508],[8,1076],[9,191],[9.5,496],[9.5,364],[9.5,342],[9.5,313],[6.5,1153]]
      ,symbolSize:15
        
      },
      {
        name: '屡次赌博、吸毒',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[[2,877],[6.5,188],[8,359]],symbolSize:15 },
      {
        name: '因感情不和分居满二年',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[[0.4,118],[1,762],[1,730],[1.5,205],[1.5,151],[1.5,350],[2.5,881],[2.5,870],[3.5,1028],[4,153],[4,111],[4,97],[4,767],[4,385],[4,629],[4.5,460],[6,411],[6,446],[6,303],[6,119],[6,844],[6,530],[6.5,198],[6.5,657],[6.5,86],[6.5,856],[6,5,508]
        ,[8,354],[8.1,348],[7.9,344],[8,1086],[8,780],[8,648],[9.5,248],[9.5,476]
        ,[9.5,485],[9.5,467],[9.4,485],[9.6,496],[9.5,405],[9.5,436],[9.4,313],[9.5,664],[10.5,460]]
       ,symbolSize:15 },
         {
        name: '一方失踪',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[] },
        {
        name: '患有法定禁止结婚疾病，或生理缺陷，或不能发生性行为',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[[2.5,870],[4,111],[4,97],[6,,269],[6,429],[7.8,348]],symbolSize:15 },
        {
        name: '婚前缺乏了解，婚后感情薄弱',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[[0.5,124],[0.4,548],[1,767],[1,584],[1.5,215],[1.5,201],[1.5,551],[3,207],[3,159],[3,152],[3,417],
        [3.5,1014],[4,221],[4,90],[4,467],[4,410],[4.5,430],[4.5,450],[4.5,828],[4.5,770],[4.5,531],
        [6,269],[6.1,111],[6.1,429],[6.1,303],[6.1,759],[6.1,695],[5.9,571],[6.4,485],[6.6,821],[6.5,1063],
        [6.5,594],[6.5,583],[7,738],[8.5,854],[9.5,49],[9.6,436],[10,472]],symbolSize:15 },
        {
        name: '婚前隐瞒精神病，或婚后患精神病无法治愈',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[[1.4,151],[3,828],[3.9,111],[6,275],[6.1,446],[8,686],[10.1,472],[10,487]],symbolSize:15 },{
        name: '以欺骗方式骗取《结婚证》',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[[3.1,417],[4.6,450],[8,614]],symbolSize:15 },{
        name: '登记后未同居',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[] },{
        name: '包办、买卖婚姻',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[[1.6,156],[1.6,177]],symbolSize:15 },{
        name: '与他人通奸，或过错方再次起诉离婚',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[[3.1,152],[6.6,188],[6.5,411],[9.5,114],[9.6,485]],symbolSize:15 },{
        name: '一方被判刑，或其违法犯罪行为损害夫妻感情',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[] },{
        name: '受对方或对方亲属的虐待、遗弃',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[[4.5,102],[6.1,517],[8,516],[9.6,405]],symbolSize:15 },{
        name: '其他',
        type: 'scatter',
        emphasis: {
          focus: 'series'
        },
        // prettier-ignore
        data:[[6.5,152],[7,781],[7.5,209],[8,118],[8.2,373],[8,545],[9,929],[9.5,377],[9.5,615],[9.5,569],[1.6,210],[1.5,538],[3.1,207],[4,556],[5.5,221],[5.5,548],[6,151]],symbolSize:15 }
    ]
  },
  // 3.把配置项给实例对象
  myChart.setOption(option);

  // 4.让图表随屏幕自适应
  window.addEventListener('resize', function () {
    myChart.resize();
  })
})();
// 立即执行函数，防止变量污染 (function() {})();

(function () {
  // 1.实例化对
  var myChart = echarts.init(document.getElementById('mainsss'));
  // 2.指定配置项和数据
  option = {
    series: {
      type: 'sankey',
      layout: 'none',
      emphasis: {
        focus: 'adjacency'
      },
      data: [
        {
          name: '听力残疾'
        },
        {
          name: '肢体残疾'
        },
        {
          name: '精神残疾'
        },
        
        {
          name: '智力残疾'
        },
        
        {
          name: '视力残疾'
        },
        
        {
          name: '言语残疾'
        },
        
        {
          name: '多重残疾'
        },
        
        {
          name: '健全'
        },
        
        {
          name: '未标明'
        },
        
        {
          name: '判决情况'
        } 
        ,{
          
          name: '原告'
        },{
          
          name: '被告'
        },{
          name:'离婚'
        },{
          name:'不以离婚'
        },{
          name:'因涉及个人隐私，文书内容不公开'
        },{
          name:'婚姻无效'
        }
        
      ],
      links: [
        {
          source: '听力残疾',
          target: '原告',
          value: 5
        },
        {
          source: '肢体残疾',
          target: '原告',
          value: 10
        },
        {
          source: '精神残疾',
          target: '原告',
          value: 5
        },
        {
          source: '智力残疾',
          target: '原告',
          value: 17
        },
        {
          source: '视力残疾',
          target: '原告',
          value: 5
        },
        {
          source: '言语残疾',
          target: '原告',
          value: 1
        },
        {
          source: '多重残疾',
          target: '原告',
          value: 5
        },
        {
          source: '健全',
          target: '原告',
          value: 53
        },
        {
          source: '未标明',
          target: '原告',
          value: 18
        },
        {
          source: '听力残疾',
          target: '被告',
          value: 6
        },
        {
          source: '肢体残疾',
          target: '被告',
          value: 9
        },
        {
          source: '精神残疾',
          target: '被告',
          value: 24
        },
        {
          source: '智力残疾',
          target: '被告',
          value: 8
        },
        {
          source: '视力残疾',
          target: '被告',
          value: 2
        },
        {
          source: '言语残疾',
          target: '被告',
          value: 0
        },
        {
          source: '多重残疾',
          target: '被告',
          value: 9
        },
        {
          source: '健全',
          target: '被告',
          value: 44
        },
        {
          source: '未标明',
          target: '被告',
          value: 17
        },
        {
          source: '判决情况',
          target: '离婚',
          value: 67
        },
        {
          source: '判决情况',
          target: '不予离婚',
          value: 50
        },
        {
          source: '判决情况',
          target: '因涉及个人隐私，文书内容不公开',
          value: 1
        },
        {
          source: '判决情况',
          target: '婚姻无效',
          value: 1
        }
      ]
    }
  }
  // 3.把配置项给实例对象
  myChart.setOption(option);

  // 4.让图表随屏幕自适应
  window.addEventListener('resize', function () {
    myChart.resize();
  })
})();

document.addEventListener('DOMContentLoaded', function() {
    const getUpdatea = document.querySelector('.getUpdatea');
	const getUpdateb = document.querySelector('.getUpdateb');
	const getUpdatec = document.querySelector('.getUpdatec');
	const getUpdated = document.querySelector('.getUpdated');
	const getUpdatee = document.querySelector('.getUpdatee');
	const getUpdatef = document.querySelector('.getUpdatef');
    const carda = document.querySelector('.carda');
	const cardb = document.querySelector('.cardb');
	const cardc = document.querySelector('.cardc');
	const cardd = document.querySelector('.cardd');
	const carde = document.querySelector('.carde');
	const cardf = document.querySelector('.cardf');
    const closea = document.querySelector('.closea');
	
	const closeb = document.querySelector('.closeb');
	
	const closec = document.querySelector('.closec');
	
	const closed = document.querySelector('.closed');
	
	const closee = document.querySelector('.closee');
	
	const closef = document.querySelector('.closef');
    getUpdatea.addEventListener('click', e => {
        e.stopPropagation()
        carda.style.display = 'flex';
    });
	getUpdateb.addEventListener('click', e => {
	    e.stopPropagation()
	    cardb.style.display = 'flex';
	});
	getUpdatec.addEventListener('click', e => {
	    e.stopPropagation()
	    cardc.style.display = 'flex';
	});
	getUpdated.addEventListener('click', e => {
	    e.stopPropagation()
	    cardd.style.display = 'flex';
	});
	getUpdatee.addEventListener('click', e => {
	    e.stopPropagation()
	    carde.style.display = 'flex';
	});
	getUpdatef.addEventListener('click', e => {
	    e.stopPropagation()
	    cardf.style.display = 'flex';
	});
    closea.addEventListener('click', _ => {
        carda.style.display = 'none';
	});
	closeb.addEventListener('click', _ => {
        cardb.style.display = 'none';
	});
	closec.addEventListener('click', _ => {
	    cardc.style.display = 'none';
	});
	closed.addEventListener('click', _ => {
	    cardd.style.display = 'none';
	});
	closee.addEventListener('click', _ => {
	    carde.style.display = 'none';
	});
	closef.addEventListener('click', _ => {
	    cardf.style.display = 'none';
	});
})
document.addEventListener('DOMContentLoaded', function() {
    const getUpdate1 = document.querySelector('.getUpdate1');
    const getUpdate2 = document.querySelector('.getUpdate2');
	const getUpdate3 = document.querySelector('.getUpdate3');
	const getUpdate4 = document.querySelector('.getUpdate4');
	const getUpdate5 = document.querySelector('.getUpdate5');
	const getUpdate6 = document.querySelector('.getUpdate6');
	const getUpdate7 = document.querySelector('.getUpdate7');
	const getUpdate8 = document.querySelector('.getUpdate8');
	const getUpdate9 = document.querySelector('.getUpdate9');
	const getUpdate10 = document.querySelector('.getUpdate10');
	const getUpdate11 = document.querySelector('.getUpdate11');
	const getUpdate12 = document.querySelector('.getUpdate12');
	const getUpdate13 = document.querySelector('.getUpdate13');
	const getUpdate14 = document.querySelector('.getUpdate14');
	const getUpdate15 = document.querySelector('.getUpdate15');
	const getUpdate16 = document.querySelector('.getUpdate16');
	const getUpdate17 = document.querySelector('.getUpdate17');
	const getUpdate18 = document.querySelector('.getUpdate18');
	
    const card1 = document.querySelector('.card1');
	const card2 = document.querySelector('.card2');
	const card3 = document.querySelector('.card3');
	const card4 = document.querySelector('.card4');
	const card5 = document.querySelector('.card5');
	const card6 = document.querySelector('.card6');
	const card7 = document.querySelector('.card7');
	const card8 = document.querySelector('.card8');
	const card9 = document.querySelector('.card9');
	const card10 = document.querySelector('.card10');
	const card11 = document.querySelector('.card11');
	const card12 = document.querySelector('.card12');
	const card13 = document.querySelector('.card13');
	const card14 = document.querySelector('.card14');
	const card15 = document.querySelector('.card15');
	const card16 = document.querySelector('.card16');
	const card17 = document.querySelector('.card17');
	const card18 = document.querySelector('.card18');
	
    getUpdate1.addEventListener('click', e => {
        e.stopPropagation()
        card1.style.display = 'flex';
    });
	getUpdate2.addEventListener('click', e => {
	    e.stopPropagation()
	    card2.style.display = 'flex';
	});
	getUpdate3.addEventListener('click', e => {
	    e.stopPropagation()
	    card3.style.display = 'flex';
	});
	getUpdate4.addEventListener('click', e => {
	    e.stopPropagation()
	    card4.style.display = 'flex';
	});
	getUpdate5.addEventListener('click', e => {
	    e.stopPropagation()
	    card5.style.display = 'flex';
	});
	getUpdate6.addEventListener('click', e => {
	    e.stopPropagation()
	    card6.style.display = 'flex';
	});
	getUpdate7.addEventListener('click', e => {
	    e.stopPropagation()
	    card7.style.display = 'flex';
	});
	getUpdate8.addEventListener('click', e => {
	    e.stopPropagation()
	    card8.style.display = 'flex';
	});
	getUpdate9.addEventListener('click', e => {
	    e.stopPropagation()
	    card9.style.display = 'flex';
	});
	getUpdate10.addEventListener('click', e => {
	    e.stopPropagation()
	    card10.style.display = 'flex';
	});
	getUpdate11.addEventListener('click', e => {
	    e.stopPropagation()
	    card11.style.display = 'flex';
	});
	getUpdate12.addEventListener('click', e => {
	    e.stopPropagation()
	    card12.style.display = 'flex';
	});
	getUpdate13.addEventListener('click', e => {
	    e.stopPropagation()
	    card13.style.display = 'flex';
	});
	getUpdate14.addEventListener('click', e => {
	    e.stopPropagation()
	    card14.style.display = 'flex';
	});
	getUpdate15.addEventListener('click', e => {
	    e.stopPropagation()
	    card15.style.display = 'flex';
	});
	getUpdate16.addEventListener('click', e => {
	    e.stopPropagation()
	    card16.style.display = 'flex';
	});
	getUpdate17.addEventListener('click', e => {
	    e.stopPropagation()
	    card17.style.display = 'flex';
	});
	getUpdate18.addEventListener('click', e => {
	    e.stopPropagation()
	    card18.style.display = 'flex';
	});
    card1.addEventListener('click', _ => {
        card1.style.display = 'none';
		
    });
	card2.addEventListener('click', _ => {
	    card2.style.display = 'none';
		
	});
	card3.addEventListener('click', _ => {
	    card3.style.display = 'none';
		
	});
	card4.addEventListener('click', _ => {
	    card4.style.display = 'none';
		
	});
	card5.addEventListener('click', _ => {
	    card5.style.display = 'none';
		
	});
	card6.addEventListener('click', _ => {
	    card6.style.display = 'none';
		
	});
	card7.addEventListener('click', _ => {
	    card7.style.display = 'none';
		
	});
	card8.addEventListener('click', _ => {
	    card8.style.display = 'none';
		
	});
	card9.addEventListener('click', _ => {
	    card9.style.display = 'none';
		
	});
	card10.addEventListener('click', _ => {
	    card10.style.display = 'none';
		
	});
	card11.addEventListener('click', _ => {
	    card11.style.display = 'none';
		
	});
	card12.addEventListener('click', _ => {
	    card12.style.display = 'none';
		
	});
	card13.addEventListener('click', _ => {
	    card13.style.display = 'none';
		
	});
	card14.addEventListener('click', _ => {
	    card14.style.display = 'none';
		
	});
	card15.addEventListener('click', _ => {
	    card15.style.display = 'none';
		
	});
	card16.addEventListener('click', _ => {
	    card16.style.display = 'none';
		
	});
	card17.addEventListener('click', _ => {
	    card17.style.display = 'none';
		
	});
	card18.addEventListener('click', _ => {
	    card18.style.display = 'none';
		
	});
   

})