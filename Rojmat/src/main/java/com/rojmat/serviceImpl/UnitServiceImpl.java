package com.rojmat.serviceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.UnitDao;
import com.rojmat.entity.Unit;
import com.rojmat.service.UnitService;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class UnitServiceImpl implements UnitService{
	@Autowired
	private UnitDao unitDao;
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addUnit(Unit unit) {
		unitDao.addUnit(unit);
	}
	@Override
	public List<Unit> getUnits() {
		return unitDao.getUnits();
	}
	@Override
	public Unit getUnit(int unitid) {
		return unitDao.getUnit(unitid);
	}
	@Override
	public void deleteUnit(int unitid) {
		unitDao.deleteUnit(unitid);
	}
}
