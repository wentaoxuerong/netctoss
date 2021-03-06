<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>登录界面</title>
        <link type="text/css" rel="stylesheet" media="all" href="styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="styles/global_color.css" /> 
        <script src="js/jquery-1.11.1.js"></script>
        <script language="javascript" type="text/javascript">
        $(function(){
        if(!${result } ){
        		  window.alert("用户名或密码不正确，请重新输入");
        	  }
        });
        </script>
    </head>
    <body class="index">
        <div class="login_box">
           <form action="loginCheck.loginmain" method="post">
            <table>
                <tr>
                    <td class="login_info">账号：</td>
                    <td colspan="2"><input name="user_name" type="text" class="width150" /></td>
                    <td class="login_error_info"><span class="required">30长度的字母、数字和下划线</span></td>
                </tr>
                <tr>
                    <td class="login_info">密码：</td>
                    <td colspan="2"><input name="user_password" type="password" class="width150" /></td>
                    <td><span class="required">30长度的字母、数字和下划线</span></td>
                </tr>
                <tr>
                    <td class="login_info">验证码：</td>
                    <td class="width70"><input name="code" type="text" class="width70" /></td>
                    <td><img src="getImag.loginmain" alt="验证码" title="点击更换" 
                    onclick="this.setAttribute('src','getImag.loginmain?x='+Math.random())"/></td>  
                    <td><span class="required"></span></td>              
                </tr>            
                <tr>
                    <td></td>
                    <td class="login_button" colspan="2">
                       <!-- 
                    			表单提交的方式:
                    			1.点击submit按钮,触发表单的onsubmit事件
                    			2.通过js调用表单的submit()
                    		 -->
                        <a href="javascript:document.forms[0].submit();"><img src="images/login_btn.png" /></a>
                    </td>    
                    <td><span class="required">${error }</span></td>                  
                </tr>
            </table>
            </form>
        </div>
    </body>
</html>