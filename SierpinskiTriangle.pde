 public void setup() {
        size(800, 800);
        background(255);
        int baseSize = 400; 
        sierpinski(width/2 - baseSize/2, height - 50, baseSize);
    }

    public void draw() {
       
    }

    public void sierpinski(int x, int y, int len) {
        if (len <= 20) { 
            triangle(x, y, x + len, y, x + len/2, y - len);
        } else {
           
            sierpinski(x, y, len/2); 
            sierpinski(x + len/2, y, len/2);
            sierpinski(x + len/4, y - len/2, len/2); 
        }
    }
