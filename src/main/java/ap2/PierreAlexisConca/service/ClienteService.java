package ap2.PierreAlexisConca.service;

import ap2.PierreAlexisConca.model.Cliente;
import java.util.List;
import java.util.Optional;

public interface ClienteService {
    List<Cliente> findAll();
    Optional<Cliente> findById(Long id);
    Cliente save(Cliente cliente);
    Cliente update(Cliente cliente);
    void delete(Long id);
}
