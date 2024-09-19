#include "functions.hpp"

int speed = 10;
int speedRect = 10;
cv::Mat image;
int xCoord, yCoord;
int rectXCoord = WIDTH - 100, rectYCoord = HEIGHT - 10;
float direction = ORIG_DIRECTION;
float deltaX, deltaY;
bool ballVisible = true;
bool endOfGame = false;




int main()
{
    srand(time(0));
    image = cv::Mat::zeros(HEIGHT, WIDTH, CV_8UC3); 
    xCoord = 100;
    yCoord = 100;
    direction = rand() % 360;
    float angleRad = direction * PI / 180;
    deltaX = speed * cos(angleRad);
    deltaY = speed * sin(angleRad);
    redraw();


    while (true) {

        circleMotion();

        int key = cv::waitKey(30);
        switch (key) {
            case 'a':
                rectXCoord -= speedRect;
                if (rectXCoord < BORDER_WIDTH) rectXCoord = BORDER_WIDTH;
                break;
            case 'd':
                rectXCoord += speedRect;
                if (rectXCoord + 100 > WIDTH - BORDER_WIDTH) rectXCoord = WIDTH - BORDER_WIDTH - 100;
                break;
            case 27:
                return 1;
            }
        redraw();

        if (endOfGame) {
            cv::waitKey(2000);
            return 0;

        }
    } 
    return 0;
}


