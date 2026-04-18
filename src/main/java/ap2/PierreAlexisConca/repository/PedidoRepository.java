package ap2.PierreAlexisConca.repository;

import ap2.PierreAlexisConca.model.Pedido;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PedidoRepository extends JpaRepository<Pedido, Long> {
    // Métodos personalizados si los necesitas
}
