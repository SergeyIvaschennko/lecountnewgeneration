package org.example.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;



@Controller
public class RedSumServlet {

    private int result = 0;
    private List<Integer> numbers = new ArrayList<>();

    @PostMapping("/redsum")
    @ResponseBody
    public String addNumber(@RequestParam("number") int number) {
        // Прибавляем к нему 100
        result += number;

        // Добавляем число в список
        numbers.add(number);

        // Возвращаем обновленное значение суммы
        return "-" + result + " ₽";
    }

}

