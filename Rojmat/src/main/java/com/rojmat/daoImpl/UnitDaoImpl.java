package com.rojmat.daoImpl;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rojmat.dao.UnitDao;
import com.rojmat.entity.Unit;

@Repository
public class UnitDaoImpl implements UnitDao{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addUnit(Unit unit) {
		sessionFactory.getCurrentSession().saveOrUpdate(unit);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Unit> getUnits() {
		return sessionFactory.getCurrentSession().createCriteria(Unit.class).list();
	}
	@Override
	public Unit getUnit(int unitid) {
		return (Unit)sessionFactory.getCurrentSession().get(Unit.class, unitid);
	}
	@Override
	public void deleteUnit(int unitid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Unit WHERE unitid="+unitid).executeUpdate();
	}
}
