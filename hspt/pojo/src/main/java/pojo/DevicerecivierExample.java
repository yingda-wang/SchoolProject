package pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class DevicerecivierExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DevicerecivierExample() {
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

        public Criteria andDateIsNull() {
            addCriterion("date is null");
            return (Criteria) this;
        }

        public Criteria andDateIsNotNull() {
            addCriterion("date is not null");
            return (Criteria) this;
        }

        public Criteria andDateEqualTo(Date value) {
            addCriterionForJDBCDate("date =", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("date <>", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateGreaterThan(Date value) {
            addCriterionForJDBCDate("date >", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("date >=", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateLessThan(Date value) {
            addCriterionForJDBCDate("date <", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("date <=", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateIn(List<Date> values) {
            addCriterionForJDBCDate("date in", values, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("date not in", values, "date");
            return (Criteria) this;
        }

        public Criteria andDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("date between", value1, value2, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("date not between", value1, value2, "date");
            return (Criteria) this;
        }

        public Criteria andReceiverIsNull() {
            addCriterion("receiver is null");
            return (Criteria) this;
        }

        public Criteria andReceiverIsNotNull() {
            addCriterion("receiver is not null");
            return (Criteria) this;
        }

        public Criteria andReceiverEqualTo(String value) {
            addCriterion("receiver =", value, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverNotEqualTo(String value) {
            addCriterion("receiver <>", value, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverGreaterThan(String value) {
            addCriterion("receiver >", value, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverGreaterThanOrEqualTo(String value) {
            addCriterion("receiver >=", value, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverLessThan(String value) {
            addCriterion("receiver <", value, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverLessThanOrEqualTo(String value) {
            addCriterion("receiver <=", value, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverLike(String value) {
            addCriterion("receiver like", value, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverNotLike(String value) {
            addCriterion("receiver not like", value, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverIn(List<String> values) {
            addCriterion("receiver in", values, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverNotIn(List<String> values) {
            addCriterion("receiver not in", values, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverBetween(String value1, String value2) {
            addCriterion("receiver between", value1, value2, "receiver");
            return (Criteria) this;
        }

        public Criteria andReceiverNotBetween(String value1, String value2) {
            addCriterion("receiver not between", value1, value2, "receiver");
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

        public Criteria andNumberIsNull() {
            addCriterion("number is null");
            return (Criteria) this;
        }

        public Criteria andNumberIsNotNull() {
            addCriterion("number is not null");
            return (Criteria) this;
        }

        public Criteria andNumberEqualTo(Integer value) {
            addCriterion("number =", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotEqualTo(Integer value) {
            addCriterion("number <>", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberGreaterThan(Integer value) {
            addCriterion("number >", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("number >=", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberLessThan(Integer value) {
            addCriterion("number <", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberLessThanOrEqualTo(Integer value) {
            addCriterion("number <=", value, "number");
            return (Criteria) this;
        }

        public Criteria andNumberIn(List<Integer> values) {
            addCriterion("number in", values, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotIn(List<Integer> values) {
            addCriterion("number not in", values, "number");
            return (Criteria) this;
        }

        public Criteria andNumberBetween(Integer value1, Integer value2) {
            addCriterion("number between", value1, value2, "number");
            return (Criteria) this;
        }

        public Criteria andNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("number not between", value1, value2, "number");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceIsNull() {
            addCriterion("tempSavePolice is null");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceIsNotNull() {
            addCriterion("tempSavePolice is not null");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceEqualTo(String value) {
            addCriterion("tempSavePolice =", value, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceNotEqualTo(String value) {
            addCriterion("tempSavePolice <>", value, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceGreaterThan(String value) {
            addCriterion("tempSavePolice >", value, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceGreaterThanOrEqualTo(String value) {
            addCriterion("tempSavePolice >=", value, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceLessThan(String value) {
            addCriterion("tempSavePolice <", value, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceLessThanOrEqualTo(String value) {
            addCriterion("tempSavePolice <=", value, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceLike(String value) {
            addCriterion("tempSavePolice like", value, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceNotLike(String value) {
            addCriterion("tempSavePolice not like", value, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceIn(List<String> values) {
            addCriterion("tempSavePolice in", values, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceNotIn(List<String> values) {
            addCriterion("tempSavePolice not in", values, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceBetween(String value1, String value2) {
            addCriterion("tempSavePolice between", value1, value2, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andTempsavepoliceNotBetween(String value1, String value2) {
            addCriterion("tempSavePolice not between", value1, value2, "tempsavepolice");
            return (Criteria) this;
        }

        public Criteria andNowremainIsNull() {
            addCriterion("nowRemain is null");
            return (Criteria) this;
        }

        public Criteria andNowremainIsNotNull() {
            addCriterion("nowRemain is not null");
            return (Criteria) this;
        }

        public Criteria andNowremainEqualTo(Long value) {
            addCriterion("nowRemain =", value, "nowremain");
            return (Criteria) this;
        }

        public Criteria andNowremainNotEqualTo(Long value) {
            addCriterion("nowRemain <>", value, "nowremain");
            return (Criteria) this;
        }

        public Criteria andNowremainGreaterThan(Long value) {
            addCriterion("nowRemain >", value, "nowremain");
            return (Criteria) this;
        }

        public Criteria andNowremainGreaterThanOrEqualTo(Long value) {
            addCriterion("nowRemain >=", value, "nowremain");
            return (Criteria) this;
        }

        public Criteria andNowremainLessThan(Long value) {
            addCriterion("nowRemain <", value, "nowremain");
            return (Criteria) this;
        }

        public Criteria andNowremainLessThanOrEqualTo(Long value) {
            addCriterion("nowRemain <=", value, "nowremain");
            return (Criteria) this;
        }

        public Criteria andNowremainIn(List<Long> values) {
            addCriterion("nowRemain in", values, "nowremain");
            return (Criteria) this;
        }

        public Criteria andNowremainNotIn(List<Long> values) {
            addCriterion("nowRemain not in", values, "nowremain");
            return (Criteria) this;
        }

        public Criteria andNowremainBetween(Long value1, Long value2) {
            addCriterion("nowRemain between", value1, value2, "nowremain");
            return (Criteria) this;
        }

        public Criteria andNowremainNotBetween(Long value1, Long value2) {
            addCriterion("nowRemain not between", value1, value2, "nowremain");
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