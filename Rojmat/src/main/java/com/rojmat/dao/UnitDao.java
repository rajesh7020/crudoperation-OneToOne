package com.rojmat.dao;
import java.util.List;
import com.rojmat.entity.Unit;

public interface UnitDao {
	 public void addUnit(Unit unit); 
	 public List<Unit> getUnits();
	 public Unit getUnit(int unitid);
	 public void deleteUnit(int unitid);
}
