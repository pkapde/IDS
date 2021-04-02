package read.dataset;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class ReadXLS {

	public static void main(String[] args) {

		ReadXLS rd = new ReadXLS();
		//rd.readxls("kiran");
		
}
	
	
public static void readxls()
	{
		String csvFile = "C:/KDDTest.csv";
		BufferedReader br = null;
		String line = "";
		String cvsSplitBy = ",";
		String id;
		String duration;
		String protocol_type;
		String service; 
		String flag;
		String src_bytes;
		String dst_bytes;
		String land;
		String wrong_fragment, urgent,hot,num_failed_logins,logged_in,num_compromised,root_shell;
		String su_attempted,num_root, num_file_creations, num_shells, num_access_files, num_outbound_cmds, is_host_login;
		String is_guest_login;
		String count,srv_count, serror_rate, srv_serror_rate, rerror_rate, srv_rerror_rate, same_srv_rate;
		String diff_srv_rate, srv_diff_host_rate, dst_host_count, dst_host_srv_count, dst_host_same_srv_rate; 
		String dst_host_diff_srv_rate;
		String dst_host_same_src_port_rate; 
		String dst_host_srv_diff_host_rate;
		String dst_host_serror_rate;
		String dst_host_srv_serror_rate;
		String dst_host_rerror_rate;
		String host_srv_rerror_rate;
		int total= 0;
		try {

			br = new BufferedReader(new FileReader(csvFile));
			while ((line = br.readLine()) != null) {

				total++; // use comma as separator
				String[] country = line.split(cvsSplitBy);

				System.out.println("Country [code= " + country[0] + " , name="
						+ country[1] + "], name=" + country[2] + "], name="
						+ country[3] + "]");
				String qurey = "INSERT INTO `nsl_kdd`(`id`, `duration`, `protocol_type`, `service`, `flag`, `src_bytes`, `dst_bytes`, `land`,`wrong_fragment`, `urgent`, `hot`, `num_failed_logins`, `logged_in`, `num_compromised`, `root_shell`, `su_attempted`, `num_root`, `num_file_creations`, `num_shells`, `num_access_files`, `num_outbound_cmds`, `is_host_login`, `is_guest_login`, `count`, `srv_count`, `serror_rate`, `srv_serror_rate`, `rerror_rate`, `srv_rerror_rate`, `same_srv_rate`, `diff_srv_rate`, `srv_diff_host_rate`, `dst_host_count`, `dst_host_srv_count`, `dst_host_same_srv_rate`, `dst_host_diff_srv_rate`, `dst_host_same_src_port_rate`, `dst_host_srv_diff_host_rate`, `dst_host_serror_rate`, `dst_host_srv_serror_rate`, `dst_host_rerror_rate`, `_host_srv_rerror_rate`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10],[value-11],[value-12],[value-13],[value-14],[value-15],[value-16],[value-17],[value-18],[value-19],[value-20],[value-21],[value-22],[value-23],[value-24],[value-25],[value-26],[value-27],[value-28],[value-29],[value-30],[value-31],[value-32],[value-33],[value-34],[value-35],[value-36],[value-37],[value-38],[value-39],[value-40],[value-41],[value-42])";
			}
			System.out.println("total : " + total);
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

//	return "done";
	}
}