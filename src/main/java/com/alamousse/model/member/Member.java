package com.alamousse.model.member;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.alamousse.model.BaseEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import lombok.Data;
import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.Date;


/**
 * @author alamousse
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@Data
public class Member extends BaseEntity implements UserDetails {
    @Id
    @Column(name = "uid")
    @GeneratedValue(generator = "UUID")
    private String uid;
    private String account;
    private String password;
    private Integer state;
    private String createdAt;
    private String updatedAt;
    private String  firstname;
    private String       lastname;
    private String          salt;
    private String    useremail ;
    private String        mobile;
    private String  facebook;
    private String        google;
    private String  image;
    private Date   birthday;
    private  Integer      address_id;

    private  Integer        sex;
    private  Integer  nickname;
    private  Integer       group_id;
    private  Integer  userpoint;
    private Time last_login_time;
    private String  last_login_ip;

    @Transient
    @JsonIgnore
    private String sort = "";

    @Transient
    @JsonIgnore
    private String order = "";

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    @Override
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public String getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> auths = new ArrayList<>();
        return auths;
    }

    @Override
    public String getUsername() {
        return this.account;
    }

    @Override
    public boolean isAccountNonExpired() {
        return false;
    }

    @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return false;
    }

    @Override
    public boolean isEnabled() {
        return false;
    }

}
