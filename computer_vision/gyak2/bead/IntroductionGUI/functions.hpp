#ifndef FUNCTIONS_HPP
#define FUNCTIONS_HPP

#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <cmath>
#include <iostream>
#include <cstdlib>
#include <ctime>

#define WIDTH 800
#define HEIGHT 600
# define ORIG_DIRECTION 90
#define PI 3.1415926545
#define BORDER_WIDTH 5


extern int speed;
extern int speedRect;
extern cv::Mat image;
extern int xCoord, yCoord;
extern int rectXCoord;
extern int rectYCoord ;
extern float direction;
extern float deltaX;
extern float deltaY;
extern bool ballVisible;
extern bool endOfGame;


void drawGameOver();
void redraw();
void checkBallRectangleCollision();
void circleMotion();


#endif


void drawGameOver() {
    // Játék vége felirat kiirása
    std::string text = "Vege a jateknak!";
    int fontFace = cv::FONT_HERSHEY_SIMPLEX;
    double fontScale = 2;
    int thickness = 3;
    cv::Size textSize = cv::getTextSize(text, fontFace, fontScale, thickness, 0);
    cv::Point textOrg((WIDTH - textSize.width) / 2, (HEIGHT - textSize.height) / 2);
    cv::putText(image, text, textOrg, fontFace, fontScale, cv::Scalar(255, 255, 255), thickness);
    cv::imshow("Display window", image);
    endOfGame = true;


}
void redraw() {
    // Ujrarajzolásért felelõs függvény
    cv::rectangle(image, cv::Point(0, 0), cv::Point(WIDTH, HEIGHT), cv::Scalar(0, 0, 0), cv::FILLED);
    cv::rectangle(image, cv::Point(rectXCoord, rectYCoord), cv::Point(rectXCoord + 100, rectYCoord + 10),
        cv::Scalar(255, 255, 255), cv::FILLED);


    cv::rectangle(image, cv::Point(0, 0), cv::Point(BORDER_WIDTH, HEIGHT), cv::Scalar(0, 255, 0), cv::FILLED);   
    cv::rectangle(image, cv::Point(0, 0), cv::Point(WIDTH, BORDER_WIDTH), cv::Scalar(0, 255, 0), cv::FILLED);    
    cv::rectangle(image, cv::Point(WIDTH - BORDER_WIDTH, 0), cv::Point(WIDTH, HEIGHT), cv::Scalar(0, 255, 0), cv::FILLED); 
    cv::imshow("Display window", image);

    if (ballVisible) {
        cv::circle(image, cv::Point(xCoord, yCoord), 50, cv::Scalar(255, 0, 0), cv::FILLED);
    }
    else
    {
        drawGameOver();
    }

    cv::imshow("Display window", image);
}

void checkBallRectangleCollision() {
    // Leellenorizni hogy a labda utkozik e a négysyöggel
    if (yCoord + 50 >= rectYCoord && yCoord - 50 <= rectYCoord + 10 && xCoord + 50 >= rectXCoord && xCoord - 50 <= rectXCoord + 100) {  
        deltaY = -deltaY; 
        yCoord = rectYCoord - 50; 
    }
}

void circleMotion() {
    // A kör mozgását leíró függvény
    if (!ballVisible) return;

    xCoord += deltaX;
    yCoord += deltaY;

    if (xCoord - 50 <= BORDER_WIDTH) {
        deltaX = -deltaX; 
        xCoord = BORDER_WIDTH + 50; 
    }
    else if (xCoord + 50 >= WIDTH - BORDER_WIDTH) {
        deltaX = -deltaX;
        xCoord = WIDTH - BORDER_WIDTH - 50; 
    }

    if (yCoord - 50 <= BORDER_WIDTH) {
        deltaY = -deltaY; 
        yCoord = BORDER_WIDTH + 50;
    }

    if (yCoord - 50 > HEIGHT) { 
        ballVisible = false;     
    }

    checkBallRectangleCollision();
}
