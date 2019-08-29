package com.rojmat.dao;
import java.util.List;
import com.rojmat.entity.State;

public interface StateDao {
	 public void addState(State state); 
	 public List<State> getStates();
	 public State getStateById(int stateid);
	 public void deleteStateById(int stateid);
}
