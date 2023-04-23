
package com.abc;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Pratiksha Raval
 */
public class PayTest {

    public PayTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of setEmployeename method, of class Pay.
     */
    @Test
    public void testSetEmployeename() {
        System.out.println("setEmployeename");
        Pay instance = new Pay();
        String name = "Test";
        instance.setEmployeename(name);
        String expResaults = "Test";
        String resault = instance.getEmployeename();
        assertEquals(expResaults, resault, "Test");

       
    }

    @Test
    public void testCalcGrosspay() {
        System.out.println("calcGrosspay");
        Pay instance = new Pay();
        instance.setHours(30);
        double expResaults = 300;
        double resaults = instance.calcGrosspay();
       
        assertEquals(expResaults, resaults, 0.0);
       
    }

}
