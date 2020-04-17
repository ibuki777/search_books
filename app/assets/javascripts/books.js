$(function(){
  var now = new Date().getSeconds();//現在の秒を取得する
  if(0 <= now && now <= 14){//今が0秒〜14秒の時
   $('.contents__header__images').attr('src','public/images/materials/book001.png');
 }else if(15 <= now && now <= 29){//今が15秒〜29秒の時
   $('.contents__header__images').attr('src','public/images/materials/book002.png');
 }else if(30 <= now && now <= 44){//今が30秒〜44秒の時
   $('.contents__header__images').attr('src','public/images/materials/book003.png');
 }else{//今が45秒〜59秒の時
   $('.contents__header__images').attr('src','public/images/materials/book004.png');
 }
});