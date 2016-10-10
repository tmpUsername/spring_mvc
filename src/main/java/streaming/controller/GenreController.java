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
import streaming.entity.Genre;
import streaming.service.GenreCrudService;

/**
 *
 * @author admin
 */
@Controller
public class GenreController {

    @Autowired
    private GenreCrudService service;

    @RequestMapping(value = "/liste_genres", method = RequestMethod.GET)
    public String lister(Model model) {

        model.addAttribute("genres", service.findAllByOrderByNom());
        return "genre_lister.jsp";
    }
    
    @RequestMapping(value = "/supprimer_genre/{val}", method = RequestMethod.GET)
    public String supprimer(@PathVariable("val") long idGenreASupprimer){
        service.delete(idGenreASupprimer);
        
        return "redirect:/liste_genres";
    }
    
    @RequestMapping(value = "/modifier_genre/{id}", method = RequestMethod.GET)
    public String modifier(@PathVariable("id") long idGenreAModifier, Model model){
        model.addAttribute("genreAttr", service.findOne(idGenreAModifier));
        return "modifier_genre.jsp";
    }
    
    @RequestMapping(value = "/modifier", method = RequestMethod.POST)
    public String modifier(@ModelAttribute("genreAttr") Genre g){
        service.save(g);
        return "redirect:/liste_genres";
    }
    
    @RequestMapping(value = "/ajouter_genre", method = RequestMethod.GET)
    public String ajouter(Model model) {
        model.addAttribute("genreAttr", new Genre());
        return "ajouter_genre.jsp";
    }
    
    @RequestMapping(value = "/ajouter", method = RequestMethod.POST)
    public String ajouter(@ModelAttribute("genreAttr") Genre g){
        service.save(g);
        return "redirect:/liste_genres";
    }
}
