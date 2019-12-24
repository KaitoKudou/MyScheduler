// タイトル画面
void title() 
{
  tint( 255.0, 220 ); // 背景を薄くする
  img=loadImage("title.jpg");
  image(img, 0, 0, width, height);
  myFont = createFont("MS Gothic", 50); // 日本語用のファント作成 
  textFont(myFont);
  fill(#6e00dc);
  text("全ツスケジューラー", 20, 100);

  gButton1.setFont( font );
  gButton2.setFont( font );
  gButton3.setFont( font );

  // PRESSED, RELEASEDのイベントも受け取れるように設定
  gButton1.fireAllEvents(true);
  gButton2.fireAllEvents(true);
  gButton3.fireAllEvents(true);

  // ボタンを表示するかどうか
  gButton1.setVisible(true);  
  gButton2.setVisible(true);
  gButton3.setVisible(true);
  gButton4.setVisible(false);
  gButton5.setVisible(false);
  gButton6.setVisible(false);
  gButton7.setVisible(false);
  gButton8.setVisible(false);
}
