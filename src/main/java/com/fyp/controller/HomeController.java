package com.fyp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Dasun K on 9/26/2018.
 */

@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView("home");

        mav.addObject("a","abc");
        return mav;
    }
}
