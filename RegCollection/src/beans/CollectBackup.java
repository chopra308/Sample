package beans;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class CollectBackup extends ActionForm {
	int id;
	String fname, lname;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		ActionErrors ae= new ActionErrors();
		
		if (id==0)
			ae.add("id", new ActionMessage("msg1"));
		if (fname.equals(""))
			ae.add("fname_e", new ActionMessage("msg2"));
		if (lname.equals(""))
			ae.add("lname", new ActionMessage("msg3"));
		return ae;
	}
	
	

}
