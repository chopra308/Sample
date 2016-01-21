package test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import beans.Student;
public class Client {
	public static void main(String[] args){
		Student st= new Student();
		st.setId(1111);
		st.setName("abc");
		st.setEmail("abc@gmail.com");
		st.setMarks(89);
		//Student now is transient
		
		Configuration cfg= new Configuration();
		cfg.configure("resources/hibernate.cfg.xml");
		SessionFactory sf= cfg.buildSessionFactory();
		Session s= sf.openSession();
		s.save(st);
		//student object state is persistent
		s.beginTransaction().commit();
		//student object state is permanent
		s.evict(st);
		//student object state is detached and garbage collector will collect the same
		
	}
}
