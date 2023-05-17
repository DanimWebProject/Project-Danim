package com.danim.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.damin.totalSearch.entity.Do;
import com.damin.totalSearch.entity.Si;
import com.damin.totalSearch.service.DoService;
import com.damin.totalSearch.service.SiService;

@Controller
public class DoSiController {
    private final DoService doService;
    private final SiService siService;

    public DoSiController(DoService doService, SiService siService) {
        this.doService = doService;
        this.siService = siService;
    }

    @GetMapping("/")
    public String index(Model model) {
        List<Do> doList = doService.getAll();
        List<Si> siList = siService.getAll();

        model.addAttribute("doList", doList);
        model.addAttribute("siList", siList);

        return "totalSearch";
    }
}
