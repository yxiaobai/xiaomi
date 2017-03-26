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
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>修改详细订单</strong></div>
    <div class="body-content">
        <form  action="/xm_order_update" method="post"  class="form-x"  >
            <div class="form-group">
                <div class="label">
                    <label>订单ID：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_id" value="${order_qu.order_id}" readonly  />
               <%--     <label style="line-height:33px;" name="order_id">
                        ${order_qu.order_id}
                    </label>--%>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>订单号：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_sn" value="${order_qu.order_sn}"  readonly />
                   <%-- <label style="line-height:33px;" name="order_sn">
                        ${order_qu.order_sn}
                    </label>--%>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>日期：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_data" id="d11" value="${order_qu.order_data}" onClick="WdatePicker()" placeholder="请选择日期"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>商品id：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="goodsid" value="${order_qu.goodsid}"  />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>商品名：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pro_name" value="${order_qu.pro_name}" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>商品描述：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pro_desc" value="${order_qu.pro_desc}" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>商品颜色：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pro_color" value="${order_qu.pro_color}"  />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>商品数量：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pro_num" value="${order_qu.pro_num}" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>商品单价：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pro_price" value="${order_qu.pro_price}" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>订单总计：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="tal_price" value="${order_qu.tal_price}" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                    <a href="admin/order_detail_admin.jsp" class="button bg-main icon-check-square-o">返回</a>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    $(function () {
        $('.orders').click(function () {
            $.ajax({
                url:'/orderItem',
                type:'get',
                data:"{'key':'val'}",
                //dataType:html,
                success:function (a) {
                    $('.order_s').val(a);
                }
            })
        })
    })
</script>
</body>
</html>
