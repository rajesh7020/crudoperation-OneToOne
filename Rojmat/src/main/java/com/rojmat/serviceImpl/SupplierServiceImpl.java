package com.rojmat.serviceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.SupplierDao;
import com.rojmat.entity.Supplier;
import com.rojmat.service.SupplierService;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class SupplierServiceImpl implements SupplierService{
	@Autowired
	private SupplierDao suppilerDao;
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void addSupplier(Supplier supplier) {
		suppilerDao.addSupplier(supplier);
	}
	@Override
	public List<Supplier> getSuppliers() {
		return suppilerDao.getSuppliers();
	}
	@Override
	public Supplier getSupplierById(int supid) {
		return suppilerDao.getSupplierById(supid);
	}
	@Override
	public void deleteSupplierById(int supid) {
		suppilerDao.deleteSupplierById(supid);
	}
}
