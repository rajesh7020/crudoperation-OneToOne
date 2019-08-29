package com.rojmat.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.rojmat.entity.State;
import com.rojmat.service.StateService;

@Controller
@RequestMapping(value="/state")
public class StateController {
	@Autowired
	private StateService stateService;
	@RequestMapping(value="/addstate", method=RequestMethod.GET)
	public ModelAndView addState(@ModelAttribute("command")State state, BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("states", stateService.getStates());
		return new ModelAndView("states", model);
	}
	@RequestMapping(value="/savestate", method=RequestMethod.POST)
	public ModelAndView saveState(@ModelAttribute("command")State state, BindingResult result) {
		stateService.addState(state);
		return new ModelAndView("redirect:/state/addstate");
	}
	@RequestMapping(value="/editstate", method=RequestMethod.GET)
	public ModelAndView editState(@ModelAttribute("command")State state, BindingResult result) {
		Map<String,Object> model = new HashMap<String, Object>();
		model.put("state", stateService.getStateById(state.getStateid()));
		model.put("states", stateService.getStates());
		return new ModelAndView("states", model);
	}
	@RequestMapping(value="/deletestate", method=RequestMethod.GET)
	public ModelAndView deleteState(@ModelAttribute("command")State state, BindingResult result) {
		stateService.deleteStateById(state.getStateid());
		Map<String,Object> model = new HashMap<String, Object>();
		model.put("states", stateService.getStates());
		return new ModelAndView("redirect:/state/addstate", model);
	}
	@RequestMapping(value="/states", method=RequestMethod.GET)
	public List<State> getState() {
		return stateService.getStates();
	}
}
