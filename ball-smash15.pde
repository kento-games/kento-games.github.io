//var//
    var Bx = 99;
    var Bxd = 3;
    var By = 340;
    var Byd = -3.0;
    var g = 0.07;
    var go = false;
    var enemy = 357;
    var enemye = 290;
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
        background(176, 255, 176);
        
    //line//
        stroke(255, 140, 140);
        line(20, 90, 140, 20);
        line(111, 159, 251, 233);
        line(231, 90, 303, 20);
        line(189, 90, 303, 216);
        line(43, 214, 74, 83);
        //diff.//
        stroke(176, 208, 255);
        line(40, 140, 160, 20);
        line(131, 159, 270, 283);
        line(251, 90, 323, 20);
        line(209, 13, 323, 216);
        line(22, 280, 94, 128);
    
    //grass//
        stroke(255, 255, 255);
        fill(255, 181, 181);
        rect(0, 300, 400, 100);

    //ball//
        stroke(175, 255, 168);
        fill(255, 238, 0);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        stroke(173, 222, 255);
        fill(179, 176, 255);
        rect(enemy, enemye, 40, 60);
            
    //blue//
        stroke(34, 0, 255);
        strokeWeight(5);
        line(20, 290, 20, 350);
        stroke(179, 36, 36);
            
    //line//
        stroke(255, 135, 255);
        line(-2, 310, 399, 310);
    
    //"if"//
        if(By<320){
            Byd = 0;
            Bxd = 0;
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
            textFont(79, 73);
            fill(255, 0, 0);
            text("Well done!", 18, 161);
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
