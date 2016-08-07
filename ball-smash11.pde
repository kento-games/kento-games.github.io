//var//
    var Bx = 99;
    var Bxd = 3;
    var By = 340;
    var Byd = -3.0;
    var g = 0.05;
    var go = false;
    var enemy = 357;
    var enemye = 210;
    var blue1 = 20;
    var blue2 = 20;
    var win = false;
    var lose = false;

void setup() {
 size(400, 400);
 frameRate(30);
}

var draw() {
    //background//
        background(59, 12, 59);
        
    //building//
        stroke(0, 0, 0);
        fill(66, 64, 66);
        rect(319, 191, 45, 115);
        rect(189, 220, 43, 118);
        rect(259, 251, 38, 137);
        rect(49, 204, 37, 118);
        rect(131, 146, 40, 188);
        rect(-17, 227, 43, 100);
    
    //grass//
        stroke(164, 154, 166);
        fill(164, 154, 166);
        rect(0, 300, 400, 100);

    //ball//
        stroke(14, 204, 0);
        fill(251, 255, 0);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        stroke(255, 0, 0);
        fill(255, 0, 0);
        rect(enemy, enemye, 40, 60);
            
    //blue//
        stroke(34, 0, 255);
        strokeWeight(5);
        line(20, 210, 20, 270);
        stroke(179, 36, 36);
    
    //"if"//
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