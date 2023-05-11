package org.example.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class GreenSumServlet {

    private int result = 0;
    private List<Integer> numbers = new ArrayList<>();

    @PostMapping("/greensum")
    @ResponseBody
    public String addNumber(@RequestParam("number") int number) {
        // Прибавляем к нему 100
        result += number;

        // Возвращаем обновленное значение суммы
        return "+" + result + " ₽";
    }
}

