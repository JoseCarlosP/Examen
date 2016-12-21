package com.infosyst.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.infosyst.bean.*;
import java.sql.DriverManager;


public class UserDao {
	
	
		public static Connection getConnection(){
			Connection con=null;
			try{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examen","root","uaemex");
			} catch(Exception e){System.out.println(e);}
			return con;
			}
		
		public static int save(User u){
			
		int status=0;
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("insert into infosyst(nombre, apellido_paterno, apellido_materno, email, edad, ingresos_mensuales, fecha_ingreso) values(?,?,?,?,?,?,?)");
				ps.setString(1, u.getNombre());
				ps.setString(2, u.getApellido_paterno());
				ps.setString(3, u.getApellido_materno());
				ps.setString(4, u.getEmail());
				ps.setString(5, u.getEdad());
				ps.setString(6, u.getIngresos_mensuales());
				ps.setString(7, u.getFecha_ingreso());
				System.out.println("Mensaje Valor: "+u.getNombre());
				status=ps.executeUpdate();
				
				
			}catch(Exception e){System.out.println("Mensaje "+e+"Valor: ");
			
			}
			return status;
			
		}
		
		public static int update(User u){
			int status=0;
			
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("update infosyst set nombre=?, apellido_paterno=?, apellido_materno=?, email=? , edad=?, ingresos_mensuales=?, fecha_ingreso=? where id=?");
				ps.setString(1, u.getNombre());
				ps.setString(2, u.getApellido_paterno());
				ps.setString(3, u.getApellido_materno());
				ps.setString(4, u.getEmail());
				ps.setString(5, u.getEdad());
				ps.setString(6, u.getIngresos_mensuales());
				ps.setString(7, u.getFecha_ingreso());
				ps.setInt(8, u.getId());
				status=ps.executeUpdate();
			}catch(Exception e){System.out.println(e);}
			return status;
		}
		
		public static int delete(User u){
			int status=0;
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("delete from infosyst where id=?");
				ps.setInt(1, u.getId());
				status=ps.executeUpdate();	
				
			}catch(Exception e){System.out.println(e);}
			return status;
		}
		
		public static List<User> getAllRecords(){
			List<User> list=new ArrayList<User>();
			
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("select * from infosyst");
				ResultSet rs=ps.executeQuery();
				
				while(rs.next()){
					User u=new User();
					u.setId(rs.getInt("id"));
					u.setNombre(rs.getString("nombre"));
					u.setApellido_paterno(rs.getString("apellido_paterno"));
					u.setApellido_materno(rs.getString("apellido_materno"));
					u.setEmail(rs.getString("email"));
					u.setEdad(rs.getString("edad"));
					u.setIngresos_mensuales(rs.getString("ingresos_mensuales"));
					u.setFecha_ingreso(rs.getString("fecha_ingreso"));
					list.add(u);
					
				}
			}catch(Exception e){System.out.println(e);}
			return list;
		}

		public static User getRecordById(int id){
			User u=null;
			
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("select * from infosyst where id=?");
				ps.setInt(1,id);
				ResultSet rs=ps.executeQuery();
				
				while(rs.next());{
					u=new User();
					u.setId(rs.getInt("id"));
					u.setNombre(rs.getString("nombre"));
					u.setApellido_paterno(rs.getString("apellido_paterno"));
					u.setApellido_materno(rs.getString("apellido_materno"));
					u.setEmail(rs.getString("email"));
					u.setEdad(rs.getString("edad"));
					u.setIngresos_mensuales(rs.getString("ingresos_mensuales"));
					u.setFecha_ingreso(rs.getString("fecha_ingreso"));
					
					
				}
			}catch(Exception e){System.out.println(e);}
			return u;
		}
		
}
