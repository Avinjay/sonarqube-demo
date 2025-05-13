package com.example.demo;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class HelloControllerTest {

    @Test
    public void testSayHello() {
        HelloController controller = new HelloController();
        String greeting = controller.sayHello("World");
        assertEquals("Hello, World!", greeting);
    }
}

