package mainproject.service;

import mainproject.model.User;

import java.util.List;

/**
 * Created by комп on 12.05.2016.
 */
public interface UserService {
    public void addUser(User user);
    public void updateUser(User user);
    public void removeUser(int id);
    public User getUserById(int id);
    public List<User> listUsers();

}
