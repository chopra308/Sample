package beans;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class CollectController extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		CollectBackup backform= (CollectBackup) form;
		int id= backform.getId();
		String fname= backform.getFname();
		String lname= backform.getLname();
		
		//Map<Integer, List<String>> peoplebyid = new HashMap<Integer, List<String>>();
		List<CollectBackup> people= new ArrayList<CollectBackup>();
		people.add(backform);
		
		for (CollectBackup item: people ){
			System.out.println(item.getId());
			System.out.println(item.getFname());
			System.out.println(item.getLname());
		}
		
		HttpSession session= request.getSession();
		
		session.setAttribute("people", people);
		//session.setAttribute("id", id);
		//session.setAttribute("fname", fname);
		//session.setAttribute("lname", lname);
		return mapping.findForward("success");
	}

		
}
