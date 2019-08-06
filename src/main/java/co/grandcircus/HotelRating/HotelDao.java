package co.grandcircus.HotelRating;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;


import org.springframework.stereotype.Repository;



@Repository

@Transactional
public class HotelDao {

	@PersistenceContext
    EntityManager em;
	public List<HotelEntity> findByCity(String city) {
			return em.createQuery("From HotelEntity WHERE city = :city order by pricePerNight", HotelEntity.class)
				.setParameter("city", city)
				.getResultList();

	}

	public HotelEntity findByName(String name) {
		return em.createQuery("From HotelEntity WHERE name = :name", HotelEntity.class)
			.setParameter("name", name)
			.getSingleResult();

}
	
	






}//end class
