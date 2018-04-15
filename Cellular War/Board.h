//This file is part of Cellular War(GNU GPL) - https://www.youtube.com/user/Muzkaw.

#pragma once

#include <SFML/Graphics.hpp>
#include <stdlib.h>
#include <time.h>
#include <random>
#include "Matrix.h"
#include "HSVColor.h"

class Board
{
public:
    Board();

    void update();

    void draw(sf::RenderWindow &window);

private:
    int width, height;
    Matrix m,mbuf;

    sf::Image image;
    sf::Texture texture;
    sf::Sprite sprite;
};

