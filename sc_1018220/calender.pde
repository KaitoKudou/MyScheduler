void calender() {
  gButton1.setVisible(false);  
  gButton2.setVisible(false);
  gButton3.setVisible(false);
  background(currentColor);
  update();
  drawCalendar(defaultYear, defaultMonth);

  if (rightButtonOver) {
    fill(255);
  } else {
    fill(0);
  }
  rect(rectRX, rectRY, rectSize, rectSize);

  if (leftButtonOver) {
    fill(255);
  } else {
    fill(0);
  }
  rect(rectLX, rectLY, rectSize, rectSize);

  clock_return2();
}


void clock_return2()
{

  gButton4.setFont( font );
  gButton4.fireAllEvents(true);
  gButton4.setVisible(true);
}


void update() {
  if (overLeftButton(rectLX, rectLY, rectSize, rectSize)) {
    leftButtonOver = true;
    rightButtonOver = false;
  } else if (overRightButton(rectRX, rectRY, rectSize, rectSize)) {
    leftButtonOver = false;
    rightButtonOver = true;
  } else {
    leftButtonOver = false;
    rightButtonOver = false;
  }
}

void mousePressed() {
  if (leftButtonOver) {
    background(currentColor);

    if (defaultMonth == 1) {
      defaultMonth = 12;
      defaultYear -= 1;
    } else {
      defaultMonth -= 1;
    }
  }
  if (rightButtonOver) {
    background(currentColor);

    if (defaultMonth == 12) {
      defaultMonth = 1;
      defaultYear += 1;
    } else {
      defaultMonth += 1;
    }
  }
}

boolean overRightButton(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overLeftButton(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void drawCalendar(int year, int month) {
  fill(0);
  text(year, width/2-40, 40);
  text(month, width/2+80, 40);

  int days = daysOfMonth(year, month);

  // draw days of the Month
  for (int day = 1; day <= days; day++) {
    fill(50);

    int x = dayOfWeek(year, month, day);
    int y = weekOfMonth(year, month, day);

    fill(0);
    noFill();
    strokeWeight(5);
    rect(x*60+50, y*70+50, 60, 70);

    color z = setColor(x);
    fill(z);
    textSize(30);
    text(day, x*60+55, y*70+80);
  }
}

color setColor(int day) {
  if (day == 0) {
    return #FF0000;
  } else if (day == 6) {
    return #0008FF;
  } else {
    return #000000;
  }
}

int weekOfMonth(int year, int month, int date) {
  return (date - dayOfWeek(year, month, date) + 12) / 7;
}

int daysSum(int year, int month, int date) {
  // 2000,1,1
  int daysSum = 1;
  for (int y = year-1; y >= 2000; y--) {
    if (isLeapYear(y)) {
      daysSum += 366;
    } else {
      daysSum += 365;
    }
  }

  for (int m = month-1; m >= 1; m--) {
    daysSum += daysOfMonth(year, m);
  }

  daysSum += date;
  return daysSum;
}

int dayOfWeek(int year, int month, int date) {
  int daysSum = daysSum(year, month, date);
  // 0 - Sun / 6 - Sat
  return daysSum % 7;
}

boolean isLeapYear(int year) {
  if (year % 4 == 0 && year % 100 != 0) {
    return true;
  } else {
    return false;
  }
}

// 4,6,9,11 has 30 days.
int daysOfMonth(int year, int month) {
  if (month == 4 || month == 6 || month == 9 || month == 11) {
    return 30;
  } else if (month == 2) {
    if (isLeapYear(year)) {
      return 29;
    } else {
      return 28;
    }
  } else {
    return 31;
  }
}
