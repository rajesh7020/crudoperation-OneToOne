package com.rojmat.service;
import java.util.List;
import com.rojmat.entity.State;

public interface StateService {
	 public void addState(State state); 
	 public List<State> getStates();
	 public State getStateById(int stateid);
	 public void deleteStateById(int stateid);
}
