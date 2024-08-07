/**
 * Licensee: joao(University of Minho)
 * License Type: Academic
 */
import org.orm.*;
public class CreateGGData {
	public void createTestData() throws PersistentException {
		PersistentTransaction t = GGPersistentManager.instance().getSession().beginTransaction();
		try {
			User user = UserDAO.createUser();
			// TODO Initialize the properties of the persistent object here, the following properties must be initialized before saving : games
			UserDAO.save(user);
			Game game = GameDAO.createGame();
			// TODO Initialize the properties of the persistent object here, the following properties must be initialized before saving : price, year, plataforma
			GameDAO.save(game);
			Platform platform = PlatformDAO.createPlatform();
			// TODO Initialize the properties of the persistent object here, the following properties must be initialized before saving : year
			PlatformDAO.save(platform);
			t.commit();
		}
		catch (Exception e) {
			t.rollback();
		}
		
	}
	
	public static void main(String[] args) {
		try {
			CreateGGData createGGData = new CreateGGData();
			try {
				createGGData.createTestData();
			}
			finally {
				GGPersistentManager.instance().disposePersistentManager();
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
