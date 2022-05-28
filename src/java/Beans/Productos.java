package Beans;

import java.time.OffsetDateTime;

public class Productos {

    private long id;
    private String titulo;
    private long idCategoria;
    private long despachoDomicilio;
    private long despachoTienda;
    private String descripcion;
    private String precio;
    private String tallas;
    private String imagenes;
    private String estado;
    private OffsetDateTime createdAt;
    private OffsetDateTime updatedAt;
    private String slug;
    private String colores;
    private String tags;
    private String descripcionCompleta;

    public Productos(long id){
        this.id = id;
    }
    public long getID() {
        return id;
    }

    public void setID(long value) {
        this.id = value;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String value) {
        this.titulo = value;
    }

    public long getIDCategoria() {
        return idCategoria;
    }

    public void setIDCategoria(long value) {
        this.idCategoria = value;
    }

    public long getDespachoDomicilio() {
        return despachoDomicilio;
    }

    public void setDespachoDomicilio(long value) {
        this.despachoDomicilio = value;
    }

    public long getDespachoTienda() {
        return despachoTienda;
    }

    public void setDespachoTienda(long value) {
        this.despachoTienda = value;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String value) {
        this.descripcion = value;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String value) {
        this.precio = value;
    }

    public String getTallas() {
        return tallas;
    }

    public void setTallas(String value) {
        this.tallas = value;
    }

    public String getImagenes() {
        return imagenes;
    }

    public void setImagenes(String value) {
        this.imagenes = value;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String value) {
        this.estado = value;
    }

    public OffsetDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(OffsetDateTime value) {
        this.createdAt = value;
    }

    public OffsetDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(OffsetDateTime value) {
        this.updatedAt = value;
    }

    public String getSlug() {
        return slug;
    }

    public void setSlug(String value) {
        this.slug = value;
    }

    public String getColores() {
        return colores;
    }

    public void setColores(String value) {
        this.colores = value;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String value) {
        this.tags = value;
    }

    public String getDescripcionCompleta() {
        return descripcionCompleta;
    }

    public void setDescripcionCompleta(String value) {
        this.descripcionCompleta = value;
    }
}
