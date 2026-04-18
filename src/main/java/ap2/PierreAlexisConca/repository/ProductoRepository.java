package ap2.PierreAlexisConca.repository;

import ap2.PierreAlexisConca.model.Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductoRepository extends JpaRepository<Producto, Long> {
    // Métodos personalizados si los necesitas
}
