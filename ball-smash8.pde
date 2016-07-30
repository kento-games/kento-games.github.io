//var//
    var Bx = 99;
    var Bxd = 3;
    var By = 340;
    var Byd = -3.0;
    var g = 0.05;
    var go = false;
    var enemy = 357;
    var enemye = 230;
    var s1 = 345;
    var s2 = 345;
    var blue1 = 20;
    var blue2 = 20;
    var win = false;
    var lose = false;
    var hit = false;

void setup() {
 size(400, 400);
 frameRate(30);
}

var draw() {
    //background//
        background(69, 119, 199);
        
    //ice//
        stroke(24, 161, 77);
        fill(24, 184, 115);
        rect(319, 191, 45, 115);
        rect(189, 220, 43, 118);
        rect(259, 251, 38, 137);
        rect(49, 204, 37, 118);
        rect(131, 146, 40, 188);
        rect(-17, 227, 43, 100);
    
    //grass//
        stroke(117, 66, 66);
        fill(117, 66, 66);
        rect(0, 300, 400, 100);

    //ball//
        stroke(0, 0, 0);
        fill(0, 0, 0);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        stroke(242, 255, 0);
        fill(255, 238, 0);
        rect(enemy, enemye, 40, 120);
        //shield//
            stroke(3, 255, 137);
            line(s1, 290, s2, 350);
            
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
        
        if(By>enemye && By<290 && Bx>enemy && Bx<enemy+40 && go===true){
            win = true;
        }
        
        if(By>290 && By<350 && Bx>s1-20){
            hit = true;
        }
        
        if(hit === true){
            Bxd = 0;
            Byd = 0;
            Bx = Bx-2;
            By = By+1;
        }
        
        if(lose === false){
            enemy = enemy-2;
            s1 = s1-2;
            s2 = s2-2;
        }
        
        if(win === true){
            enemy = enemy+2;
            enemye = enemye+2;
            s1 = s1+2;
            s2 = s2+2;
            hit = false;
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
