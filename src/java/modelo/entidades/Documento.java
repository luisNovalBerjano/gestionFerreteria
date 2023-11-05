/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.entidades;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Cacheable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author luisn
 */
@Entity
@Table(name = "documento")
@Cacheable(false)

public class Documento implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_documento")
    private Long id_documento;
    
    @OneToOne
     @JoinColumn(name="id_venta")
    private Venta id_venta;
     
     @Column(name="es_nota_entrega")
    private Boolean es_nota_entrega;
     
     @Column(name="es_albaran")
    private Boolean es_albaran;
     
     @Column(name="es_ticket")
    private Boolean es_ticket;
     
     @Column(name="es_factura")
    private Boolean es_factura;
    
   @Column(name="fecha")
    private Date fecha;
    
    @Column(name="serie_año")
    private String serie_año;
    
    @Column(name="iva")
    private Integer iva;
    
    @Column(name="numero")
    private Integer numero;
    
    @Column(name="precio_total")
    private float precio_total;

    public Long getId_documento() {
        return id_documento;
    }

    public void setId_documento(Long id_documento) {
        this.id_documento = id_documento;
    }

    public Venta getId_ventae() {
        return id_venta;
    }

    public void setId_ventae(Venta id_ventae) {
        this.id_venta = id_ventae;
    }

    public Boolean getEs_nota_entrega() {
        return es_nota_entrega;
    }

    public void setEs_nota_entrega(Boolean es_nota_entrega) {
        this.es_nota_entrega = es_nota_entrega;
    }

    public Boolean getEs_albaran() {
        return es_albaran;
    }

    public void setEs_albaran(Boolean es_albaran) {
        this.es_albaran = es_albaran;
    }

    public Boolean getEs_ticket() {
        return es_ticket;
    }

    public void setEs_ticket(Boolean es_ticket) {
        this.es_ticket = es_ticket;
    }

    public Boolean getEs_factura() {
        return es_factura;
    }

    public void setEs_factura(Boolean es_factura) {
        this.es_factura = es_factura;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getSerie_año() {
        return serie_año;
    }

    public void setSerie_año(String serie_año) {
        this.serie_año = serie_año;
    }

    public Integer getIva() {
        return iva;
    }

    public void setIva(Integer iva) {
        this.iva = iva;
    }

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public float getPrecio_total() {
        return precio_total;
    }

    public void setPrecio_total(float precio_total) {
        this.precio_total = precio_total;
    }

    @Override
    public String toString() {
        return "documento{" + "id_documento=" + id_documento + ", id_venta=" + id_venta + ", es_nota_entrega=" + es_nota_entrega + ", es_albaran=" + es_albaran + ", es_ticket=" + es_ticket + ", es_factura=" + es_factura + ", fecha=" + fecha + ", serie_a\u00f1o=" + serie_año + ", iva=" + iva + ", numero=" + numero + ", precio_total=" + precio_total + '}';
    }
   
    
}