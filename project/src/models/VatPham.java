/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.net.IDN;
import java.sql.Time;

/**
 *
 * @author Admin
 */
public class VatPham {
    private int ID;
    private String tenVatPham;
    private int giaThanh;
    private Time thoiGianGoiMon;
 

    public VatPham() {
    }
    
    public VatPham(int ID, String tenVatPham, int giaThanh) {
        this.ID = ID;
        this.tenVatPham = tenVatPham;
        this.giaThanh = giaThanh;
    }

    public VatPham(int ID, String tenVatPham, int giaThanh, Time thoiGianGoiMon) {
        this.ID = ID;
        this.tenVatPham = tenVatPham;
        this.giaThanh = giaThanh;
      
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public void setTenVatPham(String tenVatPham) {
        this.tenVatPham = tenVatPham;
    }

    public void setGiaThanh(int giaThanh) {
        this.giaThanh = giaThanh;
    }

 
    
    public int getID() {
        return ID;
    }

    public String getTenVatPham() {
        return tenVatPham;
    }

    public int getGiaThanh() {
        return giaThanh;
    }

    
     
}
