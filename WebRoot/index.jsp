<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript">
	function switchTag(tag, content) {
		//	alert(tag);
		//	alert(content);
		for (i = 1; i < 6; i++) {
			if ("tag" + i == tag) {
				document.getElementById(tag).getElementsByTagName("a")[0].className = "selectli"
						+ i;
				document.getElementById(tag).getElementsByTagName("a")[0]
						.getElementsByTagName("span")[0].className = "selectspan"
						+ i;
			} else {
				document.getElementById("tag" + i).getElementsByTagName("a")[0].className = "";
				document.getElementById("tag" + i).getElementsByTagName("a")[0]
						.getElementsByTagName("span")[0].className = "";
			}
			if ("content" + i == content) {
				document.getElementById(content).className = "";
			} else {
				document.getElementById("content" + i).className = "hidecontent";
			}
			document.getElementById("content").className = content;
		}
	}
</script>
  </head>
  
  <body>
        <div>
    	<center>
			<img src="image/figure1.jpg" alt="connection fail" />
		</center>
	</div>

	<div>
		<h4>Adverse Drug reaction detection</h4>
	</div>

	<div id="title">
		<ul>
			<li id="tag1"><a href="#"
				onclick="switchTag('tag1','content1');this.blur();"
				class="selectli1"><span class="selectspan1">Simple</span></a></li>
			<li id="tag2"><a href="#"
				onclick="switchTag('tag2','content2');this.blur();"><span>Advanced</span></a></li>
		</ul>
	</div>
	<div id="content" class="content1">
		<div id="content1">
			<form name="check" method="post" action="getForm">
				<fieldset style="width:300">

					<table border="1" cellspacing="0">
						<tr>
							<td>Year</td>
							<td>Start Time <select name="startyear">
									<option value="2000">2000</option>
									<option value="2001">2001</option>
									<option value="2002">2002</option>
									<option value="2003">2003</option>
									<option value="2004">2004</option>
									<option value="2005">2005</option>
									<option value="2006">2006</option>
									<option value="2007">2007</option>
									<option value="2008">2008</option>
									<option value="2009">2009</option>
									<option value="2010">2010</option>
									<option value="2011">2011</option>
									<option value="2012">2012</option>
									<option value="2013">2013</option>
									<option value="2014">2014</option>
							</select> <select name="startquarter">
									<option value="all">all</option>
									<option value="Q1">Q1</option>
									<option value="Q2">Q2</option>
									<option value="Q3">Q3</option>
									<option value="Q4">Q4</option>
							</select> to End Time <select name="endyear">
									<option value="2000">2000</option>
									<option value="2001">2001</option>
									<option value="2002">2002</option>
									<option value="2003">2003</option>
									<option value="2004">2004</option>
									<option value="2005">2005</option>
									<option value="2006">2006</option>
									<option value="2007">2007</option>
									<option value="2008">2008</option>
									<option value="2009">2009</option>
									<option value="2010">2010</option>
									<option value="2011">2011</option>
									<option value="2012">2012</option>
									<option value="2013">2013</option>
									<option value="2014">2014</option>
							</select> <select name="endquarter">
									<option value="all">all</option>
									<option value="Q1">Q1</option>
									<option value="Q2">Q2</option>
									<option value="Q3">Q3</option>
									<option value="Q4">Q4</option>
							</select>
							</td>
						</tr>

						<tr>
							<td>Mining Attribute</td>
							<td>
								<input type="checkbox" name="MiningAttributes"value="Year" />Year 
								<input type="checkbox" name="MiningAttributes" value="Age" />Age 
								<input type="checkbox" name="MiningAttributes" value="Gender" />Gender
								<input type="checkbox" name="MiningAttributes" value="Weight" />Weight
								<input type="checkbox" name="MiningAttributes" value="Country" />Country
							</td>
							<td><span id="pd"></span></td>
						</tr>

						<tr>
							<td>Measure</td>
							<td>
								<input type="radio" name="Measure" value="ROR" />ROR  
								<input type="radio" name="Measure" value="PRR" />PRR 
								<input type="radio" name="Measure" value="IC" />IC
							</td>
						</tr>
						
						<tr>
							<td>Number of Output Rules</td>
							<td>
								<input type="radio" name="numberofoutput" value="all" />All  
								<input type="radio" name="numberofoutput" value="topk" />Top k
							</td>
						</tr>

						<tr>
							<td>Submit</td>
							<td><input type="submit" value="OK" /></td>
						</tr>

					</table>
				</fieldset>
			</form>
		</div>
		<div id="content2" class="hidecontent">
			<form name="check" method="post" action="getForm">
				<table border="1" cellspacing="0">
					<tr>Years</tr><br />
					<tr>
						<input type="radio" name="years" value="2004"/>2004
						<input type="radio" name="years" value="2005"/>2005
						<input type="radio" name="years" value="2006"/>2006
						<input type="radio" name="years" value="2007"/>2007
						<input type="radio" name="years" value="2008"/>2008
						<input type="radio" name="years" value="2009"/>2009
						<input type="radio" name="years" value="2010"/>2010
					</tr><br />
					<tr>
						<input type="checkbox" name="quarter" value="Q1"/>Q1
						<input type="checkbox" name="quarter" value="Q2"/>Q2
						<input type="checkbox" name="quarter" value="Q3"/>Q3
						<input type="checkbox" name="quarter" value="Q4"/>Q4
					</tr><br /><br />
					
					<tr>Age</tr><br />
					<tr>
						<input type="checkbox" name="age" value="0_1"/>0~1
						<input type="checkbox" name="age" value="1_2"/>1~2
						<input type="checkbox" name="age" value="2_3"/>2~3
						<input type="checkbox" name="age" value="3_4"/>3~4
						<input type="checkbox" name="age" value="4_7"/>4~7
						<input type="checkbox" name="age" value="7_14"/>7~14
						<input type="checkbox" name="age" value="14_20"/>14~20
						<input type="checkbox" name="age" value="20_60"/>20~60
						<input type="checkbox" name="age" value="60_150"/>60~
					</tr><br /><br />
					
					<tr>Drug->Symtom</tr><br /><br />
					<tr>Drug</tr><br />
					<tr><input type="text" name="Drug" /></tr><br />
					<tr>Symtom</tr><br />
					<tr><input type="text" name="Symtom"/></tr><br /><br />
					
					<tr>Measures</tr><br />
					<tr>
						<input type="radio" name="measure" value="ROR"/>ROR
						<input type="radio" name="measure" value="PRR"/>PRR
						<input type="radio" name="measure" value="IC"/>IC
					</tr><br /><br />
					
					<tr>The number of signals</tr><br />
					<tr>
						<input type="radio" name="signals" value="All"/>All
						<input type="radio" name="signals" value="TopK"/>Top K<br />
						K=<input type="text" name="K"/>
					</tr><br /><br />
					
					
					<tr>
						<input type="submit" name="submitadvanced"/> 
					</tr>
					
									
				</table>
			</form>
		</div>
	</div>

  </body>
</html>
