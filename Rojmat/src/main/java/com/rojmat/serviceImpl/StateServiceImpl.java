package com.rojmat.serviceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.StateDao;
import com.rojmat.entity.State;
import com.rojmat.service.StateService;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class StateServiceImpl implements StateService{
	@Autowired
	private StateDao stateDao;
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addState(State state) {
		stateDao.addState(state);
	}
	@Override
	public List<State> getStates() {
		return stateDao.getStates();
	}
	@Override
	public State getStateById(int stateid) {
		return stateDao.getStateById(stateid);
	}
	@Override
	public void deleteStateById(int stateid) {
		stateDao.deleteStateById(stateid);
	}
}
