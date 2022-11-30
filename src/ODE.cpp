#include "../include/ODE.h"
#include "../include/relatives.hpp"

double ODE::dyco_dl(double yco, double tb) // dyCO / dl
{
    auto pi = RL::pi;
    auto Dr = RL::Dr;
    auto rho = RL::rhob;
    auto Nt0 = RL::Nt0;
    auto COR = RL::Cor;
    double K = pi * pow(Dr, 2) * rho * COR / (4 * Nt0);
    return -K * RL::IntrinsicRateEquation(yco, tb);
}

double ODE::dtb_dl(double yco, double tb) // dTb / dl
{
    double HR = RL::CalcReactionHeat(tb);
    double CpMix = RL::CalcHeatCapacityMix(yco, tb);

    return HR / CpMix * dyco_dl(yco, tb);
}
