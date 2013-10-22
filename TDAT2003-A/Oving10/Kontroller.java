/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package springmvc.kontroller;

/**
 *
 * @author Ruben
 */

import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import springmvc.oving1.Person;

@Controller
public class EksempelKontroller {
    
    @RequestMapping(value="/*")
    public String test(){
        System.out.println("******Controller.test()******");
        return "/WEB-INF/jsp/tester.jsp";
    }
    
    @RequestMapping(value="something.*")
    @ResponseBody
    public String input(HttpServletRequest req, HttpServletResponse res){
        System.out.println("************ Controller.input()**********");
        String returString = "Inputparametre fra klienten: ";
        
        Enumeration enu = req.getParameterNames();
        if(!enu.hasMoreElements()){
            return "Ingen inputparametre fra klient";
        }
        
        while(enu.hasMoreElements()){
            String paramNavn = enu.nextElement().toString();
            returString += paramNavn+"="+req.getParameter(paramNavn)+"\n";
        }
        return returString;
    }
    
    @RequestMapping(value="inputtilmodel.*")
    public String inputTilModel(HttpServletRequest req, HttpServletResponse res, Model model){
        System.out.println("*******Controller.inputtilmodel()**********");
        String viewName="WEB-INF/jsp/xxxx.jsp";
        return viewName;
    }
    
    @RequestMapping(value="index")
    public String index(){
        System.out.println("*******Conroller.index()*****");
        return "WEB-INF/jsp/index.jsp";
    }
    
    @RequestMapping(value="oving1")
    public String oving1(@ModelAttribute(value="person")Person person){
        System.out.println("*********Controller.oving1()********");
        return "WEB-INF/jsp/oving_1-1.jsp";
    }
    
    @RequestMapping(value="resultat")
    public String resultat(@Valid @ModelAttribute(value="person") Person person, BindingResult error){
        
        if(error.hasErrors()){
            return "WEB-INF/jsp/oving_1-1.jsp";
        }
        
        return "WEB-INF/jsp/oving_1-2.jsp";
    }
    
    @RequestMapping(value="oving2")
    public String oving2(){
        return "WEB-INF/jsp/oving_2-1.jsp";
    }
    
    @RequestMapping(value="test")
    public String test(@ModelAttribute(value="person") Person person){
        return "WEB-INF/jsp/tester.jsp";
    }
}
