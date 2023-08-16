package org.example;

import javax.persistence.*;

@Entity
@Table(name = "Boards")
public class Board {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private int bId;

        @Column(name = "title")
        private String title;
        @Column(name = "content")
        private String content;

    public Board() {}
    public Board(String title, String content) {
            this.title = title;
            this.content = content;
        }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getbId() {
        return bId;
    }

    public void setbId(int bid) {
        this.bId = bid;
    }
}