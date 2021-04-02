package read.dataset;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.util.DbConnection;

import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;

/**
 * Servlet implementation class Load
 */
//@WebServlet("/Load")
public class Load extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Load() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		{
			String csvFile = "C:/KDDTest_3000.csv";
			BufferedReader br = null;
			String line = "";
			String cvsSplitBy = ",";

			String id;
			String duration = "";
			String protocol_type = "";
			String service = "";
			String flag = "";
			String src_bytes = "";
			String dst_bytes = "";
			String land = "";
			String wrong_fragment = "", urgent = "", hot = "", num_failed_logins = "", logged_in = "", num_compromised = "", root_shell = "";
			String su_attempted = "", num_root = "", num_file_creations = "", num_shells = "", num_access_files = "", num_outbound_cmds = "", is_host_login = "";
			String is_guest_login = "";
			String count = "", srv_count = "", serror_rate = "", srv_serror_rate = "", rerror_rate = "", srv_rerror_rate = "", same_srv_rate = "";
			String diff_srv_rate = "", srv_diff_host_rate = "", dst_host_count = "", dst_host_srv_count = "", dst_host_same_srv_rate = "";
			String dst_host_diff_srv_rate = "";
			String dst_host_same_src_port_rate = "";
			String dst_host_srv_diff_host_rate = "";
			String dst_host_serror_rate = "";
			String dst_host_srv_serror_rate = "";
			String dst_host_rerror_rate = "";
			String host_srv_rerror_rate = "";
			String attack_type = "";
			String last_col = "";
			int total = 0;
			try {
				br = new BufferedReader(new FileReader(csvFile));
				
				//// delete exisitng records database 
				try{
					
					Connection conn =  DbConnection.getConnection();
					PreparedStatement ps1 = conn.prepareStatement("DELETE FROM `nsl_kdd_3000`");
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
				
				///
				
				while ((line = br.readLine()) != null) {
					total++; // use comma as separator
					String[] data = line.split(cvsSplitBy);
					duration = data[0];    protocol_type = data[1];   service = data[2]; flag = data[3];
					src_bytes = data[4];   dst_bytes = data[5];		  land = data[6];
					wrong_fragment = data[7]; 	urgent = data[8];     hot = data[9];
					num_failed_logins = data[10]; logged_in = data[11];	num_compromised = data[12];
					root_shell = data[13];		su_attempted = data[14];		num_root = data[15];
					num_file_creations = data[16];	num_shells = data[17];		num_access_files = data[18];
					num_outbound_cmds = data[19];	is_host_login = data[20];	is_guest_login = data[21];
					count = data[22];				srv_count = data[23];		serror_rate = data[24];
					srv_serror_rate = data[25];		rerror_rate = data[26];		srv_rerror_rate = data[27];
					same_srv_rate = data[28];		diff_srv_rate = data[29];	srv_diff_host_rate = data[30];
					dst_host_count = data[31];		dst_host_srv_count = data[32];	dst_host_same_srv_rate = data[33];
					dst_host_diff_srv_rate = data[34]; 	dst_host_same_src_port_rate = data[35]; 	dst_host_srv_diff_host_rate = data[36];
					dst_host_serror_rate = data[37];	dst_host_srv_serror_rate = data[38];		dst_host_rerror_rate = data[39];
					host_srv_rerror_rate = data[40];    attack_type = data[41]; last_col = data[42];
					
					System.out
							.println(duration + " " + protocol_type + " "									+ service + " " + flag + " " + src_bytes
									+ " " + dst_bytes + " " + land + ""									+ wrong_fragment + " " + urgent + " " + hot
									+ " " + num_failed_logins + " " + logged_in									+ " " + num_compromised + " " + root_shell
									+ " " + su_attempted + " " + num_root + " "									+ num_file_creations + " " + num_shells
									+ " " + num_access_files + " "									+ num_outbound_cmds + " " + is_host_login
									+ is_guest_login + " " + count + " "									+ srv_count + " " + serror_rate + " "
									+ srv_serror_rate + " " + rerror_rate + " "									+ srv_rerror_rate + " " + same_srv_rate
									+ " " + diff_srv_rate + " "									+ srv_diff_host_rate + " " + dst_host_count
									+ " " + dst_host_srv_count + " "									+ dst_host_same_srv_rate + " "
									+ dst_host_diff_srv_rate + " "									+ dst_host_same_src_port_rate + " "
									+ dst_host_srv_diff_host_rate + " "									+ dst_host_serror_rate + " "
									+ dst_host_srv_serror_rate + " "									+ dst_host_rerror_rate + " "
									+ host_srv_rerror_rate + " "									+ attack_type + " " + last_col);

					String qurey = "INSERT INTO `nsl_kdd`(`id`, `duration`, `protocol_type`, `service`, `flag`, `src_bytes`, `dst_bytes`, `land`,`wrong_fragment`, `urgent`, `hot`, `num_failed_logins`, `logged_in`, `num_compromised`, `root_shell`, `su_attempted`, `num_root`, `num_file_creations`, `num_shells`, `num_access_files`, `num_outbound_cmds`, `is_host_login`, `is_guest_login`, `count`, `srv_count`, `serror_rate`, `srv_serror_rate`, `rerror_rate`, `srv_rerror_rate`, `same_srv_rate`, `diff_srv_rate`, `srv_diff_host_rate`, `dst_host_count`, `dst_host_srv_count`, `dst_host_same_srv_rate`, `dst_host_diff_srv_rate`, `dst_host_same_src_port_rate`, `dst_host_srv_diff_host_rate`, `dst_host_serror_rate`, `dst_host_srv_serror_rate`, `dst_host_rerror_rate`, `_host_srv_rerror_rate`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10],[value-11],[value-12],[value-13],[value-14],[value-15],[value-16],[value-17],[value-18],[value-19],[value-20],[value-21],[value-22],[value-23],[value-24],[value-25],[value-26],[value-27],[value-28],[value-29],[value-30],[value-31],[value-32],[value-33],[value-34],[value-35],[value-36],[value-37],[value-38],[value-39],[value-40],[value-41],[value-42])";

					try {
						Connection con = DbConnection.getConnection();
//						PreparedStatement ps = con
//								.prepareStatement("INSERT INTO `nsl_kdd`(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`, `u`, `v`, `w`, `x`, `y`, `z`, `aa`, `bb`, `cc`, `dd`, `ee`, `ff`, `gg`, `hh`, `ii`, `jj`, `kk`, `ll`, `mm`, `nn`, `oo`, `pp`, `qq`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						PreparedStatement ps = con
								.prepareStatement("INSERT INTO `nsl_kdd_3000`(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`, `u`, `v`, `w`, `x`, `y`, `z`, `aa`, `bb`, `cc`, `dd`, `ee`, `ff`, `gg`, `hh`, `ii`, `jj`, `kk`, `ll`, `mm`, `nn`, `oo`, `pp`, `qq`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

					
						ps.setString(1, duration);
						ps.setString(2, protocol_type);
						ps.setString(3, service);
						ps.setString(4, flag);
						ps.setString(5, src_bytes);
						ps.setString(6, dst_bytes);
						ps.setString(7, land);
						ps.setString(8, wrong_fragment);
						ps.setString(9, urgent);
						ps.setString(10, hot);
						ps.setString(11, num_failed_logins);
						ps.setString(12, logged_in);
						ps.setString(13, num_compromised);
						ps.setString(14, root_shell);
						ps.setString(15, su_attempted);
						ps.setString(16, num_root);
						ps.setString(17, num_file_creations);
						ps.setString(18, num_shells);
						ps.setString(19, num_access_files);
						ps.setString(20, num_outbound_cmds);
						ps.setString(21, is_host_login);
						ps.setString(22, is_guest_login);
						ps.setString(23, count);
						ps.setString(24, srv_count);
						ps.setString(25, serror_rate);
						ps.setString(26, srv_serror_rate);
						ps.setString(27, rerror_rate);
						ps.setString(28, srv_rerror_rate);
						ps.setString(29, same_srv_rate);
						ps.setString(30, diff_srv_rate);
						ps.setString(31, srv_diff_host_rate);

						ps.setString(32, dst_host_count);
						ps.setString(33, dst_host_srv_count);
						ps.setString(34, dst_host_same_srv_rate);
						ps.setString(35, dst_host_diff_srv_rate);
						ps.setString(36, dst_host_same_src_port_rate);

						ps.setString(37, dst_host_srv_diff_host_rate);
						ps.setString(38, dst_host_serror_rate);
						ps.setString(39, dst_host_srv_serror_rate);
						ps.setString(40, dst_host_rerror_rate);
						ps.setString(41, host_srv_rerror_rate);
						ps.setString(42, attack_type);
						ps.setString(43, last_col);
				//		ResultSet rs = ps.executeQuery();
						int rs = ps.executeUpdate();
						
						con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}

					// System.out.println("kk : "+kk);
				}

				System.out.println("total : " + total);
				response.sendRedirect("adminhome.jsp");
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				if (br != null) {
					try {
						br.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}

			// return "done";
		}
		System.out.println("in servlet");
		// ReadXLS.readxls();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
