<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>line</title>
<script src="assets/js/echarts.js"></script>
<script src="assets/js/jquery-1.8.2.js"></script>
</head>

<body>
	<h1>动态数据图表展示</h1>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main3" style="width: 600px; height: 400px;"></div>
	<script type="text/javascript">
									// 基于准备好的dom，初始化echarts实例
									var myChart = echarts.init(document
											.getElementById('main3'));

									// 指定图表的配置项和数据
									var option = {
										title : {
											text : '深孔位移图'
										},
										tooltip : {},
										legend : {
											data : [ '销量' ]
										},
										xAxis : {
											data : [ "衬衫", "羊毛衫", "雪纺衫", "裤子",
													"高跟鞋", "袜子" ]
										},
										yAxis : {},
										series : [ {
											name : '销量',
											type : 'bar',
											data : [ 5, 20, 36, 10, 10, 20 ]
										} ]
									};

									// 使用刚指定的配置项和数据显示图表。
									myChart.setOption(option);

	//myChart.setOption(options); //先把可选项注入myChart中 // myChart.hideLoading();
	// timeId = setInterval("getChartData();",2000);
	//getChartData();//aja后台交互

	</script>


	<script type="text/javascript"> 
            function getChartData() { 
                //获得图表的options对象 
                var options = myChart.getOption(); 
                //通过Ajax获取数据 
                $.ajax({ 
                    type : "post", 
                    async : false, //同步执行 
                    url : "${pageContext.request.contextPath}/getDynmicLineData.do", 
                    data : {}, 
                    dataType : "json", //返回数据形式为json
                    success : function(result) { 
                        if (result) { 
                            options.legend.data = result.legend; 
                            options.xAxis[0].data = result.category; 
                            options.series[0].data = result.series[0].data; 
                                                myChart.hideLoading();
                            myChart.setOption(options); 
                        } 
                    }, 
                    error : function(errorMsg) { 
                        alert("不好意思，大爷，图表请求数据失败啦!"); 
                        myChart.hideLoading(); 
                    } 
                }); 
            } 
        </script>
</body>
</html>