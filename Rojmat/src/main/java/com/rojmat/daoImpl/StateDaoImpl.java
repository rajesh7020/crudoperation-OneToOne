package com.rojmat.daoImpl;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rojmat.dao.StateDao;
import com.rojmat.entity.State;

@Repository
public class StateDaoImpl implements StateDao{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addState(State state) {
		sessionFactory.getCurrentSession().saveOrUpdate(state);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<State> getStates() {
		return sessionFactory.getCurrentSession().createCriteria(State.class).list();
	}
	@Override
	public State getStateById(int stateid) {
		return (State)sessionFactory.getCurrentSession().get(State.class, stateid);
	}
	@Override
	public void deleteStateById(int stateid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM State WHERE stateid="+stateid).executeUpdate();
	}
}
