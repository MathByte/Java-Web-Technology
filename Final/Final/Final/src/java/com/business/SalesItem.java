package com.business;

import java.io.Serializable;


public class SalesItem implements Serializable {

    private String code;
    private String description;

    public SalesItem() {
        code = "";
        description = "";
    }

    public SalesItem(String code, String description) {
        this.code = code;
        this.description = description;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
