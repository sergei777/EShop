package org.tulybz.entities;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Sergei on 20.08.2016.
 */
@Entity
@Table(name = "order")
public class OrderEntity {
    @Id
    @Column(name = "id")
    private int id;

    @Basic
    @Column(name = "payment_type")
    private String paymentType;

    @Basic
    @Column(name = "delivery_type")
    private String deliveryType;

    @Basic
    @Column(name = "payment_status")
    private String paymentStatus;

    @Basic
    @Column(name = "order_status")
    private String orderStatus;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id")
    private ClientAddressEntity clientAddress;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private UserEntity user;

    @ManyToMany
    @JoinTable(name = "OrderHasProductEntity",
            joinColumns = @JoinColumn(name = "order_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "product_id", referencedColumnName = "id"))
            private List<ProductEntity> products;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getDeliveryType() {
        return deliveryType;
    }

    public void setDeliveryType(String deliveryType) {
        this.deliveryType = deliveryType;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public List<ProductEntity> getProducts() {
        return products;
    }

    public void setProducts(List<ProductEntity> products) {
        this.products = products;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

    public ClientAddressEntity getClientAddress() {
        return clientAddress;
    }

    public void setClientAddress(ClientAddressEntity clientAddress) {
        this.clientAddress = clientAddress;
    }

}
