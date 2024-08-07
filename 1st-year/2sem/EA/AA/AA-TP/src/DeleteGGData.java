/**
 * Licensee: joao(University of Minho)
 * License Type: Academic
 */
import org.orm.*;
public class DeleteGGData {
	public void deleteTestData() throws PersistentException {
		PersistentTransaction t = GGPersistentManager.instance().getSession().beginTransaction();
		try {
			User user = UserDAO.loadUserByQuery(null, null);
			// Delete the persistent object
			UserDAO.delete(user);
			Game game = GameDAO.loadGameByQuery(null, null);
			// Delete the persistent object
			GameDAO.delete(game);
			Platform platform = PlatformDAO.loadPlatformByQuery(null, null);
			// Delete the persistent object
			PlatformDAO.delete(platform);
			t.commit();
		}
		catch (Exception e) {
			t.rollback();
		}
		
	}
	
	public static void main(String[] args) {
		try {
			DeleteGGData deleteGGData = new DeleteGGData();
			try {
				deleteGGData.deleteTestData();
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
