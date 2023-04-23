
package com.abc;

public class Pay {

    private String employeename;
    private double hours;
    final static double PAY_RATE = 10.0;
    final static double OVERTIME_RATE = 15.0;

    public Pay() {
    }

    public String getEmployeename() {
        if (employeename == null) {
            employeename = new String();
        }

        return employeename;
    }

    public void setEmployeename(String employeename) {
        this.employeename = employeename;
    }

    public double getHours() {
        return hours;
    }

    public void setHours(double hours) {
        this.hours = hours;
    }

    public double calcGrosspay() {
        if (hours <= 40) {
            return hours * PAY_RATE;
        } else {
            return 40 * PAY_RATE + (hours - 40) * OVERTIME_RATE;
        }
    }

    public double calcOvertimepay() {
        if ((calcGrosspay() - 40 * PAY_RATE) > 0) {
            return calcGrosspay() - 40 * PAY_RATE;
        } else {
            return 0;
        }
    }

}
