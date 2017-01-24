$(document).ready(function(){


  if ($('body.pages.home').length === 0){
    return;
  }

  $("h1").css('color', 'red');
  $('h1.fun').funText();

  console.log("welcom");
});


$(document).ready(function(){
  if ($('body.session.new').length === 0){
    return;
  }
  console.log("HHeyy easy");
}
