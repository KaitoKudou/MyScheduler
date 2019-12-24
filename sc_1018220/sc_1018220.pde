import g4p_controls.*;
import java.awt.*;
import java.awt.event.*;
import java.awt.font.*;
import javax.swing.*;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;

GButton gButton1, gButton2, gButton3, gButton4, gButton5, gButton6, gButton7, gButton8;
JRadioButton radio1 = new JRadioButton(); // 一応用意…
PFont myFont;
Font font = new Font( "IPAゴシック", Font.PLAIN, 16 );
PImage img, img2;
int defaultYear = 2018;
int defaultMonth = 7;
int rectRX, rectRY;
int rectLX, rectLY;
int rectSize = 20;
int sum = 0;
boolean leftButtonOver = false;
boolean rightButtonOver = false;
color currentColor = #ADFF2F;
int flg=0; // 画面遷移の情報をもつ変数
String[] data;
int [] price;
int [] qh;
String things[][]={{"公式サイリウム", "推しメンタオル"}, 
  {"ライブTシャツ", "ライブタオル"}, 
  {"生写真", "キーホルダー"}, 
  {"交通費", "宿泊費"}};


void setup() {
  size(480, 640);
  rectLX = width/2-50;
  rectLY = 50;
  rectRX = width/2+50;
  rectRY = 50;

  gButton1 = new GButton( this, 50, 350, 100, 30, "時計");
  gButton2 = new GButton( this, 200, 350, 100, 30, "カレンダー");
  gButton3 = new GButton( this, 350, 350, 100, 30, "全ツ");
  gButton4 = new GButton( this, 350, 600, 100, 30, "タイトルへ");
  gButton5 = new GButton( this, 350, 600, 100, 30, "タイトルへ");
  gButton6 = new GButton( this, 350, 600, 100, 30, "タイトルへ");
  gButton7 = new GButton( this, 250, 600, 100, 30, "会場");
  gButton8 = new GButton( this, 150, 600, 100, 30, "ブログ");

  data = loadStrings("week1_1018220.txt");
}



void draw()
{

  // 画面遷移
  // switch文でもよかった？？
  if (flg==0)
  {
    title();
  } else if (flg==1)
  {
    clock();
  } else if (flg==2)
  {
    calender();
  } else {
    nogi();
  }
}
