package rest.services;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import rest.domain.User;


@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);


    public User save(User user);
}
