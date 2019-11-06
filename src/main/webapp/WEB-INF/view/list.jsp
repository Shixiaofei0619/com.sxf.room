<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resource/css/index3.css" rel="stylesheet">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
//全选 反选
function chkAll(){
		$(".ck").prop("checked",true);
}
//批量删除
function plsc(){
	var ids = [];
	$(".ck:checked").each(function(){
		ids.push(this.value);
	})
	if(ids.length>0){
		alert("删除成功");
		location="delAll?ids="+ids;
	}else{
		alert("删除失败");
	}
}
//修改上架下架
function update(stutas,id){
	location="update?stutas="+stutas+"id="+id;
}
</script>
<body>
<form action="selects" method="post">
	 影片：<input type="text" name="name" value="${movieVo.name }">
	上映时长:<input type="date" name="startTime" value="${movieVo.startTime }">--- 
			<input type="date" name="endTime" value="${movieVo.endTime }"><br>
	导演：<input type="text" name="actor" value="${movieVo.actor }">
	价格:<input type="text" name="startPrice" value="${movieVo.startPrice }">--- 
			<input type="text" name="endPrice" value="${movieVo.endPrice }"><br>
	电影年代：
			<select name="year" id="year">
				<option value="">请选择</option>
				<option value="2010">2010</option>
				<option value="2014">2014</option>
				<option value="2018">2018</option>
				<option value="2019">2019</option>
			</select>
	电影时长:<input type="text" name="startMit" value="${movieVo.startMit }">--- 
			<input type="text" name="endMit" value="${movieVo.endMit }"><br>
			<button>查询影片</button>
			<a><input type="button" value="批量删除" onclick="plsc()"></a> 
<table>
	<tr>
		<td>
			<input type="checkbox" onclick="chkAll(1)">全选
			<input type="checkbox" onclick="chkAll(-1)">反选
		</td>
		<td>编号</td>
		<td>影片名</td>
		<td>导演</td>
		<td>票价</td>
		<td><a onclick="${uptime}">上映时间</a></td>
		<td><a onclick="${uptime}">时长</a></td>
		<td>类型</td>
		<td><a onclick="${uptime}">年代</a></td>
		<td>区域</td>
		<td>状态</td>
		<td>操作</td>
	</tr>
	<c:forEach items="${pg.list}" var="m" varStatus="i">
	<tr>
		<td><input type="checkbox" value="${m.id}" class="ck"></td>
		<td>${i.index+1 }</td>
		<td>${m.name }</td>
		<td>${m.actor }</td>
		<td>${m.price }</td>
		<td><fmt:formatDate value="${m.time }" pattern="yyyy-MM-dd"/></td>
		<td>${m.mit }</td>
		<td>${m.type }</td>
		<td>${m.year }</td>
		<td>${m.area }</td>
		<td>${m.stutas}</td>
		<td>
			<button onclick="update(${m.stutas})" id="1">下架</button>
			<button onclick="update(${m.stutas})" id="2">热映</button>
		</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="15">
			<button name="pageNum" value="1">首页</button>
			<button name="pageNum" value="${pg.prePage==0?1:pg.prePage }">上一页</button>
			<button name="pageNum" value="${pg.nextPage==0?pg.pages:pg.nextPage }">下一页</button>
			<button name="pageNum" value="${pg.pages }">尾页</button>
		</td>
	</tr>
</table>
</form>
</body>
</html>