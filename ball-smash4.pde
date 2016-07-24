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
    var fl = 357;
    var fl2 = 357;
    var fl3 = 357;
    var fl4 = 357;
    var fll = 350;

void setup() {
 size(400, 400);
 frameRate(30);
}

var draw() {
    //background//
        background(168, 61, 61);

    //grass//
        stroke(0, 0, 0);
        fill(0, 0, 0);
        rect(0, 300, 400, 100);
        
            
    //red line//
        stroke(255, 255, 0);
        line(fl, fll, 410, 350);
        line(fl2, 290, 410, 290);
        line(fl3, 309, 410, 309);
        line(fl4, 330, 410, 330);
        
    

    //ball//
        stroke(255, 255, 255);
        fill(255, 255, 255);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        stroke(4, 255, 0);
        fill(4, 255, 0);
        rect(enemy, enemye, 40, 60);
            
    //blue//
        stroke(34, 0, 255);
        strokeWeight(5);
        line(20, 350, 20, 290);
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
        
        if(By>290 && By<350 && Bx>enemy && Bx<enemy+40 && go===true){
            win = true;
        }
        
        if(lose === false){
            enemy = enemy-5;
            fl = fl-5;
            fl2 = fl2-5;
            fl3 = fl3-5;
            fl4 = fl4-5;
        }
        
        if(win === true){
            enemy = enemy+5;
            enemye = enemye+2;
            fl = fl+6;
            fl2 = fl2+6;
            fl3 = fl3+6;
            fl4 = fl4+6;
        }
    
        if(By>340){
            By = 340;
            Byd = Byd*(-1);
            Byd = Byd*0.5;
            Bxd = Bxd*0.5;
        }
        
        if(lose === true){
            go = false;
            Bxd = 0;
            Byd = 0;
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