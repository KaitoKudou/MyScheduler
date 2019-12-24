// 乃木坂の画面
void nogi()
{

  background( 255 );
  gButton1.setVisible(false);  
  gButton2.setVisible(false);
  gButton3.setVisible(false);

  tint( 255.0, 150 );
  img2=loadImage("liveView.jpg");
  image(img2, 0, 0, width, height);

  gButton6.setFont( font );
  gButton6.fireAllEvents(true);
  gButton6.setVisible(true);

  gButton7.setFont( font );
  gButton7.fireAllEvents(true);
  gButton7.setVisible(true);

  gButton8.setFont( font );
  gButton8.fireAllEvents(true);
  gButton8.setVisible(true);

  for (int i = 0; i < data.length; i++) 
  {
    price=int(split(data[i], ","));
    qh = new int[price.length-1];
    //if(i==data.length-1) break;
    for (int j = 1; j < price.length; j++) {
      qh[j-1] = price[j];
    }
    showBandGraph(qh);
  }

  noFill();
  stroke(255, 0, 255);
  rect(30, 120, 400, 200, 30);
  textSize(80);
  text("ライブ物販", 50, 100);
  textSize(22);
  fill(255, 0, 0);
  text("※合計金額は"+sum+"円", 100, 300);
  textSize(37);
  fill(0);
  text("9/1 ひとめぼれスタジアム", 10, 400);

  // 物販リストを表示
  for (int i=0; i<things.length; i++)
  {
    for (int j=0; j<2; j++)
    { 
      textSize(22);
      strokeWeight(5);
      text("・"+things[i][j], 180*j+40, 40*i+150);
    }
  }
}


void showBandGraph(int [] d) {
  for (int i = 0; i < d.length; i++) {
    print(i);
    print(":");
    print(d[i]);
    print(",");

    sum=d[0]+d[1]+d[2]+d[3]+d[4]+d[5]+d[6];
    // summate figures at this line
  }
  print("sum:");
  println(sum);
}
