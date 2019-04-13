package rest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;


@Controller
public class BlogController {

    @Autowired
    private BlogServiceRepository blogRepository;

    @RequestMapping({"/", "/blog"})
    public String index(Model model) {
        model.addAttribute("blogs", blogRepository.findAll());
        return "index";
    }

    @RequestMapping("/blog/{id}")
    public String show(Model model, @PathVariable String id) {
        int blogId = Integer.parseInt(id);
        List<Blog> blogs = new ArrayList<>();
        blogs.add(blogRepository.findById(blogId).get());
        model.addAttribute("blogs", blogs);
        return "index";
    }

    @GetMapping("/blog/search")
    public String search(Model model, @RequestParam(value = "text", required = false) String text) {
        if (text != null) {
            model.addAttribute("blogs", blogRepository.findByTitleContainingOrContentContaining(text, text));
        }
        return "search";
    }

    @GetMapping("/add")
    public String add() {
        return "add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(Model model, String title, String content) {
        if (title.isEmpty() || content.isEmpty()) {
            model.addAttribute("validationError", true);
        } else {
            model.addAttribute("validationError", false);
            model.addAttribute("blog", blogRepository.save(new Blog(title, content)));
        }
        return "add";
    }

    @GetMapping("/update/{id}")
    public String update(Model model, @PathVariable String id) {
        int blogId = Integer.parseInt(id);
        model.addAttribute("blog", blogRepository.findById(blogId).get());
        return "update";
    }

    @RequestMapping("/update/{id}")
    public String update(Model model, Blog blog, String title, String content) {
        if (title.isEmpty() || content.isEmpty()) {
            model.addAttribute("validationError", true);
        } else {
            model.addAttribute("validationError", false);
            blog.setTitle(title);
            blog.setContent(content);
            model.addAttribute("updatedBlog", blogRepository.save(blog));
        }
        return "update";
    }

    @GetMapping("/delete/{id}")
    public String delete(Model model, @PathVariable String id) {
        int blogId = Integer.parseInt(id);
        model.addAttribute("blog", blogRepository.findById(blogId).get());
        return "delete";
    }

    @RequestMapping("delete/{id}")
    public String delete(Model model, Blog blog) {
        blogRepository.delete(blog);
        model.addAttribute("deletion", true);
        model.addAttribute("blog", null);
        return "delete";
    }
}