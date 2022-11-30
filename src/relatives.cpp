#include "../include/relatives.hpp"

std::vector<double>
RL::CalcHeatCapacity(double &yco, double &temperature) // Kelvin for Temperature, MPa for Pressure
{
    double pressure = RL::Pressure;
    auto CPcoefficient_list = RL::CPcoefficient;
    std::vector<double> partialPressure(5, 0);
    std::vector<double> Cpi_list(5, 0);
    auto molefraction_list = RL::CalcMoleFraction(yco);
    for (int i = 0; i < 5; i++) {
        partialPressure[i] = pressure * molefraction_list[i];
    }
    for (int i = 0; i < molefraction_list.size(); i++) {
        Cpi_list[i] = (CPcoefficient_list[i][0] + CPcoefficient_list[i][1] * (temperature / 100.0) +
                  CPcoefficient_list[i][2] * pow(temperature / 100.0, 2) +
                  CPcoefficient_list[i][3] * pow(temperature / 100.0, 3) +
                  CPcoefficient_list[i][4] * partialPressure[i] / 0.101325 +
                  CPcoefficient_list[i][5] * pow(partialPressure[i] / 0.101325, 2) +
                  CPcoefficient_list[i][6] * partialPressure[i] * temperature / (100.0 * 0.101325)) *
                 CPcoefficient_list[i][7];
    }
    return Cpi_list;
}

double RL::CalcHeatCapacityMix(double &yco, double &temperature) // j/(mol*K)
{

    std::vector<double> Cpi(5, 0);
    Cpi = RL::CalcHeatCapacity(yco, temperature);
    auto molefraction_list = RL::CalcMoleFraction(yco);
    double cpmix = 0;
    for (auto i = 0; i < 5; i++) {
        cpmix += molefraction_list[i] * Cpi[i];
    }
    return cpmix;
}

double RL::CalcReactionHeat(double &temperature) // j/mol
{
    double ReactionHeat =
            (1e4 + 0.219 * temperature - 2.845e-03 * pow(temperature, 2) + 0.9703e-6 * pow(temperature, 3)) * -4.184;

    return ReactionHeat;
}

double RL::CalcEquilibriumConstant(double &temperature) // Kp
{
    double EqConstant = exp(2.3026 * (2185 / temperature - 0.1102 * log(temperature) / 2.3026 +
                                      0.6218e-3 * temperature - 1.0604e-7 * pow(temperature, 2) -
                            2.218));

    return EqConstant;
}

double RL::CalcKt(double &temperature) // Kt
{
    double Kt = 1.2e6 * pow(0.101325, -0.5) * exp(-104600 / (8.314 * temperature)); // kmol/(kg * h * MPa0.5)

    return Kt;
}

double RL::IntrinsicRateEquation(double &yCO, double &temperature) {
    double pressure = RL::Pressure;
    double Kt = RL::CalcKt(temperature);
    double Kp = RL::CalcEquilibriumConstant(temperature);
    std::vector<double> molefracttion_list = RL::CalcMoleFraction(yCO);

    double Rate_Carbon_monoxide = Kt * pressure * molefracttion_list[2] * pow(pressure * molefracttion_list[3], -0.5) *
                                  (1 - pressure * molefracttion_list[3] * pressure * molefracttion_list[0] /
                                       (pow(pressure, 2) * molefracttion_list[2] * molefracttion_list[4] * Kp));

    return Rate_Carbon_monoxide;
}

std::vector<double> RL::CalcMoleFraction(double &yco)
{
    std::vector<double> molefraction_list(5, 0);
    double delta_y = RL::yCO_init - yco;

    molefraction_list[0] = RL::yH2_init + delta_y; // H2
    molefraction_list[1] = RL::yN2;                // N2
    molefraction_list[2] = RL::yCO_init - delta_y; // CO
    molefraction_list[3] = RL::yCO2_init + delta_y;// CO2
    molefraction_list[4] = RL::yH2O_init - delta_y;// H2O

    return molefraction_list;
}