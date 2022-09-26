package com.class101project.modules.order;

public class Order {

	private String seq;
	private String name;
	private String id;
	private Integer price;
	private Integer priceDiscount;
	private Integer couponDiscount;
	private Integer finalPrice;
	private Integer pay;
	private Integer member_seq;
	private Integer classProduct_seq;
	private Integer transport_seq;
	private String orderDate;
	private String email;
	private String address;
	private String addressDetail;
	private Integer zipcode;
	private Integer delNY;
	private String phone;
	private Integer request;
	
	
	public Integer getRequest() {
		return request;
	}
	public void setRequest(Integer request) {
		this.request = request;
	}
	public String getAddressDetail() {
		return addressDetail;
	}
	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}
	public Integer getZipcode() {
		return zipcode;
	}
	public void setZipcode(Integer zipcode) {
		this.zipcode = zipcode;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getDelNY() {
		return delNY;
	}
	public void setDelNY(Integer delNY) {
		this.delNY = delNY;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getPriceDiscount() {
		return priceDiscount;
	}
	public void setPriceDiscount(Integer priceDiscount) {
		this.priceDiscount = priceDiscount;
	}
	public Integer getCouponDiscount() {
		return couponDiscount;
	}
	public void setCouponDiscount(Integer couponDiscount) {
		this.couponDiscount = couponDiscount;
	}
	public Integer getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(Integer finalPrice) {
		this.finalPrice = finalPrice;
	}
	public Integer getPay() {
		return pay;
	}
	public void setPay(Integer pay) {
		this.pay = pay;
	}
	public Integer getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(Integer member_seq) {
		this.member_seq = member_seq;
	}
	public Integer getClassProduct_seq() {
		return classProduct_seq;
	}
	public void setClassProduct_seq(Integer classProduct_seq) {
		this.classProduct_seq = classProduct_seq;
	}
	public Integer getTransport_seq() {
		return transport_seq;
	}
	public void setTransport_seq(Integer transport_seq) {
		this.transport_seq = transport_seq;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
