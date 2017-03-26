/**
 * Created by Administrator on 2017/2/28.
 */
$(function () {
    var cc = $('.item-box');
    var len = cc.length;//商品的个数
    var arr = new Array();
    var choose = 0;//选择的个数
    var moneys = 0;//总金额
    $(".num").html(len);//总个数
    for (var i = 0; i < len; i++) {
        arr[i] = $("#money_" + (i + 1)).html();
    }
    function add(){
        $("#J_goCheckout").addClass("wei");//去结算样式
        $("#J_noSelectTip").removeClass("yin");//显示样式
    }
    function remove(){
        $("#J_goCheckout").removeClass("wei");//增加结算样式
        $("#J_noSelectTip").addClass("yin");//隐藏样式
    }
    //全选
    $("#J_selectAll").click(function () {
        if ($("#J_selectAll").attr('class').length > 30) { //判断是否选中
            add();
            $(this).removeClass("icon-checkbox-selected");
            $(".iyou").removeClass("icon-checkbox-selected");
            moneys = 0;
            for (var i = 0; i < len; i++) {
                (function () {
                    var aaa = i;
                    $("#moneyx_" + (aaa + 1)).html(0);
                    $("#moneys").html(moneys);
                })();
            }
            $(".choose").html(0);
        } else {
            remove()
            $(this).addClass("icon-checkbox-selected");
            $(".iyou").addClass("icon-checkbox-selected");
            $(".choose").html(len);
            moneys = 0;
            for (var i = 0; i < len; i++) {
                (function () {
                    var index = i;
                    var moneyx = 0;//小计  钱
                    var inp = $(".i_" + (index + 1) + " .J_goodsNum").val();//输入框的值
                    moneyx = Number(arr[index]) * inp;
                    $("#moneyx_" + (index + 1)).html(moneyx);
                    $("#moneys").html(moneys += moneyx);
                })();//先执行函数结束
            }//for循环结束
        }
    });
    //单选
    for (var i = 0; i < len; i++) {
        (function () {
            var index = i;
            //勾选时，价格会增加
            $(".i_" + (index + 1) + " .iyou").click(function () {
                moneys = Number($("#moneys").html());
                var moneyx = 0;//小计  钱
                var inp = $(".i_" + (index + 1) + " .J_goodsNum").val();//输入框的值
                if ($(this).attr('class').length > 40) { //判断是否选中,没选中
                    add();
                    $(this).removeClass("icon-checkbox-selected");
                    $("#J_selectAll").removeClass("icon-checkbox-selected");
                    $(".choose").html(choose -= 1);
                    $("#moneyx_" + (index + 1)).html(0);
                    moneyx = Number(arr[index]) * inp;
                    $("#moneys").html(moneys -= moneyx);
                } else {
                    remove();
                    moneyx = Number(arr[index]) * inp;
                    $(this).addClass("icon-checkbox-selected");
                    $(".choose").html(choose += 1);
                    $("#moneyx_" + (index + 1)).html(moneyx);
                    $("#moneys").html(moneys += moneyx);
                }
            });//单按钮点击事件结束

        })();//先执行函数结束
    }//for循环结束

//加减按钮
    for (var i = 0; i < len; i++) {
        (function () {
            var index = i;
            var moneyx = 0;//小计  钱
            var inp = $(".i_" + (index + 1) + " .J_goodsNum").val();//输入框的值
            //点击减号时
            $(".i_" + (index + 1) + " .J_minus .iconfont").click(function () {
                if ($(".i_" + (index + 1) + " .iyou").attr('class').length > 27) { //判断是否选中
                    add();
                    inp=$(".i_" + (index + 1) + " .J_goodsNum").val();
                    moneyx = Number(arr[index]) * inp;
                    $("#moneyx_" + (index + 1)).html(moneyx);
                    moneys = Number($("#moneys").html());
                    if (inp <= 1) {
                        inp = 1;
                        moneyx = Number(arr[index]);
                    } else {
                        inp = Number(inp) - 1;
                        moneyx = Number(moneyx) - Number(arr[index]);
                        $(".i_" + (index + 1) + " .J_goodsNum").val(inp);
                        $("#moneyx_" + (index + 1)).html(moneyx);
                        $("#moneys").html(moneys -= Number(arr[index]));
                    }
                } else {
                    remove();
                    $("#moneyx_" + (index + 1)).html(0);
                }
            });
            //点击加号时
            $(".i_" + (index + 1) + " .J_plus .iconfont").click(function () {
                if ($(".i_" + (index + 1) + " .iyou").attr('class').length > 27) { //选中
                    inp=$(".i_" + (index + 1) + " .J_goodsNum").val();
                    inp = Number(inp) + 1;
                    $(".i_" + (index + 1) + " .J_goodsNum").val(inp);
                    moneyx = Number(arr[index]) * Number(inp);
                    $("#moneyx_" + (index + 1)).html(moneyx);
                    $("#moneys").html(moneys += Number(arr[index]));
                }
            });
            //删除
            $(".i_" + (index + 1) + " .col-action a i").click(function () {
                var goodsID=$(".i_" + (index + 1)+ " .col-name a").attr("target");
                $.ajax({
                    url:"dropShoppingCar",
                    type:"post",
                    data:{"goodsID":goodsID},
                    success:function(a){
                        alert(a);
                        if(a=="删除成功"){
                            $(".i_" + (index + 1)).remove();
                        }
                        //location.href = "shoppingCar";
                    }
                })
            });
            //输入框的值改变时
           /* var y_inp = $(".i_" + (index + 1) + " .J_goodsNum").val(); //输入前输入框的值
            var x_inp;//输入后的值
            $(".i_" + (index + 1) + " .J_goodsNum").blur(function () {
                if ($(".i_" + (index + 1) + " .iyou").attr('class').length > 27) { //选中
                    x_inp = $(this).val();
                    if(x_inp<1 || isNaN(x_inp)){
                        x_inp=y_inp;
                    }
                    if (y_inp != x_inp) {
                        moneyx = Number(arr[index]) * Number(x_inp);
                        $("#moneyx_" + (index + 1)).html(moneyx);
                        //var inps=$(".i_" + (index + 1) + " .J_goodsNum").val();
                        moneys+=moneyx-Number(arr[index]) *y_inp;
                        $("#moneys").html(moneys);
                        y_inp=x_inp;
                    } else {
                        $("#moneys").html(moneys);
                    }
                    $(this).val(x_inp);
                } else {
                    $(this).val(y_inp);
                    $("#moneys").html(moneys);
                }
            })
*/
        })();//先执行函数结束
    }//for循环结束
});