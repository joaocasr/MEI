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
import java.util.List;
import org.hibernate.criterion.DetachedCriteria;
import org.orm.PersistentSession;
import org.orm.criteria.*;

public class GameDetachedCriteria extends AbstractORMDetachedCriteria {
	public final IntegerExpression ID;
	public final IntegerExpression plataformaId;
	public final AssociationExpression plataforma;
	public final StringExpression name;
	public final IntegerExpression year;
	public final DoubleExpression price;
	public final StringExpression description;
	
	public GameDetachedCriteria() {
		super(Game.class, GameCriteria.class);
		ID = new IntegerExpression("ID", this.getDetachedCriteria());
		plataformaId = new IntegerExpression("plataforma.ID", this.getDetachedCriteria());
		plataforma = new AssociationExpression("plataforma", this.getDetachedCriteria());
		name = new StringExpression("name", this.getDetachedCriteria());
		year = new IntegerExpression("year", this.getDetachedCriteria());
		price = new DoubleExpression("price", this.getDetachedCriteria());
		description = new StringExpression("description", this.getDetachedCriteria());
	}
	
	public GameDetachedCriteria(DetachedCriteria aDetachedCriteria) {
		super(aDetachedCriteria, GameCriteria.class);
		ID = new IntegerExpression("ID", this.getDetachedCriteria());
		plataformaId = new IntegerExpression("plataforma.ID", this.getDetachedCriteria());
		plataforma = new AssociationExpression("plataforma", this.getDetachedCriteria());
		name = new StringExpression("name", this.getDetachedCriteria());
		year = new IntegerExpression("year", this.getDetachedCriteria());
		price = new DoubleExpression("price", this.getDetachedCriteria());
		description = new StringExpression("description", this.getDetachedCriteria());
	}
	
	public PlatformDetachedCriteria createPlataformaCriteria() {
		return new PlatformDetachedCriteria(createCriteria("plataforma"));
	}
	
	public Game uniqueGame(PersistentSession session) {
		return (Game) super.createExecutableCriteria(session).uniqueResult();
	}
	
	public Game[] listGame(PersistentSession session) {
		List list = super.createExecutableCriteria(session).list();
		return (Game[]) list.toArray(new Game[list.size()]);
	}
}

