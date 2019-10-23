package com.writeless.global;

import java.util.ArrayList;
import java.util.List;

public class Contant {

    /**
     * 职业
     */
    public static final String POST_STAFF = "学生";
    public static final String POST_FM = "工人";
    public static final String POST_GM = "教师";
    public static final String POST_CASHIER = "厨师";
    public static final String POST_SALE = "医生";
    public static final String POST_PROCUREMENT = "程序员";
    public static final String POST_PERSONNEL = "商人";
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

    /**
     * 权限
     */
    public static final Integer SUPER_ADMIN = 0;
    public static final Integer ADMIN = 1;
    public static final Integer USER = 2;

    public static List<Integer> getPermission() {
        List<Integer> list = new ArrayList<Integer>();
        list.add(SUPER_ADMIN);
        list.add(ADMIN);
        list.add(USER);

        return list;
    }


}
