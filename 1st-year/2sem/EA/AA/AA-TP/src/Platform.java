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
public class Platform {
	public Platform() {
	}
	
	private int ID;
	
	private String name;
	
	private int year;
	
	private String description;
	
	private String manufacturer;
	
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
	
	public void setDescription(String value) {
		this.description = value;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setManufacturer(String value) {
		this.manufacturer = value;
	}
	
	public String getManufacturer() {
		return manufacturer;
	}
	
	public String toString() {
		return String.valueOf(getID());
	}
	
}
