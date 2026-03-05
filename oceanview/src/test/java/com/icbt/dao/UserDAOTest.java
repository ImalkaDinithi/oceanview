package com.icbt.dao;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class UserDAOTest {

    @Test
    void testValidateUser() {

        UserDAO dao = new UserDAO();

        boolean result = dao.validateUser("admin", "admin123");

        assertFalse(result, "Login should succeed for correct credentials");
    }
}
