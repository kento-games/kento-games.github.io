//var//
    var Bx = 99;
    var Bxd = 3;
    var By = 340;
    var Byd = -3.0;
    var g = 0.05;
    var go = false;
    var enemy = 357;
    var enemye = 230;
    var blue1 = 20;
    var blue2 = 20;
    var win = false;
    var lose = false;
    var l1 = 20;
    var l2 = 100;
    var l3 = -130;
    var l4 = -30;
    var hit = false;

void setup() {
 size(400, 400);
 frameRate(30);
}

var draw() {
    //background//
        background(0, 0, 0);
        
    //ice//
        stroke(255, 255, 255);
        fill(0, 0, 0);
        rect(319, 191, 45, 115);
        rect(189, 220, 43, 118);
        rect(259, 251, 38, 137);
        rect(49, 204, 37, 118);
        rect(131, 146, 40, 188);
        rect(-17, 227, 43, 100);
    
    //grass//
        stroke(255, 255, 255);
        fill(255, 255, 255);
        rect(0, 300, 400, 100);

    //ball//
        stroke(0, 199, 7);
        fill(0, 255, 77);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        stroke(242, 255, 0);
        fill(255, 238, 0);
        rect(enemy, enemye, 40, 120);
            
    //blue//
        stroke(34, 0, 255);
        strokeWeight(5);
        line(20, 350, 20, 290);
        stroke(179, 36, 36);
        
    //laser//
        stroke(255, 135, 135);
        line(200, l1, 200, l2);
        line(200, l3, 200, l4);
    
    //"if"//
        if(!lose){
            l2 = l2+4;
            l1 = l1+4;
            l3 = l3+4;
            l4 = l4+4;
        }
        
        if(l2>500){
            l2 = 0;
            l1 = -100;
        }
        
        if(l4>500){
            l4 = 0;
            l3 =-100;
        }
        
        if(Bx>200 && Bx < 210 && By>l1 && By<l2){
            hit = true;
            go = false;
        }
        
        if(Bx>200 && Bx < 210 && By>l3 && By<l4){
            hit = true;
            go = false;
        }
        
        if(hit === true){
            go = false;
            Bxd = 0;
            Byd = 0;
        }
        
        if(go===true){
            Bx = Bx+Bxd;
            By = By+Byd;
            Byd = Byd+g;
        }
        
        if(enemy<blue1){
            lose = true;
        }
        
        if(By>enemye && By<(enemye+120) && Bx>enemy && Bx<enemy+40 && go===true){
            win = true;
        }
        
        if(lose === false){
            enemy = enemy-2;
        }
        
        if(win === true){
            enemy = enemy+2;
            enemye = enemye+3;
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
