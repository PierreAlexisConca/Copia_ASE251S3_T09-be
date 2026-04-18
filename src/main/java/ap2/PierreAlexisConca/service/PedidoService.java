package ap2.PierreAlexisConca.service;

import ap2.PierreAlexisConca.model.Pedido;
import java.util.List;
import java.util.Optional;

public interface PedidoService {
    List<Pedido> findAll();
    Optional<Pedido> findById(Long id);
    Pedido save(Pedido pedido);
    Pedido update(Pedido pedido);
    void delete(Long id);
}
