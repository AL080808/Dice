void setup() {
    size(400, 400); // Adjust the canvas size
    noLoop(); // Prevent automatic redraw
}

void draw() {
    background(255); // White background
    int total = 0;
    
    // Create a 3x3 grid of dice (9 dice)
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            Die die = new Die(i * 100 + 50, j * 100 + 50); // Position dice
            die.show();
            total += die.value; // Sum up the values of all dice
        }
    }
    
    fill(0); // Set text color to black
    textSize(20);
    text("Total: " + total, 150, 380); // Display the total sum of dice rolls
}

void mousePressed() {
    redraw(); // Re-roll the dice when mouse is clicked
}

class Die {
    int x, y, value; // Member variables for position and value of the die

    // Constructor to initialize die position and roll it
    Die(int x, int y) {
        this.x = x;
        this.y = y;
        roll(); // Roll the die
    }

    // Method to roll the die (random value between 1 and 6)
    void roll() {
        value = (int)(Math.random() * 6) + 1; // Roll the die
    }

    // Method to display the die on the screen
    void show() {
        fill(255); // Set die background to white
        rect(x, y, 80, 80); // Draw the die as a square
        
        fill(0); // Set color for the dots
        drawDots(); // Draw the dots corresponding to the value
    }

    // Method to draw dots on the die based on its value
    void drawDots() {
        if (value == 1) {
            ellipse(x + 40, y + 40, 10, 10); // Center dot
        } else if (value == 2) {
            ellipse(x + 20, y + 20, 10, 10); // Top-left
            ellipse(x + 60, y + 60, 10, 10); // Bottom-right
        } else if (value == 3) {
            ellipse(x + 20, y + 20, 10, 10); // Top-left
            ellipse(x + 40, y + 40, 10, 10); // Center
            ellipse(x + 60, y + 60, 10, 10); // Bottom-right
        } else if (value == 4) {
            ellipse(x + 20, y + 20, 10, 10); // Top-left
            ellipse(x + 60, y + 20, 10, 10); // Top-right
            ellipse(x + 20, y + 60, 10, 10); // Bottom-left
            ellipse(x + 60, y + 60, 10, 10); // Bottom-right
        } else if (value == 5) {
            ellipse(x + 20, y + 20, 10, 10); // Top-left
            ellipse(x + 60, y + 20, 10, 10); // Top-right
            ellipse(x + 40, y + 40, 10, 10); // Center
            ellipse(x + 20, y + 60, 10, 10); // Bottom-left
            ellipse(x + 60, y + 60, 10, 10); // Bottom-right
        } else if (value == 6) {
            ellipse(x + 20, y + 20, 10, 10); // Top-left
            ellipse(x + 60, y + 20, 10, 10); // Top-right
            ellipse(x + 20, y + 40, 10, 10); // Middle-left
            ellipse(x + 60, y + 40, 10, 10); // Middle-right
            ellipse(x + 20, y + 60, 10, 10); // Bottom-left
            ellipse(x + 60, y + 60, 10, 10); // Bottom-right
        }
    }
}
