package org.example;

import javax.persistence.*;

@Entity
@Table(name = "Members")
public class Member {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private int id;

        @Column(name = "username")
        private String username;

        @Column(name = "password")
        private String password;

        @Column(name = "email")
        private String email;

        public Member(){}

        public Member(String email, String password) {
            this.email = email;
            this.password = password;
        }
        public Member(String username, String email, String password) {
            this.username = username;
            this.email = email;
            this.password = password;
        }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}