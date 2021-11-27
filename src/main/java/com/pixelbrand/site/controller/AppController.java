package com.pixelbrand.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

    @GetMapping({"/", "/login"})
    public String index() {
        return "login";
    }

    @GetMapping("/menu")
    public String hello() {
        return "menu2";
    }

    @GetMapping("/user")
    public String user() {
        return "user";
    }

    @GetMapping("/admin")
    public String admin() {
        return "admin";
    }



}
