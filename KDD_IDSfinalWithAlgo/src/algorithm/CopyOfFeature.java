/*package algorithm;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;

*//**
 * Servlet implementation class Feature
 *//*
@WebServlet("/Feature")
public class CopyOfFeature extends HttpServlet {
	private static final long serialVersionUID = 1L;

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		{
			String csvFile = "C:/KDDTest_3000_Instance.csv";
			BufferedReader br = null;			String line = "";
			String cvsSplitBy = ",";			String id;
			String duration = ""; 		String protocol_type = ""; 			String service = "";
			String flag = "";			String src_bytes = ""; 				String dst_bytes = "";			String land = "";			
			String wrong_fragment = "",	urgent = "", hot = "", num_failed_logins = "", logged_in = "", num_compromised = "", root_shell = "";
			String su_attempted = "", num_root = "", num_file_creations = "", num_shells = "", num_access_files = "", num_outbound_cmds = "", is_host_login = "";
			String is_guest_login = "";	String count = "", srv_count = "", serror_rate = "", srv_serror_rate = "", rerror_rate = "", srv_rerror_rate = "", same_srv_rate = "";
			String diff_srv_rate = "", srv_diff_host_rate = "", dst_host_count = "", dst_host_srv_count = "", dst_host_same_srv_rate = "";
			String dst_host_diff_srv_rate = "";			String dst_host_same_src_port_rate = "";			String dst_host_srv_diff_host_rate = "";
			String dst_host_serror_rate = "";			String dst_host_srv_serror_rate = "";			String dst_host_rerror_rate = "";
			String host_srv_rerror_rate = "";			String attack_type = "";			String last_col = "";
			int total = 0;
			String val="0";
			int a=0,b=0,c=0,d=0,e=0,f=0,g=0,h=0,i=0,j=0,k=0,l=0,m=0,n=0,o=0,p=0,q=0,r=0,s=0,t=0,u=0,v=0,w=0,x=0,y=0,z=0;
			int aa=0,ab=0,ac=0,ad=0,ae=0,af=0,ag=0,ah=0,ai=0,aj=0,ak=0,al=0,am=0,an=0,ao=0,ap=0,aq=0;
			try {
				br = new BufferedReader(new FileReader(csvFile));
				
try{
					
					Connection conn =  DbConnection.getConnection();
					PreparedStatement ps1 = conn.prepareStatement("DELETE FROM `features_selection`");
					//ResultSet rs1 = ps1.executeQuery();
				int rs2 =  ps1.executeUpdate();
					if(rs2>0){
						System.out.println("cleared");
					}else{
						System.out.println("apend");
					}
		
				}catch(Exception ex){
					ex.printStackTrace();
					}
				while ((line = br.readLine()) != null) {
					total++; // use comma as separator
					String[] data = line.split(cvsSplitBy);
					duration = data[0];    protocol_type = data[1];   service = data[2]; flag = data[3];					src_bytes = data[4];   dst_bytes = data[5];		  land = data[6];
					wrong_fragment = data[7]; 	urgent = data[8];     hot = data[9];					num_failed_logins = data[10]; logged_in = data[11];	num_compromised = data[12];
					root_shell = data[13];		su_attempted = data[14];		num_root = data[15];					num_file_creations = data[16];	num_shells = data[17];		num_access_files = data[18];
					num_outbound_cmds = data[19];	is_host_login = data[20];	is_guest_login = data[21];					count = data[22];				srv_count = data[23];		serror_rate = data[24];
					srv_serror_rate = data[25];		rerror_rate = data[26];		srv_rerror_rate = data[27];					same_srv_rate = data[28];		diff_srv_rate = data[29];	srv_diff_host_rate = data[30];
					dst_host_count = data[31];		dst_host_srv_count = data[32];	dst_host_same_srv_rate = data[33];					dst_host_diff_srv_rate = data[34]; 	dst_host_same_src_port_rate = data[35]; 	dst_host_srv_diff_host_rate = data[36];
					dst_host_serror_rate = data[37];	dst_host_srv_serror_rate = data[38];		dst_host_rerror_rate = data[39];					host_srv_rerror_rate = data[40];    attack_type = data[41]; last_col = data[42];
					
					System.out.println(duration + " " + protocol_type + " "+ service + " " + flag + " " + src_bytes+ " " + dst_bytes + " " + land + ""
									+ wrong_fragment + " " + urgent + " " + hot+ " " + num_failed_logins + " " + logged_in+ " " + num_compromised + " " + root_shell
									+ " " + su_attempted + " " + num_root + " "+ num_file_creations + " " + num_shells+ " " + num_access_files + " "+ num_outbound_cmds + " " + is_host_login+ is_guest_login + " " + count + " "+ srv_count + " " + serror_rate + " "
									+ srv_serror_rate + " " + rerror_rate + " "	+ srv_rerror_rate + " " + same_srv_rate	+ " " + diff_srv_rate + " "	+ srv_diff_host_rate + " " + dst_host_count	+ " " + dst_host_srv_count + " "
									+ dst_host_same_srv_rate + " "+ dst_host_diff_srv_rate + " "+ dst_host_same_src_port_rate + " "	+ dst_host_srv_diff_host_rate + " "	+ dst_host_serror_rate + " "+ dst_host_srv_serror_rate + " "
									+ dst_host_rerror_rate + " "+ host_srv_rerror_rate + " "+ attack_type + " " + last_col);

					String qurey = "INSERT INTO `nsl_kdd`(`id`, `duration`, `protocol_type`, `service`, `flag`, `src_bytes`, `dst_bytes`, `land`,`wrong_fragment`, `urgent`, `hot`, `num_failed_logins`, `logged_in`, `num_compromised`, `root_shell`, `su_attempted`, `num_root`, `num_file_creations`, `num_shells`, `num_access_files`, `num_outbound_cmds`, `is_host_login`, `is_guest_login`, `count`, `srv_count`, `serror_rate`, `srv_serror_rate`, `rerror_rate`, `srv_rerror_rate`, `same_srv_rate`, `diff_srv_rate`, `srv_diff_host_rate`, `dst_host_count`, `dst_host_srv_count`, `dst_host_same_srv_rate`, `dst_host_diff_srv_rate`, `dst_host_same_src_port_rate`, `dst_host_srv_diff_host_rate`, `dst_host_serror_rate`, `dst_host_srv_serror_rate`, `dst_host_rerror_rate`, `_host_srv_rerror_rate`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10],[value-11],[value-12],[value-13],[value-14],[value-15],[value-16],[value-17],[value-18],[value-19],[value-20],[value-21],[value-22],[value-23],[value-24],[value-25],[value-26],[value-27],[value-28],[value-29],[value-30],[value-31],[value-32],[value-33],[value-34],[value-35],[value-36],[value-37],[value-38],[value-39],[value-40],[value-41],[value-42])";
					                                                                                                                                                                                                                                                         
					if(duration.equalsIgnoreCase(val)){
						a++;
					}else{
						try{
//							String a1 = "ALTER TABLE `features_selection` ADD `a` VARCHAR( 100 ) NULL ";
//							System.out.println("1");
//							Connection con = DbConnection.getConnection();
//							System.out.println("2");
//							PreparedStatement ps1 = con.prepareStatement(a1);
//							System.out.println("3");
//							int r1 = ps1.executeUpdate();
//							System.out.println("4");
						}catch(Exception aex){
							aex.printStackTrace();
						}

	
					}
					if(protocol_type.equalsIgnoreCase(val)){
						b++;
					}if(service.equalsIgnoreCase(val)){
						c++;
					}if(data[3].equalsIgnoreCase(val)){
						d++;
					}if(data[4].equalsIgnoreCase(val)){
						e++;
					}if(data[5].equalsIgnoreCase(val)){
						f++;
					}if(data[6].equalsIgnoreCase(val)){
						g++;
					}if(data[7].equalsIgnoreCase(val)){
						h++; 
					}if(data[8].equalsIgnoreCase(val)){
						i++; 
					}if(data[9].equalsIgnoreCase(val)){
						j++;
					}if(data[10].equalsIgnoreCase(val)){
						k++;
					}if(data[11].equalsIgnoreCase(val)){
						l++;
					}if(data[12].equalsIgnoreCase(val)){
						m++;
					}if(data[13].equalsIgnoreCase(val)){
						n++;
					}if(data[14].equalsIgnoreCase(val)){
						o++;
					}if(data[15].equalsIgnoreCase(val)){
						p++;
					}if(data[16].equalsIgnoreCase(val)){
						q++;
					}if(data[17].equalsIgnoreCase(val)){
						r++;
					}if(data[18].equalsIgnoreCase(val)){
						s++;
					}if(data[19].equalsIgnoreCase(val)){
						t++;
					}if(data[20].equalsIgnoreCase(val)){
						u++;
					}if(data[21].equalsIgnoreCase(val)){
						v++;
					}if(data[22].equalsIgnoreCase(val)){
						w++;
					}if(data[23].equalsIgnoreCase(val)){
						x++;
					}if(data[24].equalsIgnoreCase(val)){
						y++;
					}if(data[25].equalsIgnoreCase(val)){
						z++;
					}if(data[26].equalsIgnoreCase(val)){
						aa++;
					}if(data[27].equalsIgnoreCase(val)){
						ab++;
					}if(data[28].equalsIgnoreCase(val)){
						ac++;
					}if(data[29].equalsIgnoreCase(val)){
						ad++;
					}if(data[30].equalsIgnoreCase(val)){
						ae++;
					}if(data[31].equalsIgnoreCase(val)){
						af++;
					}if(data[32].equalsIgnoreCase(val)){
						ag++;
					}if(data[33].equalsIgnoreCase(val)){
						ah++;
					}if(data[34].equalsIgnoreCase(val)){
						ai++;
					}if(data[35].equalsIgnoreCase(val)){
						aj++;
					}if(data[36].equalsIgnoreCase(val)){
						ak++;
					}if(data[37].equalsIgnoreCase(val)){
						al++;
					}if(data[38].equalsIgnoreCase(val)){
						am++;
					}if(data[39].equalsIgnoreCase(val)){
						an++;
					}if(data[40].equalsIgnoreCase(val)){
						ao++;
					}if(data[41].equalsIgnoreCase(val)){
						ap++;
					}if(data[42].equalsIgnoreCase(val)){
						aq++;
					}
			

					if(a>=500 || b>=500 || c>=500 || d>=500 || e>=500 || f>=500 || g>=500 || h>=500 || i>=500 || j>=500 || k>=500 || l>=500 || m>=500 || n>=500 || o>=500 || p>=500 || q>=500 || r>=500 || s>=500 || t>=500 || u>=500 || v>=500 || w>=500 || x>=500 || y>=500 || z>=500 || ab>=500 || ab>=500 || ac>=500 || ad>=500 || ae>=500 || af>=500 || ag>=500 || ah>=500 || ai>=500 || aj>=500 || ak>=500 || al>=500 || am>=500 || an>=500 || ao>=500 || ap>=500 || aq>=500 )
					{
						
					}
					try{
						Connection con = DbConnection.getConnection();
PreparedStatement psi = con.prepareStatement("INSERT INTO "
		+ "`features_selection` (`b` ,`c` ,`d` ,`e` ,`f` ,`l` ,`w` ,`x`,`ac`,`af`,`ag` ,`ah` ,`ai` ,`aj` ,`an` ,`ap`)VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						psi.setString(1, data[1]);
						psi.setString(2, data[2]);
						psi.setString(3, data[3]);
						psi.setString(4, data[4]);
						psi.setString(5, data[5]);
						psi.setString(6, data[11]);
						psi.setString(7, data[22]);
						psi.setString(8, data[23]);
						psi.setString(9, data[28]);
						psi.setString(10, data[31]);
						psi.setString(11, data[32]);
						psi.setString(12, data[33]);
						psi.setString(13, data[34]);
						psi.setString(14, data[35]);
						psi.setString(15, data[39]);
						psi.setString(16, data[41]);
//						psi.setString(17, data[31]);
//						psi.setString(18, data[32]);
//						psi.setString(19, data[33]);
//						psi.setString(20, data[34]);
//						psi.setString(21, data[35]);
//						psi.setString(22, data[36]);
//						psi.setString(23, data[37]);
//						psi.setString(24, data[38]);
//						psi.setString(25, data[39]);
//						psi.setString(26, data[40]);
//						psi.setString(27, data[41]);
//						psi.setString(28, data[42]);
//						psi.setString(20, data[0]);
						
						int rr = psi.executeUpdate();
						
					}catch(Exception kk){
						kk.printStackTrace();
					}

					
				}
				System.out.println("duration : "+a);
				System.out.println("protocol_type :"+b);
				System.out.println("services : "+c);System.out.println("d : "+d);System.out.println("e : "+e);
				System.out.println("f : "+f);System.out.println("g : "+g);System.out.println("h : "+h);
				System.out.println("i : "+i);System.out.println("j : "+j);System.out.println("k : "+k);
				System.out.println("l : "+l);System.out.println("m : "+m);System.out.println("n : "+n);
				System.out.println("o : "+o);System.out.println("p : "+p);System.out.println("q : "+q);
				System.out.println("r : "+r);System.out.println("s : "+s);System.out.println("t : "+t);
				System.out.println("u : "+u);System.out.println("v : "+v);System.out.println("w : "+w);
				System.out.println("x : "+x);System.out.println("y : "+y);System.out.println("z : "+z);
				System.out.println("aa : "+aa);System.out.println("ab : "+ab);System.out.println("ac : "+ac);
				System.out.println("ad : "+ad);System.out.println("ae : "+ae);System.out.println("af : "+af);
				System.out.println("ag : "+ag);System.out.println("ah : "+ah);System.out.println("ai : "+ai);
				System.out.println("aj : "+aj);System.out.println("ak : "+ak);System.out.println("al : "+al);
				System.out.println("am : "+am);System.out.println("an : "+an);System.out.println("ao : "+ao);
				System.out.println("ap is attack type cannot remove : "+ap);System.out.println("aq : "+aq);
				System.out.println("total : " + total);
				
				if(a>=2100){
					System.out.println("a can be removed");
				}if(b>=2100){
					System.out.println("b can be removed");
				}if(c>=2100){
					System.out.println("c can be removed");
				}if(d>=2100){
					System.out.println("d can be removed");
				}if(e>=2100){
					System.out.println("e can be removed");
				}if(f>=2100){
					System.out.println("f can be removed");
				}if(g>=2100){
					System.out.println("g can be removed");
				}if(h>=2100){
					System.out.println("h can be removed");
				}if(i>=2100){
					System.out.println("i can be removed");
				}if(j>=2100){
					System.out.println("j can be removed");
				}if(k>=2100){
					System.out.println("k can be removed");
				}if(l>=2100){
					System.out.println("l can be removed");
				}if(m>=2100){
					System.out.println("m can be removed");
				}if(n>=2100){
					System.out.println("n can be removed");
				}if(o>=2100){
					System.out.println("o can be removed");
				}if(p>=2100){
					System.out.println("p can be removed");
				}if(q>=2100){
					System.out.println("q can be removed");
				}if(r>=2100){
					System.out.println("r can be removed");
				}if(s>=2100){
					System.out.println("s can be removed");
				}if(t>=2100){
					System.out.println("t can be removed");
				}if(u>=2100){
					System.out.println("u can be removed");
				}if(v>=2100){
					System.out.println("v can be removed");
				}if(w>=2100){
					System.out.println("w can be removed");
				}if(x>=2100){
					System.out.println("x can be removed");
				}if(y>=2100){
					System.out.println("y can be removed");
				}if(z>=2100){
					System.out.println("z can be removed");
				}if(aa>=2100){
					System.out.println("aa can be removed");
				}if(ab>=2100){
					System.out.println("ab can be removed");
				}if(ac>=2100){
					System.out.println("ac can be removed");
				}if(ad>=2100){
					System.out.println("ad can be removed");
				}if(ae>=2100){
					System.out.println("ae can be removed");
				}if(af>=2100){
					System.out.println("af can be removed");
				}if(ag>=2100){
					System.out.println("ag can be removed");
				}if(ah>=2100){
					System.out.println("ah can be removed");
				}if(ai>=2100){
					System.out.println("ai can be removed");
				}if(aj>=2100){
					System.out.println("aj can be removed");
				}if(ak>=2100){
					System.out.println("ak can be removed");
				}if(al>=2100){
					System.out.println("al can be removed");
				}if(am>=2100){
					System.out.println("am can be removed");
				}if(an>=2100){
					System.out.println("an can be removed");
				}if(ao>=2100){
					System.out.println("ao can be removed");
				}
				//	if(ap>=2100){
//					System.out.println("ap can be removed");
//				}if(aq>=2100){
//					System.out.println("aq can be removed");
//				}
				
				
				
				response.sendRedirect("adminhome.jsp");
			} catch (FileNotFoundException e1) {
				e1.printStackTrace();
			} catch (IOException e2) {
				e2.printStackTrace();
			} finally {
				if (br != null) {
					try {
						br.close();
					} catch (IOException e3) {
						e3.printStackTrace();
					}
				}
			}

			// return "done";
		}
		System.out.println("in servlet");
		// ReadXLS.readxls();

	
	}

	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
*/