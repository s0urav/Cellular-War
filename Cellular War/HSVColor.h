//This file is part of Cellular War(GNU GPL) - https://www.youtube.com/user/Muzkaw.

#pragma once

#include <SFML/Graphics.hpp>
#include <iostream>

struct HSVColor
{
    HSVColor();
    HSVColor(float const& hue, float const& saturation, float const& value);

    sf::Color RGB();

    float h;
    float s;
    float v;
};
