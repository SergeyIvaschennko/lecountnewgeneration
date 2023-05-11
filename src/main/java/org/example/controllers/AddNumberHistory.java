package org.example.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class AddNumberHistory {

    private String history = "";
    private int id = 1;

    @Autowired
    private BlockService blockService;

    @PostMapping("/greennumber")
    @ResponseBody
    public String Number(@RequestParam("number") int number) {
        // Прибавляем к нему 100
        String city = "Прибыль";
        String html = "<div class='green'>"
                + "<div id = 'rev-text'>" + city + "</div>"
                + "<div id = 'money-text'>" + "+" + number + " ₽" +"</div>"
                + "</div>";
        history += html;
        Block block = new Block(id, city, number);
        blockService.create(block);
        id += 1;
        // Возвращаем обновленное значение суммы
        return history;
    }

    @PostMapping("/rednumber")
    @ResponseBody
    public String Number(@RequestParam("number") int number, @RequestParam("city") String city) {

        String html = "<div class='red'>"
                + "<div id = 'rev-text'>" + city + "</div>"
                + "<div id = 'money-text'>" + "-" + number + " ₽" +"</div>"
                + "</div>";
        history += html;
        Block block = new Block(id, city, number);
        blockService.create(block);
        id += 1;
        // Возвращаем обновленное значение суммы
        return history;
    }

    @DeleteMapping("/history/{id}")
    public String deleteBLockById(@PathVariable("id") int id) {
        return blockService.delete(id);
    }

}

