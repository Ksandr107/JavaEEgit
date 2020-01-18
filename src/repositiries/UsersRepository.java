package repositiries;

import models.User;

import java.util.List;

public interface UsersRepository {
    List<User> finedAll();
    void save (User user);
}
