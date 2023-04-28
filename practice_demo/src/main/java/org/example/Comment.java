package org.example;

import javax.persistence.*;

@Entity
@Table(name = "Comments")
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "content")
    private String content;

    @Column(name = "author_name")
    private String author_name;

    @Column(name = "board_id")
    private int board_id;

    public Comment() {
    }

    public Comment(String author_name, String content) {
        this.content = content;
        this.author_name = author_name;
    }

    public Comment(String content, String author_name, int board_id) {
        this.content = content;
        this.author_name = author_name;
        this.board_id = board_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor_name() {
        return author_name;
    }

    public void setAuthor_name(String author_name) {
        this.author_name = author_name;
    }

    public int getBoard_id() {
        return board_id;
    }

    public void setBoard_id(int board_id) {
        this.board_id = board_id;
    }
}
