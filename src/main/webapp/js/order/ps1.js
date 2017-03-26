$(function(){

    $("body").click(function(){//点击空白处隐藏，使用e.stopPropagation()阻止事件冒泡
        $(".quanprovince").hide();
        $(".quancity").hide();
        $(".quanarea").hide();
    });
    //下拉列表获取地址
    var strSHENG = document.querySelector('.ulprovince').outerHTML;  //获取class为ulprovince的outerHTML
    var strSHI = document.querySelector('.ulcity').outerHTML;  //获取class为ulcity的outerHTML
    var strQU = document.querySelector('.ularea').outerHTML;  //获取class为ulcity的outerHTML
    //从js库里得到所有的数据
    var sfgsmr = provinceList;
    var sfxz = 0;
    var csxz = 0;
    var qyxz = 0;
    /*省*/
    document.querySelector('.dianprovince').onclick=function(e){
        document.querySelector('.quanprovince').style.display="block";//下拉窗口显示
        e.stopPropagation();
        var str = strSHENG.substring(0, strSHENG.length - 5);  //获取strSHENG的第0-第3个字节
        for (var i = 0; i < sfgsmr.length; i++) //
        {
            str += "<li value='" + sfgsmr[i].name + "' style='padding-left:10px;'> " + sfgsmr[i].name + "</li>";  //创建li标签 把i值放进去
        }
        document.querySelector('.ulprovince').outerHTML = str +"</ul>";  //把li放进class为ulyear中
        var lis=document.querySelector('.ulprovince').getElementsByTagName('li'); //获取这里边的li标签
        for (var i=0;i<lis.length ;i++ )
        {
            lis[i].onclick=function(){
                for (var ii=0;ii<lis.length ;ii++ )
                {
                    if (this == lis[ii])
                    {
                        document.querySelector('.provincexs').innerHTML=lis[ii].innerHTML; //li的内容赋给document.querySelector('.xs')
                        var sheng=lis[ii].getAttribute('value'); //获取点击的li的value属性值
                        document.querySelector('.provincexs').setAttribute("value",sheng); //设置document.querySelector('.xs')的value属性值yearvalue
                        document.querySelector('.quanprovince').style.display="none"; //窗口消失
                        var shi = provinceList[ii].cityList[0].name;
                        document.querySelector('.cityxs').innerHTML=shi;
                        var qu = provinceList[ii].cityList[0].areaList[0];
                        document.querySelector('.areaxs').innerHTML=qu;
                        return sfxz = sheng;//把选中的li的传参给省
                    }
                }
            }
        }
    }

    /*市*/
    var shiXb = 0;
    document.querySelector('.diancity').onclick=function(e){
        document.querySelector('.quancity').style.display="block";//下拉窗口显示
        e.stopPropagation();
        for(var i=0;i<sfgsmr.length ;i++){
            if(provinceList[i].name == sfxz){
                shiXb = i;
                var str = strSHI.substring(0, strSHI.length - 5);
                for(var j = 0; j<provinceList[i].cityList.length; j++){
                    str += "<li value='" + provinceList[i].cityList[j].name + "' style='padding-left:10px;'> " + provinceList[i].cityList[j].name + "</li>";
                }
                document.querySelector('.ulcity').outerHTML = str +"</ul>";
                var lis=document.querySelector('.ulcity').getElementsByTagName('li');
                for (var ii=0;ii<lis.length ;ii++ )
                {
                    lis[ii].onclick=function(){
                        for (var jj=0; jj<lis.length; jj++)
                        {
                            if (this == lis[jj])
                            {
                                document.querySelector('.cityxs').innerHTML=lis[jj].innerHTML;
                                var shi=lis[jj].getAttribute('value');
                                document.querySelector('.cityxs').setAttribute("value",shi);
                                document.querySelector('.quancity').style.display="none";
                                var qu = provinceList[shiXb].cityList[jj].areaList[0];
                                document.querySelector('.areaxs').innerHTML=qu;
                                return csxz = shi;//把选中的li的传参给市
                            }
                        }
                    }
                }
            }
        }
    }
    /*区*/
    document.querySelector('.dianarea').onclick=function(e){
        document.querySelector('.quanarea').style.display="block";//下拉窗口显示
        e.stopPropagation();
        for(var i=0;i<sfgsmr.length;i++){
            if(provinceList[i].name == sfxz){
                for(var j=0;j<provinceList[i].cityList.length;j++){
                    if(provinceList[i].cityList[j].name == csxz){
                        var str = strQU.substring(0, strQU.length - 5);
                        for(var k = 0; k<provinceList[i].cityList[j].areaList.length; k++){
                            str += "<li value='" + provinceList[i].cityList[j].areaList[k]+ "' style='padding-left:10px;'> " + provinceList[i].cityList[j].areaList[k] + "</li>";
                        }
                        document.querySelector('.ularea').outerHTML = str +"</ul>";
                        var lis=document.querySelector('.ularea').getElementsByTagName('li');
                        for (var ii=0;ii<lis.length ;ii++ )
                        {
                            lis[ii].onclick=function(){
                                for (var jj=0; jj<lis.length; jj++)
                                {
                                    if (this == lis[jj])
                                    {
                                        document.querySelector('.areaxs').innerHTML=lis[jj].innerHTML;
                                        document.querySelector('.quancity').style.display="none";
                                        return qyxz = qu;//把选中的li的传参给区
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
})