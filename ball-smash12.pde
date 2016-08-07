//var//
    var Bx = 99;
    var Bxd = 3;
    var By = 340;
    var Byd = -3.0;
    var g = 0.05;
    var go = false;
    var enemy = 357;
    var enemye = 185;
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
        background(255, 107, 107);
        
    //fire//
        stroke(238, 255, 0);
        fill(255, 0, 0);
        rect(-33, 247, 148, 92);
        rect(131, 220, 149, 118);
        rect(259, 251, 149, 137);
        rect(49, 204, 126, 118);
        rect(131, 234, 153, 118);
        rect(-6, 273, 163, 100);
    
    //grass//
        stroke(166, 108, 108);
        fill(166, 108, 108);
        rect(0, 300, 400, 100);

    //ball//
        stroke(0, 0, 0);
        fill(125, 140, 255);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        stroke(0, 255, 21);
        fill(0, 174, 255);
        rect(enemy, enemye, 40, 60);
            
    //blue//
        stroke(34, 0, 255);
        strokeWeight(5);
        line(20, 290, 20, 350);
        stroke(179, 36, 36);
    
    //"if"//
        if(enemy<300){
            enemye = enemye+3;
            enemy = enemy-2;
        }
        
        if(enemy<165){
            enemye = enemye-3;
            enemy = enemy+2;
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