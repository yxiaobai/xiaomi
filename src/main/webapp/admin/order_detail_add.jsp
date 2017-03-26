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
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>添加订单详细</strong></div>
    <div class="body-content">
        <form  action="/xm_order_insert" method="post"  class="form-x"  >
            <div class="form-group">
                <div class="label">
                    <label>订单号：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50 order_s" value="" name="order_sn"  readonly="true"/>
                    <div class="tips"><a href="javaScript:0"><input type="button" class="orders button bg-blue margin-left" value="生成订单号"></a></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>日期：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="order_data" id="d11"  onClick="WdatePicker()" placeholder="请选择日期"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>商品id：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="goodsid" value="" data-validate="required:请输入商品id" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>商品名：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pro_name" value="" data-validate="required:请输入商品名" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>商品描述：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pro_desc" value="" data-validate="required:请输入商品描述" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>商品颜色：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pro_color" value="" data-validate="required:请输入商品颜色" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>商品数量：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pro_num" value="" data-validate="required:请输入商品数量" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>商品单价：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="pro_price" value="" data-validate="required:请输入商品单价" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>订单总计：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="tal_price" value="" data-validate="required:请输入订单总计" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                    <a href="order_detail_admin.jsp" class="button bg-main icon-check-square-o">返回</a>
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
