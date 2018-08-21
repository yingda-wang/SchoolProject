package pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class AssetstransferstatisticsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AssetstransferstatisticsExample() {
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

        public Criteria andDevicecodingIsNull() {
            addCriterion("deviceCoding is null");
            return (Criteria) this;
        }

        public Criteria andDevicecodingIsNotNull() {
            addCriterion("deviceCoding is not null");
            return (Criteria) this;
        }

        public Criteria andDevicecodingEqualTo(String value) {
            addCriterion("deviceCoding =", value, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingNotEqualTo(String value) {
            addCriterion("deviceCoding <>", value, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingGreaterThan(String value) {
            addCriterion("deviceCoding >", value, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingGreaterThanOrEqualTo(String value) {
            addCriterion("deviceCoding >=", value, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingLessThan(String value) {
            addCriterion("deviceCoding <", value, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingLessThanOrEqualTo(String value) {
            addCriterion("deviceCoding <=", value, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingLike(String value) {
            addCriterion("deviceCoding like", value, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingNotLike(String value) {
            addCriterion("deviceCoding not like", value, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingIn(List<String> values) {
            addCriterion("deviceCoding in", values, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingNotIn(List<String> values) {
            addCriterion("deviceCoding not in", values, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingBetween(String value1, String value2) {
            addCriterion("deviceCoding between", value1, value2, "devicecoding");
            return (Criteria) this;
        }

        public Criteria andDevicecodingNotBetween(String value1, String value2) {
            addCriterion("deviceCoding not between", value1, value2, "devicecoding");
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

        public Criteria andSpecificationIsNull() {
            addCriterion("Specification is null");
            return (Criteria) this;
        }

        public Criteria andSpecificationIsNotNull() {
            addCriterion("Specification is not null");
            return (Criteria) this;
        }

        public Criteria andSpecificationEqualTo(String value) {
            addCriterion("Specification =", value, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationNotEqualTo(String value) {
            addCriterion("Specification <>", value, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationGreaterThan(String value) {
            addCriterion("Specification >", value, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationGreaterThanOrEqualTo(String value) {
            addCriterion("Specification >=", value, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationLessThan(String value) {
            addCriterion("Specification <", value, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationLessThanOrEqualTo(String value) {
            addCriterion("Specification <=", value, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationLike(String value) {
            addCriterion("Specification like", value, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationNotLike(String value) {
            addCriterion("Specification not like", value, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationIn(List<String> values) {
            addCriterion("Specification in", values, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationNotIn(List<String> values) {
            addCriterion("Specification not in", values, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationBetween(String value1, String value2) {
            addCriterion("Specification between", value1, value2, "specification");
            return (Criteria) this;
        }

        public Criteria andSpecificationNotBetween(String value1, String value2) {
            addCriterion("Specification not between", value1, value2, "specification");
            return (Criteria) this;
        }

        public Criteria andNumberIsNull() {
            addCriterion("Number is null");
            return (Criteria) this;
        }

        public Criteria andNumberIsNotNull() {
            addCriterion("Number is not null");
            return (Criteria) this;
        }

        public Criteria andNumberEqualTo(Integer value) {
            addCriterion("Number =", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotEqualTo(Integer value) {
            addCriterion("Number <>", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberGreaterThan(Integer value) {
            addCriterion("Number >", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("Number >=", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberLessThan(Integer value) {
            addCriterion("Number <", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberLessThanOrEqualTo(Integer value) {
            addCriterion("Number <=", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberIn(List<Integer> values) {
            addCriterion("Number in", values, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotIn(List<Integer> values) {
            addCriterion("Number not in", values, "number");
            return (Criteria) this;
        }

        public Criteria andNumberBetween(Integer value1, Integer value2) {
            addCriterion("Number between", value1, value2, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("Number not between", value1, value2, "number");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(Double value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(Double value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(Double value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(Double value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(Double value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<Double> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<Double> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(Double value1, Double value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(Double value1, Double value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andSumIsNull() {
            addCriterion("sum is null");
            return (Criteria) this;
        }

        public Criteria andSumIsNotNull() {
            addCriterion("sum is not null");
            return (Criteria) this;
        }

        public Criteria andSumEqualTo(Double value) {
            addCriterion("sum =", value, "sum");
            return (Criteria) this;
        }

        public Criteria andSumNotEqualTo(Double value) {
            addCriterion("sum <>", value, "sum");
            return (Criteria) this;
        }

        public Criteria andSumGreaterThan(Double value) {
            addCriterion("sum >", value, "sum");
            return (Criteria) this;
        }

        public Criteria andSumGreaterThanOrEqualTo(Double value) {
            addCriterion("sum >=", value, "sum");
            return (Criteria) this;
        }

        public Criteria andSumLessThan(Double value) {
            addCriterion("sum <", value, "sum");
            return (Criteria) this;
        }

        public Criteria andSumLessThanOrEqualTo(Double value) {
            addCriterion("sum <=", value, "sum");
            return (Criteria) this;
        }

        public Criteria andSumIn(List<Double> values) {
            addCriterion("sum in", values, "sum");
            return (Criteria) this;
        }

        public Criteria andSumNotIn(List<Double> values) {
            addCriterion("sum not in", values, "sum");
            return (Criteria) this;
        }

        public Criteria andSumBetween(Double value1, Double value2) {
            addCriterion("sum between", value1, value2, "sum");
            return (Criteria) this;
        }

        public Criteria andSumNotBetween(Double value1, Double value2) {
            addCriterion("sum not between", value1, value2, "sum");
            return (Criteria) this;
        }

        public Criteria andPurchasedateIsNull() {
            addCriterion("purchaseDate is null");
            return (Criteria) this;
        }

        public Criteria andPurchasedateIsNotNull() {
            addCriterion("purchaseDate is not null");
            return (Criteria) this;
        }

        public Criteria andPurchasedateEqualTo(Date value) {
            addCriterionForJDBCDate("purchaseDate =", value, "purchasedate");
            return (Criteria) this;
        }

        public Criteria andPurchasedateNotEqualTo(Date value) {
            addCriterionForJDBCDate("purchaseDate <>", value, "purchasedate");
            return (Criteria) this;
        }

        public Criteria andPurchasedateGreaterThan(Date value) {
            addCriterionForJDBCDate("purchaseDate >", value, "purchasedate");
            return (Criteria) this;
        }

        public Criteria andPurchasedateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("purchaseDate >=", value, "purchasedate");
            return (Criteria) this;
        }

        public Criteria andPurchasedateLessThan(Date value) {
            addCriterionForJDBCDate("purchaseDate <", value, "purchasedate");
            return (Criteria) this;
        }

        public Criteria andPurchasedateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("purchaseDate <=", value, "purchasedate");
            return (Criteria) this;
        }

        public Criteria andPurchasedateIn(List<Date> values) {
            addCriterionForJDBCDate("purchaseDate in", values, "purchasedate");
            return (Criteria) this;
        }

        public Criteria andPurchasedateNotIn(List<Date> values) {
            addCriterionForJDBCDate("purchaseDate not in", values, "purchasedate");
            return (Criteria) this;
        }

        public Criteria andPurchasedateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("purchaseDate between", value1, value2, "purchasedate");
            return (Criteria) this;
        }

        public Criteria andPurchasedateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("purchaseDate not between", value1, value2, "purchasedate");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeIsNull() {
            addCriterion("elapsedLife is null");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeIsNotNull() {
            addCriterion("elapsedLife is not null");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeEqualTo(String value) {
            addCriterion("elapsedLife =", value, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeNotEqualTo(String value) {
            addCriterion("elapsedLife <>", value, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeGreaterThan(String value) {
            addCriterion("elapsedLife >", value, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeGreaterThanOrEqualTo(String value) {
            addCriterion("elapsedLife >=", value, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeLessThan(String value) {
            addCriterion("elapsedLife <", value, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeLessThanOrEqualTo(String value) {
            addCriterion("elapsedLife <=", value, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeLike(String value) {
            addCriterion("elapsedLife like", value, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeNotLike(String value) {
            addCriterion("elapsedLife not like", value, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeIn(List<String> values) {
            addCriterion("elapsedLife in", values, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeNotIn(List<String> values) {
            addCriterion("elapsedLife not in", values, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeBetween(String value1, String value2) {
            addCriterion("elapsedLife between", value1, value2, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andElapsedlifeNotBetween(String value1, String value2) {
            addCriterion("elapsedLife not between", value1, value2, "elapsedlife");
            return (Criteria) this;
        }

        public Criteria andDephabemadeIsNull() {
            addCriterion("depHaBeMade is null");
            return (Criteria) this;
        }

        public Criteria andDephabemadeIsNotNull() {
            addCriterion("depHaBeMade is not null");
            return (Criteria) this;
        }

        public Criteria andDephabemadeEqualTo(String value) {
            addCriterion("depHaBeMade =", value, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeNotEqualTo(String value) {
            addCriterion("depHaBeMade <>", value, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeGreaterThan(String value) {
            addCriterion("depHaBeMade >", value, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeGreaterThanOrEqualTo(String value) {
            addCriterion("depHaBeMade >=", value, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeLessThan(String value) {
            addCriterion("depHaBeMade <", value, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeLessThanOrEqualTo(String value) {
            addCriterion("depHaBeMade <=", value, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeLike(String value) {
            addCriterion("depHaBeMade like", value, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeNotLike(String value) {
            addCriterion("depHaBeMade not like", value, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeIn(List<String> values) {
            addCriterion("depHaBeMade in", values, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeNotIn(List<String> values) {
            addCriterion("depHaBeMade not in", values, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeBetween(String value1, String value2) {
            addCriterion("depHaBeMade between", value1, value2, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andDephabemadeNotBetween(String value1, String value2) {
            addCriterion("depHaBeMade not between", value1, value2, "dephabemade");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryIsNull() {
            addCriterion("accountCategory is null");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryIsNotNull() {
            addCriterion("accountCategory is not null");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryEqualTo(String value) {
            addCriterion("accountCategory =", value, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryNotEqualTo(String value) {
            addCriterion("accountCategory <>", value, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryGreaterThan(String value) {
            addCriterion("accountCategory >", value, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryGreaterThanOrEqualTo(String value) {
            addCriterion("accountCategory >=", value, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryLessThan(String value) {
            addCriterion("accountCategory <", value, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryLessThanOrEqualTo(String value) {
            addCriterion("accountCategory <=", value, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryLike(String value) {
            addCriterion("accountCategory like", value, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryNotLike(String value) {
            addCriterion("accountCategory not like", value, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryIn(List<String> values) {
            addCriterion("accountCategory in", values, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryNotIn(List<String> values) {
            addCriterion("accountCategory not in", values, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryBetween(String value1, String value2) {
            addCriterion("accountCategory between", value1, value2, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andAccountcategoryNotBetween(String value1, String value2) {
            addCriterion("accountCategory not between", value1, value2, "accountcategory");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentIsNull() {
            addCriterion("transferDepartment is null");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentIsNotNull() {
            addCriterion("transferDepartment is not null");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentEqualTo(String value) {
            addCriterion("transferDepartment =", value, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentNotEqualTo(String value) {
            addCriterion("transferDepartment <>", value, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentGreaterThan(String value) {
            addCriterion("transferDepartment >", value, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentGreaterThanOrEqualTo(String value) {
            addCriterion("transferDepartment >=", value, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentLessThan(String value) {
            addCriterion("transferDepartment <", value, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentLessThanOrEqualTo(String value) {
            addCriterion("transferDepartment <=", value, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentLike(String value) {
            addCriterion("transferDepartment like", value, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentNotLike(String value) {
            addCriterion("transferDepartment not like", value, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentIn(List<String> values) {
            addCriterion("transferDepartment in", values, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentNotIn(List<String> values) {
            addCriterion("transferDepartment not in", values, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentBetween(String value1, String value2) {
            addCriterion("transferDepartment between", value1, value2, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransferdepartmentNotBetween(String value1, String value2) {
            addCriterion("transferDepartment not between", value1, value2, "transferdepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentIsNull() {
            addCriterion("transferToDepartment is null");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentIsNotNull() {
            addCriterion("transferToDepartment is not null");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentEqualTo(String value) {
            addCriterion("transferToDepartment =", value, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentNotEqualTo(String value) {
            addCriterion("transferToDepartment <>", value, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentGreaterThan(String value) {
            addCriterion("transferToDepartment >", value, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentGreaterThanOrEqualTo(String value) {
            addCriterion("transferToDepartment >=", value, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentLessThan(String value) {
            addCriterion("transferToDepartment <", value, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentLessThanOrEqualTo(String value) {
            addCriterion("transferToDepartment <=", value, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentLike(String value) {
            addCriterion("transferToDepartment like", value, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentNotLike(String value) {
            addCriterion("transferToDepartment not like", value, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentIn(List<String> values) {
            addCriterion("transferToDepartment in", values, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentNotIn(List<String> values) {
            addCriterion("transferToDepartment not in", values, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentBetween(String value1, String value2) {
            addCriterion("transferToDepartment between", value1, value2, "transfertodepartment");
            return (Criteria) this;
        }

        public Criteria andTransfertodepartmentNotBetween(String value1, String value2) {
            addCriterion("transferToDepartment not between", value1, value2, "transfertodepartment");
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