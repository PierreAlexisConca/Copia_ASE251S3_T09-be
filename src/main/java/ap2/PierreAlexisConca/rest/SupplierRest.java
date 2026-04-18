package ap2.PierreAlexisConca.rest;

import ap2.PierreAlexisConca.model.Supplier;
import ap2.PierreAlexisConca.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/supplier")
@CrossOrigin(origins = "http://localhost:4200") // Puerto por defecto de Angular
public class SupplierRest {

    private final SupplierService supplierService;

    @Autowired
    public SupplierRest(SupplierService supplierService) {
        this.supplierService = supplierService;
    }

    @GetMapping
    public List<Supplier> findAll() {
        return supplierService.findAll();
    }

    @GetMapping("/state/{state}")
    public List<Supplier> findByState(@PathVariable String state) {
        return supplierService.findByState(state);
    }

    @GetMapping("/{id}")
    public Optional<Supplier> findById(@PathVariable Long id) {
        return supplierService.findById(id);
    }

    @PostMapping("/save")
    public Supplier save(@RequestBody Supplier supplier) {
        return supplierService.save(supplier);
    }

    @PutMapping("/update/{id}")
    public Supplier update(@PathVariable Long id, @RequestBody Supplier supplier) {
        supplier.setId(id); // 🔥 importante
        return supplierService.update(supplier);
    }

    @PatchMapping("/delete/{id}")
    public Supplier delete(@PathVariable Long id) {
        return supplierService.delete(id);
    }

    @PatchMapping("/restore/{id}")
    public Supplier restore(@PathVariable Long id) {
        return supplierService.restore(id);
    }
}
