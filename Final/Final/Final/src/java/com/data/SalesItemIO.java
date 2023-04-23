package com.data;

import com.business.SalesItem;
import java.util.ArrayList;

public class SalesItemIO {
        private static ArrayList<SalesItem> books = null;
    
    public static ArrayList<SalesItem> getSalesItems()
    {
        ArrayList<SalesItem> items = new ArrayList<SalesItem>();;
        items.add(new SalesItem("BBPPT", "BlackBerry Passport"));
        items.add(new SalesItem("NEX06", "Nexus 6"));
        items.add(new SalesItem("IPH6", "iPhone 6"));
        return items;
    }

}
