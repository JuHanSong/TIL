package templates.webController

import org.springframework.web.bind.annotation.GetMapping

import lombok.AllArgsConstructor
import org.springframework.stereotype.Controller


class webController {

    @Controller
    @AllArgsConstructor
    class WebController {
        @GetMapping("/")
        fun main(): String {
            return "main"
        }
    }
}