package com.micana.MicanasStore.repositories;

import com.micana.MicanasStore.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
    User findByEmail(String email);
}
