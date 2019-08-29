package com.rojmat.service;
import java.util.List;
import com.rojmat.entity.Unit;

public interface UnitService {
	 public void addUnit(Unit unit); 
	 public List<Unit> getUnits();
	 public Unit getUnit(int unitid);
	 public void deleteUnit(int unitid);
}
