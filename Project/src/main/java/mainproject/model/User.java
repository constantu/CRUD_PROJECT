package mainproject.model;

import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "user", schema = "test")

/**
 * Created by комп on 12.05.2016.
 */
public class User {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name", nullable = false, length = 25)
    private String name;

    @Column(name = "age", nullable = true)
    private Integer age;

    @Column(name = "isAdmin", nullable = false)
    private boolean isAdmin;

    @Column(name = "createDate", insertable = false, updatable = false)
    private Date createDate;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean admin) {
        isAdmin = admin;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }


}
