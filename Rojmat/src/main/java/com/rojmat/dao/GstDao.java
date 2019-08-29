package com.rojmat.dao;
import java.util.List;
import com.rojmat.entity.Gst;

public interface GstDao {
	 public void addGst(Gst gst); 
	 public List<Gst> getGsts();
	 public Gst getGst(int gstid);
	 public void deleteGst(int gstid);
}
