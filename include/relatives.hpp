#ifndef RELATIVES_HPP
#define RELATIVES_HPP
#include <vector>
#include <cmath>
#include<ODE.h>

namespace RL
{
    const double Nt0 = 9707.4;    // inlet vapor moleflow, unit kmol/h
    const double Pressure = 3.05; // system pressure, unit MPa
    const double Dr = 4;          // diameter of catalytic bed, unit m
    const double rhob = 1500;     // unit 1500 kg/m3
    const double Cor = 0.88;      // relative correction factor
    const double yCO_init = 0.0810;
    const double yH2O_init = 0.3735;
    const double yCO2_init = 0.0488;
    const double yH2_init = 0.3535;
    const double yN2 = 0.1432;
    const double Tb0 = 644.15;    // 371C
    const double pi = 3.1415926;

    const std::vector<std::vector<double>> CPcoefficient = {{6.8712, 0.03135, 0.0, 0.0, 0.0014138, -6e-07, 0.0001603, 4.184},
                                                            {4.23329, -0.4145, 0.072309, -0.0034116, 0.0057726, 0.0, -0.0007404, 8.314},
                                                            {3.86771, -0.23279, 0.046135, -0.002186, 0.0042112, 0.0, -0.0004694, 8.314},
                                                            {3.18266, 0.53754, -0.020125, 0.0, 0.01852, 0.0, -0.0022009, 8.314},
                                                            {0.65765, -0.049712, 0.0, 0.0005269, 0.020739, 0.0, -0.0027123, 75.5266392}};

    std::vector<double> CalcHeatCapacity(double &yco,double &tempeature);

    double CalcHeatCapacityMix(double &yco,double &tempeature);

    double CalcReactionHeat(double &temperature);

    double CalcEquilibriumConstant(double &temperature);

    double CalcKt(double &temperature);

    double IntrinsicRateEquation(double &MoleFractionCO, double &temperature);

    std::vector<double> CalcMoleFraction(double &yco);
}



#endif