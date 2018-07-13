/**
 *模型分析
 */


/**模型计数器*/
var modelCounter = 0;
/**
 * 初始化一个jsPlumb实例
 */
var instance = jsPlumb.getInstance({
    DragOptions: { cursor: "pointer", zIndex: 2000 },
    ConnectionOverlays: [
        [ "Arrow", {
            location: 1,
            visible:true,
            width:11,
            length:11,
            direction:1,
            id:"arrow_forwards"
        } ],
        [ "Arrow", {
            location: 0,
            visible:true,
            width:11,
            length:11,
            direction:-1,
            id:"arrow_backwards"
        } ],
        [ "Label", {
            location: 0.5,
            id: "label",
            cssClass: "aLabel"
        }]
    ],
    Container: "container"
});
instance.importDefaults({
    ConnectionsDetachable:true,
    ReattachConnections:true
});

/**
 * 该实体是否还有子实体
 */
function hasSons(data) {
    //console.log(data.name)
    if(data.sons!=null){
        return true;
    }else{
        return false;
    }
}

/**
 * 设置左边菜单
 * @param Data
 */
function setLeftMenu(list)
{
console.log(list);

    function isArray(obj){
        return (typeof obj=='object')&&obj.constructor==Array;
    }

    /*
    for(var obj in list){
        //console.log(list[obj]);//第一层数据
        var object=list[obj];//第一层数据
        if(hasSons(object)){
            var list1=object.sons;//第二层数据数组
            //console.log(list1);
            for(var obj1 in list1){
                var object1=list1[obj1];//第二层数据
                //console.log(object1);
                //console.log(object1.sons);
                //console.log(hasSons(object1));
                if(hasSons(object1)){
                    var list2=object1.sons;//第三层数据数组
                    for(var obj2 in list2){
                        var object2=list2[obj2];//第三层数据
                        //console.log(object2);
                        if(hasSons(object2)){
                            var list3=object2.sons;//第四层数据数组
                            for(var obj3 in list3){
                                var object3=list3[obj3];//第四层数据
                                console.log(object3);
                            }
                        }
                    }

                }
            }

        }


    }
   */
/*
    for(var obj in list){
        for(var tmp in list[obj]){
            var element_str = '<li id="' + list[obj][tmp].index + '" model_type="' + tmp + '">' + list[obj][tmp].name + '</li>';
            $("#leftMenu").append(element_str);
        }
    }
    */
    var str="";
    str+='<ul class="cd-accordion-menu animated" style="background: #ffffff;color:#ffffff";>\n';
    for(var obj in list){
        //console.log(list[obj]);//第一层数据
        //console.log(obj)
        var object=list[obj];//第一层数据
        if(hasSons(object)){

            str+='<li class="has-children" id="'+object.index+'">\n' +
                '\t\t<input type="checkbox" name ="'+object.index+'_input" id="'+object.index+'_input" checked>\n' +
                '\t\t<label for="'+object.index+'_input">'+object.name+'</label>\n';
            str+='<ul>\n';
            var list1=object.sons;//第二层数据数组
            //console.log(list1);
            for(var obj1 in list1){

                var object1=list1[obj1];//第二层数据
                //console.log(obj1)
                //console.log(object1);
                //console.log(object1.sons);
                //console.log(hasSons(object1));
                if(hasSons(object1)){

                    str+='\t\t\t<li class="has-children" id="'+object1.index+'">\n' +
                        '\t\t\t\t<input type="checkbox" name ="'+object1.index+'_input" id="'+object1.index+'_input">\n' +
                        '\t\t\t\t<label for="'+object1.index+'_input">'+object1.name+'</label>\n'
                    str+='<ul>\n';
                    var list2=object1.sons;//第三层数据数组
                    for(var obj2 in list2){
                        var object2=list2[obj2];//第三层数据
                        //console.log(obj2)
                        //console.log(object2);
                        if(hasSons(object2)){
                            str+='\t\t\t<li class="has-children" id="'+object2.index+'">\n' +
                                '\t\t\t\t<input type="checkbox" name ="'+object2.index+'_input" id="'+object2.index+'_input">\n' +
                                '\t\t\t\t<label for="'+object2.index+'_input">'+object2.name+'</label>\n'
                            str+='<ul>\n';
                            var list3=object2.sons;//第四层数据数组
                            for(var obj3 in list3){
                                var object3=list3[obj3];//第四层数据
                               // console.log(obj3)
                                //console.log(object3);
                                if(hasSons(object3)){
                                    str+='\t\t\t<li class="has-children" id="'+object3.index+'">\n' +
                                        '\t\t\t\t<input type="checkbox" name ="'+object.index+'_input" id="'+object.index+'_input">\n' +
                                        '\t\t\t\t<label for="'+object3.index+'_input">'+object3.name+'</label>\n'
                                    str+='<ul>\n';
                                    str+='</ul>\n';
                                    str+='</li>\n';
                                }else{
                                    str+='<li id="entity_'+object3.index+'" model_type="'+obj3+'"><a href="#0">'+object3.name+'</a></li>\n';
                                }
                            }
                            str+='</ul>\n';
                            str+='</li>\n';

                        }else{
                            str+='<li id="entity_'+object2.index+'" model_type="'+obj2+'"><a href="#0">'+object2.name+'</a></li>\n';
                        }

                    }

                    str+='</ul>\n';
                    str+='</li>\n';
                }else{
                    str+='<li id="entity_'+object1.index+'" model_type="'+obj1+'"><a href="#0">'+object1.name+'</a></li>\n';
                }
            }
            str+='</ul>\n';
            str+='</li>\n';
        }
        else{

            str+='<li id="entity_'+object.index+'" model_type="' + obj + '"><a href="#0">Image</a></li>\n';
        }


    }
    str+="</ul>\n";
    // console.log(str)
    $("#leftMenu").append(str);
    //拖拽设置    实体类控件可以拖拽
    $("li[id^='entity_']").draggable({
        helper: "clone",
        scope: "plant"
    });

    $("#container").droppable({
        scope: "plant",
        drop: function(event, ui){
            CreateModel(ui, $(this));
        }
    });

    //console.log($("li[id^='entity_']"));
}

/**
 * 打开设置图框
 */
function openSetting(model) {
    var id=model.id;
    var modeltype=$("#"+id).attr("modeltype");
    console.log($("#"+id).attr("modeltype"))
    init(modeltype)
}

/**
 * 添加模型
 * @param ui
 * @param selector
 */
function CreateModel(ui, selector)
{
    var modelId = $(ui.draggable).attr("id");
    var id = modelId + "_model_" + modelCounter++;
    var type = $(ui.draggable).attr("model_type");
    //console.log(modelId)
    //console.log(id)
    //console.log(type)
    $(selector).append('<div class="model" id="' + id
        + '" modelType="'+ type +'" ondblclick="openSetting(this)">'
        + getModelElement(type) + '</div>');

    var left = parseInt(ui.offset.left - $(selector).offset().left);
    var top = parseInt(ui.offset.top - $(selector).offset().top);
    $("#"+id).css("position","absolute").css("left",left).css("top",top);
    //添加连接点
    instance.addEndpoint(id, { anchors: "RightMiddle" }, hollowCircle);
    instance.addEndpoint(id, { anchors: "LeftMiddle" }, hollowCircle);
    instance.addEndpoint(id, { anchors: "TopCenter" }, hollowCircle);
    instance.addEndpoint(id, { anchors: "BottomCenter" }, hollowCircle);
    //注册实体可draggable
    $("#" + id).draggable({
        containment: "parent",
        drag: function (event, ui) {
            instance.repaintEverything();
        },
        stop: function () {
            instance.repaintEverything();
        }
    });
}
//端点样式设置
var hollowCircle = {
    endpoint: ["Dot",{ cssClass: "endpointcssClass"}], //端点形状
    connectorStyle: connectorPaintStyle,
    paintStyle: {
        fill: "#62A8D1",
        radius: 6
    },		//端点的颜色样式
    isSource: true, //是否可拖动（作为连接线起点）
    connector: ["Flowchart", {stub: 30, gap: 0, coenerRadius: 0, alwaysRespectStubs: true, midpoint: 0.5 }],
    isTarget: true, //是否可以放置（连接终点）
    maxConnections: -1
};
//基本连接线样式
var connectorPaintStyle = {
    stroke: "#62A8D1",
    strokeWidth: 2
};

function getModelElementStr(model_data) {
    var list="";
    list += '<h4><span index="'
        + model_data.index + '">'
        + model_data.name
        + '</span><a href="javascript:void(0)" class="pull-right" onclick="removeElement(this);">X</a>'
        + '</h4>';
    list += '<ul>'
    var properties = model_data.properties;
    list += parseProperties(properties);
    list += '</ul>';
    return list;

}
/**
 * 创建模型内部元素
 * @param type
 * @returns {String}
 */
function getModelElement(type)
{
    var data=testdata;

    var list = '';

    for(var obj in data){
        var object=data[obj];
        if(object.type==type){
            list+=getModelElementStr(object);
            break;
        }
        if(hasSons(object)){
            var data1=object.sons;//第二层数据数组
            //console.log(data1);
            for(var obj1 in data1){
                var object1=data1[obj1];//第二层数据
                if(object1.type==type){
                    list+=getModelElementStr(object1);
                    break;
                }
                //console.log(object1);
                //console.log(object1.sons);
                //console.log(hasSons(object1));
                if(hasSons(object1)){
                    var data2=object1.sons;//第三层数据数组
                    for(var obj2 in data2){
                        var object2=data2[obj2];//第三层数据
                        if(object2.type==type){
                            list+=getModelElementStr(object2);
                            break;
                        }
                        //console.log(object2);
                        if(hasSons(object2)){
                            var data3=object2.sons;//第四层数据数组
                            for(var obj3 in data3){
                                var object3=data3[obj3];//第四层数据
                                if(object3.type==type){
                                    list+=getModelElementStr(object3);
                                    break;
                                }
                                // console.log(object3);
                            }
                        }
                    }

                }
            }

        }
    }

    return list;
}
/**
 * 循环遍历properties
 * @param obj
 * @returns {String}
 */
function parseProperties(obj)
{
    var str = "";
    for(var v in obj){
        if(obj[v].properties == undefined){

            str += '<li><input type="checkbox" name="'
                + v + '" value="'
                + v + '"><a>'
                + obj[v].des + '</a></li>';
        }else{
            str += arguments.callee(obj[v].properties);
        }
    }
    return str;
}


/**
 * 获取model的内部界面
 * @param model_data
 */
function getModelContent(model_data) {
    var str='';
    console.log(model_data.properties)
    for(var v in model_data.properties){
        console.log(v)
        str += '<li>'+ model_data.properties[v].des + ':<input type="text" name="'
            + v + '" value="'
            + v + '"></li>';
    }
    return str;
}


/**
 * 获取model
 * @param model
 */
function getModel(type) {

    var data=testdata;

    var list = '';

    for(var obj in data){
        var object=data[obj];
        if(object.type==type){
            list+=getModelContent(object);
            break;
        }
        if(hasSons(object)){
            var data1=object.sons;//第二层数据数组
            //console.log(data1);
            for(var obj1 in data1){
                var object1=data1[obj1];//第二层数据
                if(object1.type==type){
                    list+=getModelContent(object1);
                    break;
                }
                //console.log(object1);
                //console.log(object1.sons);
                //console.log(hasSons(object1));
                if(hasSons(object1)){
                    var data2=object1.sons;//第三层数据数组
                    for(var obj2 in data2){
                        var object2=data2[obj2];//第三层数据
                        if(object2.type==type){
                            list+=getModelContent(object2);
                            break;
                        }
                        //console.log(object2);
                        if(hasSons(object2)){
                            var data3=object2.sons;//第四层数据数组
                            for(var obj3 in data3){
                                var object3=data3[obj3];//第四层数据
                                if(object3.type==type){
                                    list+=getModelContent(object3);
                                    break;
                                }
                                // console.log(object3);
                            }
                        }
                    }

                }
            }

        }
    }
    console.log(list)
    return list;
}


//设置model
function init(modeltype)
{
    console.log(modeltype)
    var label_text="";
    $("#modalbody").empty();
    label_text+=getModel(modeltype);


    $("#modalbody").append(label_text);
    /*$("#select_sourceList").empty();
    $("#select_targetList").empty();
    var sourceName = $("#" + conn.sourceId).attr("modelType");
    var targetName = $("#" + conn.targetId).attr("modelType");
    for(var i = 0; i < metadata.length; i++){
        for(var obj in metadata[i]){
            if(obj == sourceName){
                var optionStr = getOptions(metadata[i][obj].properties,metadata[i][obj].name);
                $("#select_sourceList").append(optionStr);
            }else if(obj == targetName){
                var optionStr = getOptions(metadata[i][obj].properties,metadata[i][obj].name);
                $("#select_targetList").append(optionStr);
            }
        }
    }
    $("#submit_label").unbind("click");
    $("#submit_label").on("click",function(){
        setlabel(conn);
    });*/
    $("#myModal").modal();
}
/**
 * 获取option
 * @param obj
 * @returns {String}
 */
function getOptions(obj,head)
{
    var str = "";
    for(var v in obj){
        if(obj[v].properties == undefined){
            var val = head + '.' + obj[v].des;
            str += '<option value="' + val + '">'
                +val
                +'</option>';
        }else{
            str += arguments.callee(obj[v].properties,head);
        }
    }
    return str;
}
//setlabel
function setlabel(conn)
{
    conn.getOverlay("label").setLabel($("#select_sourceList").val()
        + ' '
        + $("#select_comparison").val()
        + ' '
        + $("#select_targetList").val());
    if($("#twoWay").val()=="true"){
        conn.setParameter("twoWay",true);
    }else{
        conn.setParameter("twoWay",false);
        conn.hideOverlay("arrow_backwards");
    }
}
//删除节点
function removeElement(obj)
{
    var element = $(obj).parents(".model");
    if(confirm("确定删除该模型？"))
        instance.remove(element);
}

