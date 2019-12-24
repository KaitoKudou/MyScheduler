// Gbuttonからのeventを受け取る
void handleButtonEvents(GButton btn, GEvent event) {
  switch(event) {
  case CLICKED:
    println("CLICKED!!");
    if (btn == gButton1)
    {
      flg=1;
      println("1");
    } else if (btn == gButton2)
    {
      flg=2;
      println("2");
    } else if (btn == gButton3)
    {
      flg=3;
      println("3");
    } else if (btn == gButton4)
    {
      flg=0;
      println("4");
    } else if (btn == gButton5)
    {
      flg=0;
      println("5");
    } else if (btn == gButton6)
    {
      flg=0;
      println("6");
    } else if (btn == gButton7)
    {
      //link("http://www.nogizaka46.com/smph/news/2018/07/46-2018-771202.php"); 
      link("http://www.gip-web.co.jp/information/detail/236");
      println("7");
    } else {
      link("http://blog.nogizaka46.com/miona.hori/");
      println("8");
    }


    break;
  case PRESSED:
    println("PRESSED!!");
    break;
  case RELEASED:
    println("RELEASED!");
    if (btn == gButton1)
      println("1");
    else if (btn == gButton2)
      println("2");
    else if (btn == gButton3)
      println("3");
    else if (btn == gButton4)
      println("4");
    else if (btn == gButton5) 
      println("5");
    else 
    println("6");
    break;
  default:
    break;
  }
}
