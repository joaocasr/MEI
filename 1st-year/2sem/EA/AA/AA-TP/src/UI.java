import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.orm.PersistentException;
import org.orm.PersistentTransaction;

public class UI {
    public void test1() throws PersistentException{
    	PersistentTransaction t = GGPersistentManager.instance().getSession().beginTransaction();
            User u = new User();
            u.setName("johnny");
            u.setEmail("joaoppc2002@gmail.com");
            u.setPassword("joaopass");

            Game g = new Game();
            g.setName("thegame");
            g.setDescription("this is a funny game");
            g.setPrice(34.2);
            g.setYear(2023);
            
            Platform p = new Platform();
            p.setDescription("this is a platform");
            p.setName("xbox");
            p.setManufacturer("the man");
            p.setYear(2012);
            
            g.setPlataforma(p);

            HashSet<Game> allgames = new HashSet<>();
            allgames.add(g);
            u.setORM_Games(allgames);

            UserDAO.save(u);
            GameDAO.save(g);
            PlatformDAO.save(p);
            t.commit();

        try{

        }catch(Exception e){
            t.rollback();
        }
    }

    public void listGames() throws PersistentException{
        PersistentTransaction t = GGPersistentManager.instance().getSession().beginTransaction();
        try{
            
            Game [] games = GameDAO.listGameByQuery("","name");
            for(Game g : games ){
                System.out.println(g);
            }
            t.commit();
        }catch(Exception e){

        }
    }

    public static void main(String[] args) {
		try {
			UI ui = new UI();
			try {
				ui.test1();
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
