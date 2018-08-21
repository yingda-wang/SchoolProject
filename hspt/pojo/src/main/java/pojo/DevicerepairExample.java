package pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class DevicerepairExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DevicerepairExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andApplytimeIsNull() {
            addCriterion("applyTime is null");
            return (Criteria) this;
        }

        public Criteria andApplytimeIsNotNull() {
            addCriterion("applyTime is not null");
            return (Criteria) this;
        }

        public Criteria andApplytimeEqualTo(Date value) {
            addCriterionForJDBCDate("applyTime =", value, "applytime");
            return (Criteria) this;
        }

        public Criteria andApplytimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("applyTime <>", value, "applytime");
            return (Criteria) this;
        }

        public Criteria andApplytimeGreaterThan(Date value) {
            addCriterionForJDBCDate("applyTime >", value, "applytime");
            return (Criteria) this;
        }

        public Criteria andApplytimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("applyTime >=", value, "applytime");
            return (Criteria) this;
        }

        public Criteria andApplytimeLessThan(Date value) {
            addCriterionForJDBCDate("applyTime <", value, "applytime");
            return (Criteria) this;
        }

        public Criteria andApplytimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("applyTime <=", value, "applytime");
            return (Criteria) this;
        }

        public Criteria andApplytimeIn(List<Date> values) {
            addCriterionForJDBCDate("applyTime in", values, "applytime");
            return (Criteria) this;
        }

        public Criteria andApplytimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("applyTime not in", values, "applytime");
            return (Criteria) this;
        }

        public Criteria andApplytimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("applyTime between", value1, value2, "applytime");
            return (Criteria) this;
        }

        public Criteria andApplytimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("applyTime not between", value1, value2, "applytime");
            return (Criteria) this;
        }

        public Criteria andApplicantIsNull() {
            addCriterion("applicant is null");
            return (Criteria) this;
        }

        public Criteria andApplicantIsNotNull() {
            addCriterion("applicant is not null");
            return (Criteria) this;
        }

        public Criteria andApplicantEqualTo(String value) {
            addCriterion("applicant =", value, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantNotEqualTo(String value) {
            addCriterion("applicant <>", value, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantGreaterThan(String value) {
            addCriterion("applicant >", value, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantGreaterThanOrEqualTo(String value) {
            addCriterion("applicant >=", value, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantLessThan(String value) {
            addCriterion("applicant <", value, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantLessThanOrEqualTo(String value) {
            addCriterion("applicant <=", value, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantLike(String value) {
            addCriterion("applicant like", value, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantNotLike(String value) {
            addCriterion("applicant not like", value, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantIn(List<String> values) {
            addCriterion("applicant in", values, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantNotIn(List<String> values) {
            addCriterion("applicant not in", values, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantBetween(String value1, String value2) {
            addCriterion("applicant between", value1, value2, "applicant");
            return (Criteria) this;
        }

        public Criteria andApplicantNotBetween(String value1, String value2) {
            addCriterion("applicant not between", value1, value2, "applicant");
            return (Criteria) this;
        }

        public Criteria andAssetcodingIsNull() {
            addCriterion("assetCoding is null");
            return (Criteria) this;
        }

        public Criteria andAssetcodingIsNotNull() {
            addCriterion("assetCoding is not null");
            return (Criteria) this;
        }

        public Criteria andAssetcodingEqualTo(String value) {
            addCriterion("assetCoding =", value, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingNotEqualTo(String value) {
            addCriterion("assetCoding <>", value, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingGreaterThan(String value) {
            addCriterion("assetCoding >", value, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingGreaterThanOrEqualTo(String value) {
            addCriterion("assetCoding >=", value, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingLessThan(String value) {
            addCriterion("assetCoding <", value, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingLessThanOrEqualTo(String value) {
            addCriterion("assetCoding <=", value, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingLike(String value) {
            addCriterion("assetCoding like", value, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingNotLike(String value) {
            addCriterion("assetCoding not like", value, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingIn(List<String> values) {
            addCriterion("assetCoding in", values, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingNotIn(List<String> values) {
            addCriterion("assetCoding not in", values, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingBetween(String value1, String value2) {
            addCriterion("assetCoding between", value1, value2, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andAssetcodingNotBetween(String value1, String value2) {
            addCriterion("assetCoding not between", value1, value2, "assetcoding");
            return (Criteria) this;
        }

        public Criteria andDevicenameIsNull() {
            addCriterion("deviceName is null");
            return (Criteria) this;
        }

        public Criteria andDevicenameIsNotNull() {
            addCriterion("deviceName is not null");
            return (Criteria) this;
        }

        public Criteria andDevicenameEqualTo(String value) {
            addCriterion("deviceName =", value, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameNotEqualTo(String value) {
            addCriterion("deviceName <>", value, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameGreaterThan(String value) {
            addCriterion("deviceName >", value, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameGreaterThanOrEqualTo(String value) {
            addCriterion("deviceName >=", value, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameLessThan(String value) {
            addCriterion("deviceName <", value, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameLessThanOrEqualTo(String value) {
            addCriterion("deviceName <=", value, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameLike(String value) {
            addCriterion("deviceName like", value, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameNotLike(String value) {
            addCriterion("deviceName not like", value, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameIn(List<String> values) {
            addCriterion("deviceName in", values, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameNotIn(List<String> values) {
            addCriterion("deviceName not in", values, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameBetween(String value1, String value2) {
            addCriterion("deviceName between", value1, value2, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicenameNotBetween(String value1, String value2) {
            addCriterion("deviceName not between", value1, value2, "devicename");
            return (Criteria) this;
        }

        public Criteria andDevicemodelIsNull() {
            addCriterion("deviceModel is null");
            return (Criteria) this;
        }

        public Criteria andDevicemodelIsNotNull() {
            addCriterion("deviceModel is not null");
            return (Criteria) this;
        }

        public Criteria andDevicemodelEqualTo(String value) {
            addCriterion("deviceModel =", value, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelNotEqualTo(String value) {
            addCriterion("deviceModel <>", value, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelGreaterThan(String value) {
            addCriterion("deviceModel >", value, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelGreaterThanOrEqualTo(String value) {
            addCriterion("deviceModel >=", value, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelLessThan(String value) {
            addCriterion("deviceModel <", value, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelLessThanOrEqualTo(String value) {
            addCriterion("deviceModel <=", value, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelLike(String value) {
            addCriterion("deviceModel like", value, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelNotLike(String value) {
            addCriterion("deviceModel not like", value, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelIn(List<String> values) {
            addCriterion("deviceModel in", values, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelNotIn(List<String> values) {
            addCriterion("deviceModel not in", values, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelBetween(String value1, String value2) {
            addCriterion("deviceModel between", value1, value2, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andDevicemodelNotBetween(String value1, String value2) {
            addCriterion("deviceModel not between", value1, value2, "devicemodel");
            return (Criteria) this;
        }

        public Criteria andRepairmanIsNull() {
            addCriterion("repairMan is null");
            return (Criteria) this;
        }

        public Criteria andRepairmanIsNotNull() {
            addCriterion("repairMan is not null");
            return (Criteria) this;
        }

        public Criteria andRepairmanEqualTo(String value) {
            addCriterion("repairMan =", value, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanNotEqualTo(String value) {
            addCriterion("repairMan <>", value, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanGreaterThan(String value) {
            addCriterion("repairMan >", value, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanGreaterThanOrEqualTo(String value) {
            addCriterion("repairMan >=", value, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanLessThan(String value) {
            addCriterion("repairMan <", value, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanLessThanOrEqualTo(String value) {
            addCriterion("repairMan <=", value, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanLike(String value) {
            addCriterion("repairMan like", value, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanNotLike(String value) {
            addCriterion("repairMan not like", value, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanIn(List<String> values) {
            addCriterion("repairMan in", values, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanNotIn(List<String> values) {
            addCriterion("repairMan not in", values, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanBetween(String value1, String value2) {
            addCriterion("repairMan between", value1, value2, "repairman");
            return (Criteria) this;
        }

        public Criteria andRepairmanNotBetween(String value1, String value2) {
            addCriterion("repairMan not between", value1, value2, "repairman");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNull() {
            addCriterion("phone is null");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNotNull() {
            addCriterion("phone is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneEqualTo(Integer value) {
            addCriterion("phone =", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotEqualTo(Integer value) {
            addCriterion("phone <>", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThan(Integer value) {
            addCriterion("phone >", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThanOrEqualTo(Integer value) {
            addCriterion("phone >=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThan(Integer value) {
            addCriterion("phone <", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThanOrEqualTo(Integer value) {
            addCriterion("phone <=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneIn(List<Integer> values) {
            addCriterion("phone in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotIn(List<Integer> values) {
            addCriterion("phone not in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneBetween(Integer value1, Integer value2) {
            addCriterion("phone between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotBetween(Integer value1, Integer value2) {
            addCriterion("phone not between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeIsNull() {
            addCriterion("warrantyTime is null");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeIsNotNull() {
            addCriterion("warrantyTime is not null");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeEqualTo(Integer value) {
            addCriterion("warrantyTime =", value, "warrantytime");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeNotEqualTo(Integer value) {
            addCriterion("warrantyTime <>", value, "warrantytime");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeGreaterThan(Integer value) {
            addCriterion("warrantyTime >", value, "warrantytime");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeGreaterThanOrEqualTo(Integer value) {
            addCriterion("warrantyTime >=", value, "warrantytime");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeLessThan(Integer value) {
            addCriterion("warrantyTime <", value, "warrantytime");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeLessThanOrEqualTo(Integer value) {
            addCriterion("warrantyTime <=", value, "warrantytime");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeIn(List<Integer> values) {
            addCriterion("warrantyTime in", values, "warrantytime");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeNotIn(List<Integer> values) {
            addCriterion("warrantyTime not in", values, "warrantytime");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeBetween(Integer value1, Integer value2) {
            addCriterion("warrantyTime between", value1, value2, "warrantytime");
            return (Criteria) this;
        }

        public Criteria andWarrantytimeNotBetween(Integer value1, Integer value2) {
            addCriterion("warrantyTime not between", value1, value2, "warrantytime");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnIsNull() {
            addCriterion("timeOfReturn is null");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnIsNotNull() {
            addCriterion("timeOfReturn is not null");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnEqualTo(Date value) {
            addCriterionForJDBCDate("timeOfReturn =", value, "timeofreturn");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnNotEqualTo(Date value) {
            addCriterionForJDBCDate("timeOfReturn <>", value, "timeofreturn");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnGreaterThan(Date value) {
            addCriterionForJDBCDate("timeOfReturn >", value, "timeofreturn");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("timeOfReturn >=", value, "timeofreturn");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnLessThan(Date value) {
            addCriterionForJDBCDate("timeOfReturn <", value, "timeofreturn");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("timeOfReturn <=", value, "timeofreturn");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnIn(List<Date> values) {
            addCriterionForJDBCDate("timeOfReturn in", values, "timeofreturn");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnNotIn(List<Date> values) {
            addCriterionForJDBCDate("timeOfReturn not in", values, "timeofreturn");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("timeOfReturn between", value1, value2, "timeofreturn");
            return (Criteria) this;
        }

        public Criteria andTimeofreturnNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("timeOfReturn not between", value1, value2, "timeofreturn");
            return (Criteria) this;
        }

        public Criteria andReturnstatusIsNull() {
            addCriterion("returnStatus is null");
            return (Criteria) this;
        }

        public Criteria andReturnstatusIsNotNull() {
            addCriterion("returnStatus is not null");
            return (Criteria) this;
        }

        public Criteria andReturnstatusEqualTo(String value) {
            addCriterion("returnStatus =", value, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusNotEqualTo(String value) {
            addCriterion("returnStatus <>", value, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusGreaterThan(String value) {
            addCriterion("returnStatus >", value, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusGreaterThanOrEqualTo(String value) {
            addCriterion("returnStatus >=", value, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusLessThan(String value) {
            addCriterion("returnStatus <", value, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusLessThanOrEqualTo(String value) {
            addCriterion("returnStatus <=", value, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusLike(String value) {
            addCriterion("returnStatus like", value, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusNotLike(String value) {
            addCriterion("returnStatus not like", value, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusIn(List<String> values) {
            addCriterion("returnStatus in", values, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusNotIn(List<String> values) {
            addCriterion("returnStatus not in", values, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusBetween(String value1, String value2) {
            addCriterion("returnStatus between", value1, value2, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andReturnstatusNotBetween(String value1, String value2) {
            addCriterion("returnStatus not between", value1, value2, "returnstatus");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNull() {
            addCriterion("Remarks is null");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNotNull() {
            addCriterion("Remarks is not null");
            return (Criteria) this;
        }

        public Criteria andRemarksEqualTo(String value) {
            addCriterion("Remarks =", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotEqualTo(String value) {
            addCriterion("Remarks <>", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThan(String value) {
            addCriterion("Remarks >", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThanOrEqualTo(String value) {
            addCriterion("Remarks >=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThan(String value) {
            addCriterion("Remarks <", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThanOrEqualTo(String value) {
            addCriterion("Remarks <=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLike(String value) {
            addCriterion("Remarks like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotLike(String value) {
            addCriterion("Remarks not like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksIn(List<String> values) {
            addCriterion("Remarks in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotIn(List<String> values) {
            addCriterion("Remarks not in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksBetween(String value1, String value2) {
            addCriterion("Remarks between", value1, value2, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotBetween(String value1, String value2) {
            addCriterion("Remarks not between", value1, value2, "remarks");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}