/**
 * Licensee: joao(University of Minho)
 * License Type: Academic
 */
import org.orm.*;
public class CreateGGDatabaseSchema {
	public static void main(String[] args) {
		try {
			ORMDatabaseInitiator.createSchema(GGPersistentManager.instance());
			GGPersistentManager.instance().disposePersistentManager();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
