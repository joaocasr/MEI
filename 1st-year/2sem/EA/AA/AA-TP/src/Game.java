/**
 * "Visual Paradigm: DO NOT MODIFY THIS FILE!"
 * 
 * This is an automatic generated file. It will be regenerated every time 
 * you generate persistence class.
 * 
 * Modifying its content may cause the program not work, or your work may lost.
 */

/**
 * Licensee: joao(University of Minho)
 * License Type: Academic
 */
public class Game {
	public Game() {
	}
	
	private void this_setOwner(Object owner, int key) {
		if (key == ORMConstants.KEY_GAME_PLATAFORMA) {
			this.plataforma = (Platform) owner;
		}
	}
	
	org.orm.util.ORMAdapter _ormAdapter = new org.orm.util.AbstractORMAdapter() {
		public void setOwner(Object owner, int key) {
			this_setOwner(owner, key);
		}
		
	};
	
	private int ID;
	
	private Platform plataforma;
	
	private String name;
	
	private int year;
	
	private double price;
	
	private String description;
	
	private void setID(int value) {
		this.ID = value;
	}
	
	public int getID() {
		return ID;
	}
	
	public int getORMID() {
		return getID();
	}
	
	public void setName(String value) {
		this.name = value;
	}
	
	public String getName() {
		return name;
	}
	
	public void setYear(int value) {
		this.year = value;
	}
	
	public int getYear() {
		return year;
	}
	
	public void setPrice(double value) {
		this.price = value;
	}
	
	public double getPrice() {
		return price;
	}
	
	public void setDescription(String value) {
		this.description = value;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setPlataforma(Platform value) {
		this.plataforma = value;
	}
	
	public Platform getPlataforma() {
		return plataforma;
	}
	
	public String toString() {
		return "NOME:"+this.name+"\n"+
				"PLATAFORMA:"+this.plataforma.toString()+"\n";
				}
	
}
