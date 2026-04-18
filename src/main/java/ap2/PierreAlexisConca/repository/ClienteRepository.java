package ap2.PierreAlexisConca.repository;

import ap2.PierreAlexisConca.model.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, Long> {
    // Métodos personalizados si los necesitas
}
