package com.diligenta.poc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.diligenta.poc.dto.Data;

@Controller
public class MainController {

    @RequestMapping(value = "/setdata", method = RequestMethod.POST)
    @ResponseBody
    public int setdata(@RequestBody Data d,HttpSession session) {
        session.setAttribute("pno",d.getPno());
        session.setAttribute("idnvstat",d.getIdnvstat());
        session.setAttribute("ptype",d.getPtype());
        session.setAttribute("sessionid",d.getSessionid());

        
        System.out.println(session.getAttribute("pno"));
        return 1;

    }
   
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView getdata(@RequestParam(required = false) String pno,HttpSession session) {
        ModelAndView model = new ModelAndView();
        model.setViewName("home");
        return model;

    }
   
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView reqpage(HttpSession session) {
        ModelAndView model = new ModelAndView();
        model.setViewName("reqpage");
        return model;

    }


}
