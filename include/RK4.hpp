#ifndef RK4_HPP
#define RK4_HPP

namespace RK4
{
    //    double rungeKutta(double x0, double y0, double x, double h,double (*func)(double,double));
    double rungeKutta(double x0, double y0, double h, double l,
                      double (*func1)(double, double ),
                      double (*func2)(double, double));

    void Print_Result_Table(double yco, double tb, double h, double l,
                      double (*func1)(double, double ),
                      double (*func2)(double, double));

}

#endif