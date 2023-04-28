function openPage(evt, pageName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("page");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" tabmenu-color", "");
  }
  document.getElementById(pageName).style.display = "block";
  evt.currentTarget.className += " tabmenu-color";
}

function dropDown1() {
    if($("#dd1").css("display") == "none"){
        $("#dd1").show();
    } else {
        $("#dd1").hide();
    }
}

function dropDown2() {
    if($("#dd2").css("display") == "none"){
        $("#dd2").show();
    } else {
        $("#dd2").hide();
    }
}

function dropDown3() {
    if($("#dd3").css("display") == "none"){
        $("#dd3").show();
    } else {
        $("#dd3").hide();
    }
}


