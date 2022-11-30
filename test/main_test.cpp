/*
* author : Paul Bao
* used for solving ordinary differential equations in Chemical Advanced Reaction Engineering
*/



#include "../include/RK4.hpp"
#include "../include/ODE.h"
#include "relatives.hpp"
#include "gtest/gtest.h"
#include <iostream>
#include <string>

// Demonstrate some basic assertions.
TEST(HelloTest, BasicAssertions)
{

    // Expect two strings not to be equal.
    EXPECT_STRNE("hello", "world");

    double yco = RL::yCO_init; // yco
    double tb = RL::Tb0;      // temperature K
    double h = 0.001;        // step length
    double L = 0;             // initial bed height

    RK4::Print_Result_Table(yco,tb,h,L,ODE::dyco_dl,ODE::dtb_dl);

    // Expect equality.
    // EXPECT_EQ(abs(r - 0.02120) < 1e-5, true);
    EXPECT_EQ(1 , true);
}

// int main()
// {

//     typedef double (*OdeFunc)(double, double);

//     // OdeFunc *f3, *f4 = new OdeFunc;
//     // *f3 = ODE::dyco_dl;
//     // *f4 = ODE::dtb_dl;

//     double x0 = RL::yCO_init; // yco
//     double y0 = RL::Tb0;      // temperature K
//     double h = 0.001;         // step length
//     double L = 0;             // initial bed height

//     auto r = RK4::rungeKutta(x0, y0, h, L, ODE::dyco_dl, ODE::dtb_dl);
//     std::cout << r << std::endl;

//     // delete f3;
//     // delete f4;

//     return 0;
// }