<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.List"%>
<%
Map map = (HashMap<String,List>)request.getAttribute("map");
Integer apj=(Integer)map.get("APJ");
Integer usa=(Integer)map.get("USA");
Integer mexico=(Integer)map.get("MEXICO");
Integer emea=(Integer)map.get("EMEA");
Integer other=(Integer)map.get("OTHER");
%>
<!DOCTYPE html>
<html><head lang="en"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>数据可视化</title>
    <link href="../Jsp/JS/pizzaChart/css/app.css" media="screen, projector, print" rel="stylesheet" type="text/css" />

    	<script type="text/javascript" src="../Jsp/JS/fusioncharts.js"></script>
	<script type="text/javascript" src="../Jsp/JS/fusioncharts.theme.fint.js"></script>

     <script>
     FusionCharts.ready(function () {
    	    var revenueChart = new FusionCharts({
    	        type: 'doughnut2d',
    	        renderAt: 'chart-container',
    	        width: '880',
    	        height: '550',
    	        dataFormat: 'json',
    	        dataSource: {
    	            "chart": {
    	                "caption": "IM Metrics",
    	                "subCaption": "",
    	                "numberPrefix": "$",
    	                "startingAngle": "20",
    	                "showPercentValues": "1",
    	                "showPercentInTooltip": "0",
    	                "enableSmartLabels": "0",
    	                "enableMultiSlicing": "0",
    	                "decimals": "1",
    	                //Theme
    	                "theme": "fint"
    	            },
    	            "data": [
    	                {
    	                    "label": "APJ",
    	                    "value": "<%=apj %>"
    	                },
    	                {
    	                    "label": "USA",
    	                    "value": "<%=usa %>"
    	                }, 
    	                {
    	                    "label": "MEXICO",
    	                    "value": "<%=mexico %>"
    	                }, 
    	                {
    	                    "label": "EMEA",
    	                    "value": "<%=emea %>"
    	                },
    	                {
    	                    "label": "OTHER",
    	                    "value": "<%=other %>"
    	                }
    	            ]
    	        }
    	    }).render();
    	    
    	});
    </script> 
</head>
<body>
<div id="chart-container" style="text-align:center;margin-top: 20px;"></div>
</body></html>