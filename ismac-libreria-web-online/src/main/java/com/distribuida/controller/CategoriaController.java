package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.CategoriaDAO;
import com.distribuida.entities.Categoria;

@Controller
@RequestMapping("/categorias")  // Path Principal
public class CategoriaController {

    @Autowired
    private CategoriaDAO categoriaDAO;

    @GetMapping("/findAll")  // Path secundario
    public String findAll(Model model) {
        List<Categoria> categorias = categoriaDAO.findAll();
        model.addAttribute("categorias", categorias);  // Clave = "categorias", valor = categorias
        return "categorias-listar";  // Nombre del formulario EJ: "categorias-listar.html" o "categorias-listar.jsp"
    }

    @GetMapping("/findOne")
    public String findOne(@RequestParam("idCategoria") @Nullable Integer idCategoria,
                          @RequestParam("opcion") @Nullable Integer opcion,
                          Model model) {
        if (idCategoria != null) {
            Categoria categoria = categoriaDAO.findOne(idCategoria);
            model.addAttribute("categoria", categoria);
        }
        
        if (opcion == 1) {
            return "categorias-add";  // Actualización
        } else {
            return "categorias-del";  // Eliminación
        }
    }

    @PostMapping("/add")
    public String add(@RequestParam("idCategoria") @Nullable Integer idCategoria,
                      @RequestParam("categoria") @Nullable String categoria,
                      @RequestParam("descripcion") @Nullable String descripcion,
                      Model model) {
        if (idCategoria == null) {  // Guardar
            Categoria categoria1 = new Categoria(0, categoria, descripcion);
            categoriaDAO.add(categoria1);
        } else {  // Actualizar
            Categoria categoria2 = new Categoria(idCategoria, categoria, descripcion);
            categoriaDAO.up(categoria2);
        }
        
        return "redirect:/categorias/findAll";
    }

    @GetMapping("/del")
    public String del(@RequestParam("idCategoria") @Nullable Integer idCategoria) {
        categoriaDAO.del(idCategoria);
        return "redirect:/categorias/findAll";
    }
}