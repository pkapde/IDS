package Genetic;





import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * 
 * @author PRAMOD PAWAR
 *
 *
 * An implementation of knn.
 * Uses Euclidean distance weighted by 1/distance
 * 
 * Main method to classify if entry is male or female based on:
 * Height, weight
 */
public class NearestNeighbour{
	
	public NearestNeighbour() {
		// TODO Auto-generated constructor stub
	}
	public static void main(String[] args){
		ArrayList<NearestNeighbour.DataEntry> data = new ArrayList<NearestNeighbour.DataEntry>();
		//data.add(new DataEntry(new double[]{175,80}, "Male"));
		
		/*Connection con = ConnectionProvider.getConn();
		try {
			PreparedStatement ps = con.prepareStatement("SELECT * FROM `datainfo`");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				System.out.println("Pramod test...");
				String age1 = rs.getString("age");
				double age = Double.parseDouble(age1);
				String sex1 = rs.getString("sex");
				double sex = Double.parseDouble(sex1);
				String trestbps1 = rs.getString("trestbps");
				double trestbps = Double.parseDouble(trestbps1);
						
				
				String cp = rs.getString("cp");
				
				data.add(new DataEntry(new double[]{age,sex,trestbps}, cp));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
		
		
		NearestNeighbour nn = new NearestNeighbour(data, 4); //4 neighbours
		//System.out.println("Classified as: "+nn.classify(new DataEntry(new double[]{54, 1, 150},"Ignore")));
	}
	
	
	private int k;
	private ArrayList<Object> classes;
	private ArrayList<DataEntry> dataSet;
	/**
	 * 
	 * @param dataSet The set
	 * @param k The number of neighbours to use
	 */
	public NearestNeighbour(ArrayList<DataEntry> dataSet, int k){
		this.classes = new ArrayList<Object>();
		this.k = k;
		this.dataSet = dataSet;
		
		//Load different classes
		for(DataEntry entry : dataSet){
			if(!classes.contains(entry.getY())) classes.add(entry.getY());
		}
	}
	
	private DataEntry[] getNearestNeighbourType(DataEntry x){
		DataEntry[] retur = new DataEntry[this.k];
		double fjernest = Double.MIN_VALUE;
		int index = 0;
		for(DataEntry tse : this.dataSet){
			double distance = distance(x,tse);
			if(retur[retur.length-1] == null){ //Hvis ikke fyldt
				int j = 0;
				while(j < retur.length){
					if(retur[j] == null){
						retur[j] = tse; break;
					}
					j++;
				}
				if(distance > fjernest){
					index = j;
					fjernest = distance;
				}
			}
			else{
				if(distance < fjernest){
					retur[index] = tse;
					double f = 0.0;
					int ind = 0;
					for(int j = 0; j < retur.length; j++){
						double dt = distance(retur[j],x);
						if(dt > f){
							f = dt;
							ind = j;
						}
					}
					fjernest = f;
					index = ind;
				}
			}
		}
		return retur;
	}
	
	private static double convertDistance(double d){
		return 1.0/d;
	}

	/**
	 * Computes Euclidean distance
	 * @param a From
	 * @param b To
	 * @return Distance 
	 */
	public static double distance(DataEntry a, DataEntry b){
		double distance = 0.0;
		int length = a.getX().length;
		for(int i = 0; i < length; i++){
			double t = a.getX()[i]-b.getX()[i];
			distance = distance+t*t;
			
			System.out.println("Distance:"+distance);
		}
		return Math.sqrt(distance);
	}
	/**
	 * 
	 * @param e Entry to be classifies
	 * @return The class of the most probable class
	 */
	public Object classify(DataEntry e){
		HashMap<Object,Double> classcount = new HashMap<Object,Double>();
		DataEntry[] de = this.getNearestNeighbourType(e);
		for(int i = 0; i < de.length; i++){
			double distance = NearestNeighbour.convertDistance(NearestNeighbour.distance(de[i], e));
			if(!classcount.containsKey(de[i].getY())){
				classcount.put(de[i].getY(), distance);
			}
			else{
				classcount.put(de[i].getY(), classcount.get(de[i].getY())+distance);
			}
		}
		//Find right choice
		Object o = null;
		double max = 0;
		for(Object ob : classcount.keySet()){
			if(classcount.get(ob) > max){
				max = classcount.get(ob);
				o = ob;
			}
		}
		
		return o;
	}

public static class DataEntry{
	private double[] x;
	private Object y;
	
	public DataEntry(double[] x, Object y){
		this.x = x;
		this.y = y;
	}
	
		public double[] getX(){
			return this.x;
		}
	
		public Object getY(){
			return this.y;
		}
	}
}