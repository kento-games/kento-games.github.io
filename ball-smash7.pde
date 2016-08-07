//var//
    var Bx = 99;
    var Bxd = 3;
    var By = 340;
    var Byd = -3.0;
    var g = 0.05;
    var go = false;
    var enemy = 317;
    var enemye = 290;
    var blue1 = 100;
    var blue2 = 160;
    var win = false;
    var lose = false;

void setup() {
 size(400, 400);
 frameRate(30);
}

var draw() {
    //background//
        background(153, 149, 136);
        
    //rectangles
        stroke(194, 191, 222);
        fill(123, 112, 204);
        rect(20, 20, 122, 217);
        rect(20, 260, 122, 217);
        rect(170, 20, 112, 142);
        rect(170, 190, 112, 142);
        rect(310, 20, 122, 194);
        rect(310, 240, 122, 194);
    
    //grass//
        stroke(200, 0, 255);
        fill(200, 0, 255);
        rect(0, 300, 400, 100);
        
    //ball//
        stroke(0, 204, 255);
        fill(0, 255, 17);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        rect(enemy, enemye, 40, 60);
            
    //blue//
        stroke(34, 0, 255);
        strokeWeight(5);
        line(40, blue2, 40, blue1);
        stroke(179, 36, 36);
    
    //"if"//
        if(go===true){
            Bx = Bx+Bxd;
            By = By+Byd;
            Byd = Byd+g;
        }
        
        if(enemye>10 && enemy<40){
            lose = true;
        }
        
        if(By>enemye && By<enemye+60 && Bx>enemy && Bx<enemy+40 && go===true){
            win = true;
        }
        
        if(lose === false){
            enemye = enemye-1;
            enemy = enemy-1.5;
        }
        
        if(win === true){
            enemy = enemy+1.5;
            enemye = enemye+2;
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
            enemye = blue1;
            enemy = 40;
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