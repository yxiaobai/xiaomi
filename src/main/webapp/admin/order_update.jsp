<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/admin/admin.css">
    <script src="<%=request.getContextPath()%>/resources/js/admin/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/admin/pintuer.js"></script>
     <!--mydate97日期  js-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/My97DatePicker/WdatePicker.js"></script>
</head>
<body>


<div class="panel admin-panel margin-top" id="add">
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>修改订单</strong></div>
    <div class="body-content">
        <form  action="/ord_update" method="post"  class="form-x"  >
            <div class="form-group">
                <div class="label">
                    <label>订单id：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_id" value="${order_update.order_id}" readonly />
                    <%--<label style="line-height:33px;">--%>
                        <%--${order_update.order_id}--%>
                    <%--</label>--%>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>用户id：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="user_id" value="${order_update.user_id}" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>订单价格：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_price" value="${order_update.order_price}" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>订单收货人：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_name"  value="${order_update.order_name}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>收货地址：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_addr"  value="${order_update.order_addr}" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>收货人电话：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_phone" value="${order_update.order_phone}"  />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>收货人联系电话：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_tel"  value="${order_update.order_tel}"  />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>订单备注：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_desc"  value="${order_update.order_desc}" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>订单状态：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="state"  value="${order_update.state}" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                    <a href="admin/order_admin.jsp" class="button bg-main icon-check-square-o">返回</a>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>
