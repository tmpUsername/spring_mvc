/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import streaming.entity.Film;
import streaming.service.FilmCrudService;
import streaming.service.GenreCrudService;

/**
 *
 * @author tom
 */
@Controller
//@RequestMapping("/film")
public class FilmController {
    
    @Autowired
    private FilmCrudService service;
    
    @Autowired
    private GenreCrudService genreService;
//    
//    @RequestMapping(value="find/{id}", method = RequestMethod.GET)
//    @ResponseBody
//    public Film findById( @PathVariable("id") long id){
//        
//        Film f = new Film(1L, "Karate Kid", "blabla", 1989L, null);
//        
//        return f;
//    }
    
    @RequestMapping(value = "/liste_films", method = RequestMethod.GET)
    public String lister(Model model){
        model.addAttribute("films",service.findAllByOrderByAnneeProdDesc());
        return "film_lister.jsp";
    }
    
    @RequestMapping(value = "/ajouter_film", method = RequestMethod.GET)
    public String ajouterGET(Model model){
        model.addAttribute("filmAttr", new Film());
        model.addAttribute("genres", genreService.findAllByOrderByNom());
        return "ajouter_film.jsp";
    }
    
    @RequestMapping(value = "/ajouterf", method = RequestMethod.POST)
    public String ajouterPOST(@ModelAttribute("filmAttr")Film f){
        service.save(f);
        return "redirect:/liste_films";
    }
    
    @RequestMapping(value = "/supprimer_film/{id}", method = RequestMethod.GET)
    public String supprimer(@PathVariable("id") long id){
        service.delete(id);
        return "redirect:/liste_films";
    }
    
    @RequestMapping(value = "/modifier_film/{id}", method = RequestMethod.GET)
    public String modifierGET(Model model, @PathVariable("id") long id){
        model.addAttribute("filmAttr", service.findOne(id));
        model.addAttribute("genres", genreService.findAllByOrderByNom());
        return "modifier_film.jsp";
    }
    
    @RequestMapping(value = "/modifierf", method = RequestMethod.POST)
    public String modifierPOST(@ModelAttribute("filmAttr") Film f){
        service.save(f);
        return "redirect:/liste_films";
    }
}
