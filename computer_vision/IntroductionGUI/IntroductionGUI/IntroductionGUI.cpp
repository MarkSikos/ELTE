#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>

#include <iostream>

#define WIDTH 800
#define HEIGHT 600
cv::Mat image;
int xCoord, yCoord;

void redraw() {
    cv::rectangle(image, cv::Point(0, 0), cv::Point(WIDTH, HEIGHT), cv::Scalar(0, 0, 0), cv::FILLED);
    cv::rectangle(image, cv::Point(xCoord, yCoord), cv::Point(xCoord + 100, yCoord + 100), cv::Scalar(255, 0, 0), cv::FILLED);
    cv::imshow("Display window", image);
}

void MouseCallBackFunc(int event, int x, int y, int flags, void* userdata)
{
    if (event == cv::EVENT_LBUTTONDOWN)
    {
        xCoord = x;
        yCoord = y;
        redraw();
    }
}

int main()
{
    // We create an image, (we dont have it yet)
    image = cv::Mat::zeros(HEIGHT, WIDTH, CV_8UC3); // Ez egy fixált sorrend !!! A harmadik érték az megmondja hogy milyen elemet rajzoljunk ki
    // Opencv documentation... a CV_8UC3 egy FLAG -> C3 -> Matrix of 3 element vectors (3 channel van -> RGB)
    // opencv-ben bgr--- nem rgb...
    xCoord = 100;
    yCoord = 100;
    redraw();

    cv::namedWindow("Én vagyok az ABLAK", cv::WINDOW_AUTOSIZE);

   
    cv::rectangle(image,
        cv::Point(0, 0), cv::Point(WIDTH, HEIGHT),
        cv::Scalar(0, 0, 255), cv::FILLED);
    cv::cvtColor(image, image, cv::WINDOW_AUTOSIZE);

    cv::imshow("Display window", image);
    cv::setMouseCallback("Display window", MouseCallBackFunc, NULL);



    int key = cv::waitKey(0);
    int speed = 10;
    while (true) {
        key = cv::waitKey(100);

        if (key == 27) break;

        switch (key) {
        case 'a':
            xCoord -= speed;
            break;
        case 'd':
            xCoord += speed;
            break;
        case 'w':
            yCoord -= speed;
            break;
        case 's':
            yCoord += speed;
            break;
        }
        redraw();
    }

    return 0;
}


