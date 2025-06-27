int[] x = new int[50];//X座標を最大50個保存
int[] y = new int[50];//Y座標を最大50個保存
int count = 0;//現在保存されている座標の数
int h = 0;//古いデータの位置

void setup(){
  background(255);
  size(600,400);//ウィンドウサイズを600×400に設定する
}

void draw(){
}

void mousePressed(){
  if(mouseButton == LEFT){ //左クリックされたかを判断
    println(mouseX + "," + mouseY + "がクリックされました");//クリックされた座標を表示
    if(count < 50){ // 保存されている座標の個数が50個以上かを判断
      x[count] = mouseX;//X座標を保存
      y[count] = mouseY;//Y座標を保存
      count++;//個数を加算する
    }else{
      x[h] = mouseX;//古いデータにX座標を保存
      y[h] = mouseY;//古いデータにY座標を保存
      h = (h + 1) % 50;
    }
  }else if(mouseButton == RIGHT){
    background(255);
    println("右クリックされました");//右クリックされたことを表示
    for(int i = 0;i < count; i++){ 
      int b = (h + i) % 50;
      fill(255);//白で塗りつぶす
      ellipse(x[b],y[b],20,20);//円を描写する
    }
  }
}
