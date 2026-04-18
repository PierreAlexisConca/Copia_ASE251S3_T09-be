package ap2.PierreAlexisConca.service;

import ap2.PierreAlexisConca.model.Producto;
import java.util.List;
import java.util.Optional;

public interface ProductoService {
    List<Producto> findAll();
    Optional<Producto> findById(Long id);
    Producto save(Producto producto);
    Producto update(Producto producto);
    void delete(Long id);
}
