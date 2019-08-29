package com.rojmat.daoImpl;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rojmat.dao.SupplierDao;
import com.rojmat.entity.Supplier;

@Repository
public class SupplierDaoImpl implements SupplierDao{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Supplier> getSuppliers() {
		return sessionFactory.getCurrentSession().createCriteria(Supplier.class).list();
	}
	@Override
	public Supplier getSupplierById(int supid) {
		return (Supplier)sessionFactory.getCurrentSession().get(Supplier.class, supid);
	}
	@Override
	public void deleteSupplierById(int supid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Supplier WHERE supid="+supid).executeUpdate();
	}
}
