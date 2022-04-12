$(document).ready(function () {
    $("#myInput").on("keyup", function () {
        var dt = 0;
        var value = $(this).val().toLowerCase();
        $("#myList li").filter(function () {
            var k = $(this).text().toLowerCase().indexOf(value) > -1;
            if (k == true) {
                dt += 1
                if (dt > 6) { k = false }
            }
            $(this).toggle(k)
            
        });
        $("#myList").attr('style', 'display:block')
        if ($(this).val() == "") {
            $("#myList").attr('style', 'display:none');
        }
    });

   // iphone
   var q = 0
    $("#iphone").click(function(){   
        $("#samS").attr('class','')  
        if(q==0){         
            $("#homeproduct li").filter(function () {
                var j = $(this).text().indexOf("iPhone") > -1;
                $(this).toggle(j)
            });
            $("#iphone").attr('class','bg-info')
             q = q +1 
        }
        else{
            $("#iphone").attr('class','')
            $("#homeproduct li").attr("style","display:block")
            q=0
        }
    })

    // samsung
    var sa = 0
    $("#samS").click(function(){  
        $("#iphone").attr('class','')
        if(sa==0){         
            $("#homeproduct li").filter(function () {
                var j = $(this).text().indexOf("Sam") > -1;
                $(this).toggle(j)
            });
            $("#samS").attr('class','bg-info')
             sa = sa +1 
        }
        else{
            $("#samS").attr('class','')
            $("#homeproduct li").attr("style","display:block")
            sa=0
        }
    })

    // 4-7 tr
    $("#4_7").click(function(){
        $("#homeproduct li").attr('style','display:block')
        $("#15_").attr("style","text-decoration:none")
        $("#homeproduct li").filter(function () {
            var as = ($(this).find('strong').text().trim());
            var tn = as.replace(/\./g,'').slice(0,-1)
            if(4000000 < eval(tn) && eval(tn) < 7000000){
                var l = true
            }          
            $(this).toggle(l)
        });
    $("#4_7").attr("style","text-decoration:underline")
    });

    // tren 13tr

    $("#15_").click(function(){
    $("#4_7").attr("style","text-decoration:none")
    $("#homeproduct li").attr('style','display:block')
        $("#homeproduct li").filter(function () {
            var s15 = ($(this).find('strong').text().trim());
            var s151 = s15.replace(/\./g,'').slice(0,-1)
            if(eval(s151) > 15000000){
                var p = true
            }          
            $(this).toggle(p)
        });
    $("#15_").attr("style","text-decoration:underline")
    });
});