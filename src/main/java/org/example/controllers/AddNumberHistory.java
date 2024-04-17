package org.example.controllers;

import org.example.model.Block;
import org.example.model.UserEntity;
import org.example.security.SecurityUtil;
import org.example.service.BlockInterface;
import org.example.service.UserInterface;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.Collections;

import javax.validation.Valid;
import java.util.List;

@Controller
public class AddNumberHistory {

    private BlockInterface blockinterface;
    private UserInterface userinterface;


    @Autowired
    public AddNumberHistory(BlockInterface blockinterface, UserInterface userinterface) {
        this.blockinterface = blockinterface;
        this.userinterface = userinterface;
    }

    @GetMapping("/lecount")
    public String sav() {
        return "check";
    }

    @GetMapping("/life")
    public String handleLifeRequest(Model model) {
        // Create a new Block
        Block block = new Block();
        UserEntity user = new UserEntity();

        List<Block> blocks = blockinterface.findAllBlocks();

        Collections.reverse(blocks);

        String username = SecurityUtil.getSessionUser();
        if(username != null) {
            user = userinterface.findByUsername(username);
            model.addAttribute("user", user);
            model.addAttribute("totalIncome", blockinterface.getTotalIncome(user.getId()));
            model.addAttribute("totalExpense", blockinterface.getTotalExpense(user.getId()));
        }

        // Add the block and blocks to the model
        model.addAttribute("block", block);
        model.addAttribute("blocks", blocks);
        model.addAttribute("user", user);

        // Return the view name
        return "index";
    }


    @PostMapping("/life/green")
    public String saveGreen(@Valid @ModelAttribute("block") Block block) {
        block.setType("доход");
        blockinterface.saveBlock(block);
        return "redirect:/life";
    }

    @PostMapping("/life/red")
    public String saveRed(@Valid @ModelAttribute("block") Block block) {
        block.setType("расход");
        blockinterface.saveBlock(block);
        return "redirect:/life";
    }

    @GetMapping("/life/delete/{id}")
    public String handleDeleteRequest(@PathVariable Long id) {
        blockinterface.deleteBlock(id);
        return "redirect:/life";
    }


}




