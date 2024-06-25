/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author Admin
 */
public class Ban {

    private int soBan;
    private String trangThai;

    public Ban() {
    }

    public Ban(int soBan, String trangThai) {
        this.soBan = soBan;
        this.trangThai = trangThai;
    }

    public int getSoBan() {
        return soBan;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setSoBan(int soBan) {
        this.soBan = soBan;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

}
