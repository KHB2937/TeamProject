package org.example;

import javax.persistence.*;

@Entity
@Table(name = "Dogs")
public class Dog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Did;

    @Column(name = "dogname")
    private String dogname;
    @Column(name = "breed")
    private String breed;

    @Enumerated(EnumType.STRING) // Enum 데이터 타입을 STRING으로 설정
    private Sex sex;

    @Column(name = "age")
    private int age;

    @Enumerated(EnumType.STRING) // Enum 데이터 타입을 STRING으로 설정
    private Size size;

    public Dog(){}
    public Dog(String dogname, String breed, Sex sex, Size size, int age) {
        this.dogname = dogname;
        this.breed = breed;
        this.sex = sex;
        this.age = age;
        this.size = size;
    }


}