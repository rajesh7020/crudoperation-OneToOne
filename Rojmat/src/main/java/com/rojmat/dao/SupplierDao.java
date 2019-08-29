package com.rojmat.dao;
import java.util.List;
import com.rojmat.entity.Supplier;

public interface SupplierDao {
	 public void addSupplier(Supplier supplier); 
	 public List<Supplier> getSuppliers();
	 public Supplier getSupplierById(int supid);
	 public void deleteSupplierById(int supid);
}
