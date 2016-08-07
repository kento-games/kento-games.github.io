//var//
    var Bx = 99;
    var Bxd = 3;
    var By = 340;
    var Byd = -3.0;
    var g = 0.05;
    var go = false;
    var enemy = 357;
    var enemye = 290;
    var blue1 = 20;
    var blue2 = 20;
    var win = false;
    var lose = false;
    var p1 = 20;

void setup() {
 size(400, 400);
 frameRate(30);
}

var draw() {
    //background//
        strokeWeight(5);
        background(73, 85, 252);
        
    //transparent//
        stroke(30, 0, 255);
        noFill();
        rect(20, 20, 122, 82);
        rect(102, 66, 160, 106);
        rect(195, 118, 115, 129);
        rect(187, 20, 158, 82);
        rect(117, 130, 122, 82);
        rect(8, 80, 152, 82);
        rect(20, 188, 122, 82);
        rect(289, 151, 122, 82);
        rect(257, 200, 122, 82);
        rect(275, 87, 117, 82);
        rect(99, 200, 122, 82);
    
    //grass//
        stroke(108, 191, 250);
        fill(115, 115, 255);
        rect(0, 300, 400, 100);

    //ball//
        stroke(89, 144, 255);
        fill(0, 230, 255);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        stroke(0, 225, 255);
        fill(142, 63, 245);
        rect(enemy, enemye, 40, 60);
            
    //blue//
        stroke(34, 0, 255);
        strokeWeight(5);
        line(20, 290, 20, 350);
        stroke(179, 36, 36);
        
    //dot//
        stroke(0, 0, 0);
        strokeWeight(35);
        point(185, 325);
        stroke(255, 0, 0);
        strokeWeight(5);
    
    //"if"//
        if(Bx>160 && Bx<210 && By>300 && By<360){
            Bxd = 0;
            Byd = 0;
            go = false;
        }
        
        if(go===true){
            Bx = Bx+Bxd;
            By = By+Byd;
            Byd = Byd+g;
        }
        
        if(enemy<blue1){
            lose = true;
        }
        
        if(By>enemye && By<(enemye+60) && Bx>enemy && Bx<enemy+40 && go===true){
            win = true;
        }
        
        if(lose === false){
            enemy = enemy-2;
        }
        
        if(win === true){
            enemy = enemy+2;
            enemye = enemye+3;
        }
    
        if(By>340){
            By = 340;
            Byd = Byd*(-1);
            Byd = Byd*0.5;
            Bxd = Bxd*0.5;
        }
        
        if(lose === true){
            go = false;
            Bxd = false;
            Byd = false;
        }
        
         if(mousePressed && !go){
            line(99, 340, mouseX, mouseY);
        }
        
};
//"mosuse..."//
    void mouseReleased() {
        if(!go && !lose){
        go = true;
        Bxd = (Bx-mouseX)/4;
        Byd = (mouseY-By)/8;
        }
    };
    
//"if"//