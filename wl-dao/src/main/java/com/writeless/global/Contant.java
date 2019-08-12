package com.writeless.global;

import java.util.ArrayList;
import java.util.List;

public class Contant {

    /**
     * 职业
     */
    public static final String POST_STAFF = "员工";
    public static final String POST_FM = "部门经理";
    public static final String POST_GM = "总经理";
    public static final String POST_CASHIER = "财务";
    public static final String POST_SALE = "销售";
    public static final String POST_PROCUREMENT = "采购";
    public static final String POST_PERSONNEL = "人事";
    public static final String PPOST_OTHER = "其他";

    public static List<String> getPost() {
        List<String> list = new ArrayList<String>();
        list.add(POST_STAFF);
        list.add(POST_FM);
        list.add(POST_GM);
        list.add(POST_CASHIER);
        list.add(POST_SALE);
        list.add(POST_PROCUREMENT);
        list.add(POST_PERSONNEL);
        list.add(PPOST_OTHER);

        return list;
    }

}
