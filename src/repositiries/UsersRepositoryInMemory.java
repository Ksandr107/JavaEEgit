package repositiries;

import models.User;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class UsersRepositoryInMemory implements UsersRepository{
    private List<User> users;

    public UsersRepositoryInMemory() {
        this.users = new ArrayList<>();
        User user1 = new User("Ksandr", "123", LocalDate.parse("1982-10-07"));
        User user2 = new User("Piranha", "124", LocalDate.parse("1988-11-01"));
        User user3 = new User("Shitik", "125", LocalDate.parse("1990-04-06"));
        User user4 = new User("Tinker", "1100", LocalDate.parse("1958-01-12"));
        User user5 = new User("Sarlak", "101258", LocalDate.parse("1999-10-15"));
        users.add(user1);
        users.add(user2);
        users.add(user3);
        users.add(user4);
        users.add(user5);
    }

    @Override
    public List<User> finedAll() {
        return this.users;
    }

    @Override
    public void save(User user) {
        users.add(user);
    }

}
