package com.romantynchirov.spring.controller;

import com.romantynchirov.spring.entity.User;
import org.springframework.stereotype.Controller;
import com.romantynchirov.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String showAllUsers(Model model) {
        List<User> allUsers = userService.getAllUsers();
        model.addAttribute("allEmps", allUsers);
        return "all-users";
    }

    @GetMapping("/addNewUser")
    public String addNewUser(Model model) {
        User user = new User();
        user.setSalary(1000);
        model.addAttribute("user", user);
        return "user-info";
    }

    @PostMapping("/saveUser")
    public String saveUser(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/";
    }

    @PutMapping("/saveUpdatedUser")
    public String saveUpdatedUser(@ModelAttribute("updatedUser") User user) {
        userService.updateUser(user);
        return "redirect:/";
    }

    @GetMapping("/updateInfo")
    public String updateInfo(@RequestParam("empId") int id, Model model) {
        User user = userService.getUser(id);
        model.addAttribute("updatedUser", user);
        return "user-update";
    }

    @DeleteMapping("/deleteUser")
    public String deleteUser(@RequestParam("userId") int id) {
        userService.deleteUser(id);
        return "redirect:/";
    }

}
