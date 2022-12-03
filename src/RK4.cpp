#include "../include/RK4.hpp"
#include "relatives.hpp"
#include <iostream>
#include "cmath"
#include <vector>
#include <fstream>

double RK4::rungeKutta(double x0, double y0, double h, double l,
                       double (*func1)(double, double), double (*func2)(double, double))
{
        // Count number of iterations using step size or
        // step height h

        double k11, k12, k13, k14, k21, k22, k23, k24;

        // Iterate for number of iterations
        double y = y0;
        double x = x0;
        while (x - 0.0212 > 1e-6)
        {
                // Apply Runge Kutta Formulas to find
                // next value of y
                k11 = func1(x, y);
                k21 = func2(x, y);

                k12 = func1(x + k11 * h / 2, y + k21 * h / 2);
                k22 = func2(x + k11 * h / 2, y + k21 * h / 2);

                k13 = func1(x + k12 * h / 2, y + k22 * h / 2);
                k23 = func2(x + k12 * h / 2, y + k22 * h / 2);

                k14 = func1(x + k13 * h, y + k23 * h);
                k24 = func2(x + k13 * h, y + k23 * h);

                // Update next value of y
                x += (h / 6.0) * (k11 + 2 * k12 + 2 * k13 + k14);
                y += (h / 6.0) * (k21 + 2 * k22 + 2 * k23 + k24);
                // Update next value of x
                l += h;
        }
        return x;
}

void RK4::Print_Result_Table(double x0, double y0, double h, double l,
                             double (*func1)(double, double),
                             double (*func2)(double, double))
{
        using namespace std;

        ofstream ofs;
        ofs.open("./results.csv", ios::out);
        ofs << ",0,1,2,3,4" << endl;

        vector<string> col_name = {"L(m)", "Tb(tb/C)", "yco", "-ΔHR(j/mol)", "CpMix(J/mol*K)"};

        cout << "----------------------------------------------------------------------------------------------------" << endl;
        for (auto value : col_name)
        {
                // cout.setf(ios::left, ios::adjustfield);
                cout << "      " << value << "      ";
        }
        cout << endl;
        cout << "----------------------------------------------------------------------------------------------------" << endl;

        // Count number of iterations using step size or
        // step height h

        double k11, k12, k13, k14, k21, k22, k23, k24;
        // Iterate for number of iterations
        double y = y0; // temperature
        double x = x0; // yco
        while (x - 0.0212 > 1e-6)
        {
                // Apply Runge Kutta Formulas to find
                // next value of y
                k11 = func1(x, y);
                k21 = func2(x, y);

                k12 = func1(x + k11 * h / 2, y + k21 * h / 2);
                k22 = func2(x + k11 * h / 2, y + k21 * h / 2);

                k13 = func1(x + k12 * h / 2, y + k22 * h / 2);
                k23 = func2(x + k12 * h / 2, y + k22 * h / 2);

                k14 = func1(x + k13 * h, y + k23 * h);
                k24 = func2(x + k13 * h, y + k23 * h);

                // print to console
                // cout.precision(3);
                // cout.setf(ios::showpoint | ios::fixed);
                // cout << "      " << l;
                // cout << "      " << y;
                // cout << "      " << x;
                // cout << "      " << RL::CalcReactionHeat(y);
                // cout << "      " << RL::CalcHeatCapacityMix(x, y) << endl;

                // print to results.csv
                ofs.precision(4);
                ofs.setf(ios::showpoint | ios::fixed);
                ofs << l;
                ofs << "," << y;
                ofs << "," << x;
                ofs << "," << RL::CalcReactionHeat(y);
                ofs << "," << RL::CalcHeatCapacityMix(x, y) << endl;

                // Update next value of y
                x += (h / 6.0) * (k11 + 2 * k12 + 2 * k13 + k14);
                y += (h / 6.0) * (k21 + 2 * k22 + 2 * k23 + k24);

                // std::cout << "yco : " << x <<endl;

                // Update next value of l
                l += h;
        }

        cout << "----------------------------------------------------------------------------------------------------" << endl;
        cout << "succussful!!!" << endl;
        ofs.close();
}
