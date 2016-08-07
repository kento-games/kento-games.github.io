//var//
    var Bx = 99;
    var Bxd = 3;
    var By = 340;
    var Byd = -3.0;
    var g = 0.05;
    var go = false;
    var enemy = 357;
    var enemye = 230;
    var blue1 = 210;
    var win = false;
    var lose = false;
    var lose1 = false;

void setup() {
 size(400, 400);
 frameRate(30);
}

var draw() {
    //background//
        background(99, 58, 58);

    //ice//
        stroke(181, 230, 255);
        fill(0, 162, 255);
        rect(-33, 247, 148, 92);
        rect(131, 220, 149, 118);
        rect(259, 251, 149, 137);
        rect(49, 204, 126, 118);
        rect(131, 234, 153, 118);
        rect(-6, 273, 163, 100);
    
    //grass//
        stroke(0, 255, 255);
        fill(0, 255, 255);
        rect(0, 300, 400, 100);
        
    //wall//
        stroke(110, 94, 94);
        fill(110, 94, 94);
        rect(175, 285, 25, 65);

    //ball//
        stroke(255, 0, 255);
        fill(0, 0, 0);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        stroke(255, 0, 0);
        fill(255, 0, 0);
        rect(enemy, enemye, 40, 120);
            
    //blue//
        stroke(34, 0, 255);
        strokeWeight(5);
        line(210, 350, 210, 290);
        stroke(179, 36, 36);
    
    //"if"//
        if(go===true){
            Bx = Bx+Bxd;
            By = By+Byd;
            Byd = Byd+g;
        }
        
        if(lose === true){
            go = false;
            Bxd = 0;
            Byd = 0;
        }
        
        if(enemy<blue1){
            lose = true;
        }
        
        if(By>230 && By<350 && Bx>enemy && Bx<enemy+40 && go===true){
            win = true;
        }
        
        if(lose === false){
            enemy = enemy-1;
        }
        
        if(Bx>175 && Bx<200 && By>285 && By<355){
            lose1 = true;
            go = false;
        }
        
        if(lose1 === true){
            Bx = 165;
            By = 340;
        }
        
        if(win === true){
            enemy = enemy+1;
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
