package com.bookstore.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.bookstore.jpa.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
}