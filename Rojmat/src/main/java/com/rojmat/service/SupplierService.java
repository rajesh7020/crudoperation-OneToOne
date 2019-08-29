package com.rojmat.service;
import java.util.List;
import com.rojmat.entity.Supplier;

public interface SupplierService {
	public void addSupplier(Supplier supplier); 
	 public List<Supplier> getSuppliers();
	 public Supplier getSupplierById(int supid);
	 public void deleteSupplierById(int supid);
}
