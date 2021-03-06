package com.ecnu.car_rent.model;

public class User {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.user_id
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.isadmin
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    private Integer isadmin;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.user_name
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    private String userName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.password
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    private String password;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.telephone
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    private String telephone;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.gender
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    private Integer gender;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public User(Integer userId, Integer isadmin, String userName, String password, String telephone, Integer gender) {
        this.userId = userId;
        this.isadmin = isadmin;
        this.userName = userName;
        this.password = password;
        this.telephone = telephone;
        this.gender = gender;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public User() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.user_id
     *
     * @return the value of user.user_id
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.user_id
     *
     * @param userId the value for user.user_id
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.isadmin
     *
     * @return the value of user.isadmin
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public Integer getIsadmin() {
        return isadmin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.isadmin
     *
     * @param isadmin the value for user.isadmin
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public void setIsadmin(Integer isadmin) {
        this.isadmin = isadmin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.user_name
     *
     * @return the value of user.user_name
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public String getUserName() {
        return userName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.user_name
     *
     * @param userName the value for user.user_name
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.password
     *
     * @return the value of user.password
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.password
     *
     * @param password the value for user.password
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.telephone
     *
     * @return the value of user.telephone
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public String getTelephone() {
        return telephone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.telephone
     *
     * @param telephone the value for user.telephone
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.gender
     *
     * @return the value of user.gender
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public Integer getGender() {
        return gender;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.gender
     *
     * @param gender the value for user.gender
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    public void setGender(Integer gender) {
        this.gender = gender;
    }
}