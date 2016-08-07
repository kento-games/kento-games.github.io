//var//
    var Bx = 99;
    var Bxd = 3;
    var By = 340;
    var Byd = -3.0;
    var g = 0.05;
    var go = false;
    var enemy = 357;
    var enemye = 290;
    var enemy2 = 357;
    var enemye2 = 290;
    var blue1 = 20;
    var blue2 = 20;
    var win = false;
    var win2 = false;
    var lose = false;

void setup() {
 size(400, 400);
 frameRate(30);
}

var draw() {
    //background//
        background(0, 255, 221);
        
    //cloud//
        stroke(255, 255, 255);
        fill(0, 204, 255);
        rect(34, 37, 155, 55);
        rect(105, 61, 228, 82);
    
    //grass//
        stroke(77, 0, 0);
        fill(77, 0, 0);
        rect(0, 300, 400, 100);

    //ball//
        stroke(125, 52, 52);
        fill(17, 0, 255);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        stroke(138, 73, 73);
        fill(255, 0, 0);
        rect(enemy, enemye, 40, 60);
        rect(enemy2, enemye2, 40, 60);
            
    //blue//
        stroke(34, 0, 255);
        strokeWeight(5);
        line(20, 290, 20, 350);
        stroke(179, 36, 36);
    
    //"if"//
        if(go===true){
            Bx = Bx+Bxd;
            By = By+Byd;
            Byd = Byd+g;
        }
        
        if(enemy2<300){
            enemy2 = enemy2-6;
            if(lose === true){
                enemy2 = enemy2+2;    
            }
        }
        
        if(enemy<blue1){
            lose = true;
        }
        
        if(enemy2<blue1){
            lose = true;
        }
        
        if(By>enemye && By<(enemye+60) && Bx>enemy && Bx<enemy+40 && go===true){
            win = true;
        }
        
        if(By>enemye2 && By<(enemye2+60) && Bx>enemy2 && Bx<enemy2+40 && go===true){
            win2 = true;
        }
        
        if(lose === false){
            enemy = enemy-2;
            enemy2 = enemy2-2;
        }
        
        if(win === true){
            enemy = enemy+2;
            enemye = enemye+3;
        }
        
        if(win2 === true){
            enemy2 = enemy2+8;
            enemye2 = enemye2+3;
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
            enemy2 = enemy2+4;
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