package org.example;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

class MainTest {

    @Test
    void hello_shouldReturnHelloWorld() {
        Assertions.assertEquals("hello", "hello");
    }
}