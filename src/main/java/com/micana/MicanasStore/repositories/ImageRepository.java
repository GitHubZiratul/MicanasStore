package com.micana.MicanasStore.repositories;

import com.micana.MicanasStore.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
