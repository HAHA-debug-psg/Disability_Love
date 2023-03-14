<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>荆棘里的向往--个人信息</title>
	<link href="https://www.biyiai.com/res/p/css/p.css?1677995438" rel="stylesheet" type="text/css" />
	<link href="https://www.biyiai.com/res/p/css/my.css?1677995438" rel="stylesheet" type="text/css" />
	<link href="https://www.biyiai.com/res/p/css/my_info.css?1677995438" rel="stylesheet" type="text/css" />
	<script src="https://www.biyiai.com/res/www_zeai_cn.js?1677995438"></script>
	<script src="https://www.biyiai.com/res/p/js/p.js?1677995438"></script>
	<script src="https://www.biyiai.com/cache/udata.js?1677995438"></script>
	<script src="https://www.biyiai.com/cache/areadata.js?1677995438"></script>
	<script src="https://www.biyiai.com/res/select4.js?1677995438"></script>
	<script src="https://www.biyiai.com/res/p/js/date_input.js?1677995438"></script>
	<script src="../../js/jquery-3.6.0.js"></script>
</head>
<body>
<div style="background-image: url(../../image/coverd.png)">
<div class="subNav" style="position:fixed;top:0;background-color: antiquewhite;width:100%;z-index: 999;height:45px;opacity: 0.4;display: flex;">
	<div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="http://localhost:8080" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">首页</a></div>
	<div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userInformation/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">个人信息</a></div>
	<div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/useMateSelection/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">择偶信息</a></div>
	<div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userInformation/showAllPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">大伙的个人信息</a></div>
	<div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userTrend/showPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">个人动态</a></div>
	<div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/userTrend/showAllPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">大伙的动态</a></div>
	<div style="width:1%;top:45px;text-align: center;margin-left:2%"><a href="/managerNews/showALlUserNewsPage" style="text-decoration: none;color: black;font-size: 23px;display: block;font-weight: 900;width:1%;">平台新闻公告</a></div>

</div>
<h1 style="font-weight: 900; font-family: '宋体';padding-top: 5px;padding-bottom: 1%; color: whitesmoke">个人资料</h1>
<div class="zeai_my_box myRM" style="width:55%;background-color: white;margin: 0 auto;">

	<form action="${pageContext.request.contextPath}/userInformation/update" method="get" style="margin: 0 auto;">
		<div class="myRC">
			<dl></dl>
			<dl></dl>
			<dl></dl>

			<dl>
				<dt>
					<font class="Cf00 S16">*</font> 昵称
				</dt>

				<dd><input name="username" id="user" class="input" value=${name} />
					<input name="hl_token" id="hl_token" type="hidden" value=${hl_token} />
				</dd>
			</dl>

			<dl>
				<dt>
					<font class="Cf00 S16">*</font> 性别
				</dt>
				<dd>
					<script>
						zeai_cn__CreateFormItem('select', 'sex', '${gender}', '');
					</script>
				</dd>
			</dl>

			<dl>
				<dt>
					<font class="Cf00 S16">*</font> 年龄
				</dt>
				<dd>
					<script>
						zeai_cn__CreateFormItem('select', 'age', '${age}', '');
					</script>
				</dd>
			</dl>

			<dl>
				<dt>
					<font class="Cf00 S16">*</font> 婚姻状态
				</dt>
				<dd>
					<script>
						zeai_cn__CreateFormItem('select', 'love', '${marital_status}', '');
					</script>
				</dd>
			</dl>

			<dl>

				<dt>
					<font class="Cf00 S16">*</font> 地址
				</dt>
				<dd>
					<script>
						LevelMenu4('a1|a2|a3|a4|请选择|510100|510100|510100||areaid|areatitle|四川 成都 双流县', ' class="SW SW_area"');
					</script>
				</dd>
			</dl>

			<dl>
				<dt>
					<font class="Cf00 S16">*</font> 身高
				</dt>
				<dd>
					<script>
						zeai_cn__CreateFormItem('select', 'heigh', '${height}', '');
					</script>
				</dd>
			</dl>
			<dl>
				<dt>
					<font class="Cf00 S16">*</font> 体重
				</dt>
				<dd>
					<script>
						zeai_cn__CreateFormItem('select', 'weigh','${weight}', '');
					</script>
				</dd>
			</dl>

			<dl>
				<dt>
					<font class="Cf00 S16">*</font> 残疾类型
				</dt>
				<dd>
					<script>
						zeai_cn__CreateFormItem('select', 'cjkind', '${disability}', '');
					</script>
				</dd>
			</dl>

			<dl>
				<dt>
					<font class="Cf00 S16">*</font> 学历
				</dt>
				<dd>
					<script>
						zeai_cn__CreateFormItem('select', 'edu', '${education_background}', '');
					</script>
				</dd>
			</dl>

			<dl>
				<dt>
					<font class="Cf00 S16">*</font> 职业
				</dt>
				<dd>
					<script>
						zeai_cn__CreateFormItem('select', 'job', '${job}', '');
					</script>
				</dd>
			</dl>


			<dl>
				<dt>
					<font class="Cf00 S16">*</font> 自我介绍
				</dt>
				<dd>
					<script>
						zeai_cn__CreateFormItem('textarea', 'aboutus', '${introduction}',
								' class="textarea" placeholder="简短个人介绍，三观等（全部人工审核，切勿填写联系方式 否则资料无法通过。" ');
					</script>
				</dd>
			</dl>

			<dl>
				<dt>&nbsp;</dt>
				<dd>
					<button type="button" id="sub"
							style="width: 100%; height: 50px;  color: #fff;  font-size: 16px;  border: 0 none;text-align: center;line-height: 50px;background-color:#743730;border-radius: 3px">提交</button>
				</dd>
			</dl>

    </div>
	</form>
</div>
</div>
</body>
<script>


	let sub = document.getElementById("sub");
	sub.addEventListener("click", function() {
		var data = {
			"name": document.getElementById('user').value,
			"gender": document.getElementById('sex').value,
			"age": document.getElementById('age').value,
			"marital_status": document.getElementById('love').value,
			"address_province_code": document.getElementById('a1').value,
			"address_city_code": document.getElementById('a2').value,
			"address_county_code": document.getElementById('a3').value,
			"address_detail_code": document.getElementById('a4').value,
			"height": document.getElementById('heigh').value,
			"weight": document.getElementById('weigh').value,
			"education_background": document.getElementById('edu').value,
			"disability": document.getElementById('cjkind').value,
			"job": document.getElementById('job').value,
			"introduction": document.getElementById('aboutus').value,
			"hl_token": window.localStorage.getItem('hl_token'),
			"address": document.getElementById('areatitle').value
		};
		console.log(data);
		$.ajax({
					url: "/userInformation/update",
					type: "post",
					contentType: 'application/json;charset=utf-8',
					data: JSON.stringify(data),
					success: function() {
						alert("更新成功！");
					}
				}
		)
	});
</script>
</html>
