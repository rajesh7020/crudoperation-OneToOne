package com.rojmat.daoImpl;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rojmat.dao.GstDao;
import com.rojmat.entity.Gst;

@Repository
public class GstDaoImpl implements GstDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addGst(Gst gst) {
		sessionFactory.getCurrentSession().saveOrUpdate(gst);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Gst> getGsts() {
		return sessionFactory.getCurrentSession().createCriteria(Gst.class).list();
	}
	@Override
	public Gst getGst(int gstid) {
		return (Gst)sessionFactory.getCurrentSession().get(Gst.class, gstid);
	}
	@Override
	public void deleteGst(int gstid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Gst WHERE gstid="+gstid).executeUpdate();
	}
}
