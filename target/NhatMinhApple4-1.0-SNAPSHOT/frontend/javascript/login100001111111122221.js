function checkPass(ele){
    var pass = document.getElementById("user-pass").value;
    var repass = ele.value;
    if(pass!==repass){
        document.getElementById("checkRePass").style.display="";
        e= document.getElementById(ele.id);
        e.value ="";
    }else {
        document.getElementById("checkRePass").style.display="none";

    }
}

function checkAccount(ele){
    var accName = ele.value.toUpperCase();
    var allAcc= document.getElementById("allAccName").value.toUpperCase();
    let isExist = false;
    let arr = allAcc.split("-");
    for (i=0;i<arr.length;i++){
        if (accName===arr[i]){
            isExist = true;
        }
    }
    if (isExist){
        document.getElementById("checkExits").style.display="";
        ele.value = "";

    }else {
        document.getElementById("checkExits").style.display="none";
    }
}
