package pojo;

import java.util.ArrayList;
import java.util.List;

public class KcmExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public KcmExample() {
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

        public Criteria andKcmIsNull() {
            addCriterion("kcm is null");
            return (Criteria) this;
        }

        public Criteria andKcmIsNotNull() {
            addCriterion("kcm is not null");
            return (Criteria) this;
        }

        public Criteria andKcmEqualTo(String value) {
            addCriterion("kcm =", value, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmNotEqualTo(String value) {
            addCriterion("kcm <>", value, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmGreaterThan(String value) {
            addCriterion("kcm >", value, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmGreaterThanOrEqualTo(String value) {
            addCriterion("kcm >=", value, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmLessThan(String value) {
            addCriterion("kcm <", value, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmLessThanOrEqualTo(String value) {
            addCriterion("kcm <=", value, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmLike(String value) {
            addCriterion("kcm like", value, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmNotLike(String value) {
            addCriterion("kcm not like", value, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmIn(List<String> values) {
            addCriterion("kcm in", values, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmNotIn(List<String> values) {
            addCriterion("kcm not in", values, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmBetween(String value1, String value2) {
            addCriterion("kcm between", value1, value2, "kcm");
            return (Criteria) this;
        }

        public Criteria andKcmNotBetween(String value1, String value2) {
            addCriterion("kcm not between", value1, value2, "kcm");
            return (Criteria) this;
        }

        public Criteria andVersionIsNull() {
            addCriterion("version is null");
            return (Criteria) this;
        }

        public Criteria andVersionIsNotNull() {
            addCriterion("version is not null");
            return (Criteria) this;
        }

        public Criteria andVersionEqualTo(String value) {
            addCriterion("version =", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionNotEqualTo(String value) {
            addCriterion("version <>", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionGreaterThan(String value) {
            addCriterion("version >", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionGreaterThanOrEqualTo(String value) {
            addCriterion("version >=", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionLessThan(String value) {
            addCriterion("version <", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionLessThanOrEqualTo(String value) {
            addCriterion("version <=", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionLike(String value) {
            addCriterion("version like", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionNotLike(String value) {
            addCriterion("version not like", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionIn(List<String> values) {
            addCriterion("version in", values, "version");
            return (Criteria) this;
        }

        public Criteria andVersionNotIn(List<String> values) {
            addCriterion("version not in", values, "version");
            return (Criteria) this;
        }

        public Criteria andVersionBetween(String value1, String value2) {
            addCriterion("version between", value1, value2, "version");
            return (Criteria) this;
        }

        public Criteria andVersionNotBetween(String value1, String value2) {
            addCriterion("version not between", value1, value2, "version");
            return (Criteria) this;
        }

        public Criteria andKcbhIsNull() {
            addCriterion("kcbh is null");
            return (Criteria) this;
        }

        public Criteria andKcbhIsNotNull() {
            addCriterion("kcbh is not null");
            return (Criteria) this;
        }

        public Criteria andKcbhEqualTo(String value) {
            addCriterion("kcbh =", value, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhNotEqualTo(String value) {
            addCriterion("kcbh <>", value, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhGreaterThan(String value) {
            addCriterion("kcbh >", value, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhGreaterThanOrEqualTo(String value) {
            addCriterion("kcbh >=", value, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhLessThan(String value) {
            addCriterion("kcbh <", value, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhLessThanOrEqualTo(String value) {
            addCriterion("kcbh <=", value, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhLike(String value) {
            addCriterion("kcbh like", value, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhNotLike(String value) {
            addCriterion("kcbh not like", value, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhIn(List<String> values) {
            addCriterion("kcbh in", values, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhNotIn(List<String> values) {
            addCriterion("kcbh not in", values, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhBetween(String value1, String value2) {
            addCriterion("kcbh between", value1, value2, "kcbh");
            return (Criteria) this;
        }

        public Criteria andKcbhNotBetween(String value1, String value2) {
            addCriterion("kcbh not between", value1, value2, "kcbh");
            return (Criteria) this;
        }

        public Criteria andXueshiIsNull() {
            addCriterion("xueshi is null");
            return (Criteria) this;
        }

        public Criteria andXueshiIsNotNull() {
            addCriterion("xueshi is not null");
            return (Criteria) this;
        }

        public Criteria andXueshiEqualTo(String value) {
            addCriterion("xueshi =", value, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiNotEqualTo(String value) {
            addCriterion("xueshi <>", value, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiGreaterThan(String value) {
            addCriterion("xueshi >", value, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiGreaterThanOrEqualTo(String value) {
            addCriterion("xueshi >=", value, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiLessThan(String value) {
            addCriterion("xueshi <", value, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiLessThanOrEqualTo(String value) {
            addCriterion("xueshi <=", value, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiLike(String value) {
            addCriterion("xueshi like", value, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiNotLike(String value) {
            addCriterion("xueshi not like", value, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiIn(List<String> values) {
            addCriterion("xueshi in", values, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiNotIn(List<String> values) {
            addCriterion("xueshi not in", values, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiBetween(String value1, String value2) {
            addCriterion("xueshi between", value1, value2, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXueshiNotBetween(String value1, String value2) {
            addCriterion("xueshi not between", value1, value2, "xueshi");
            return (Criteria) this;
        }

        public Criteria andXingzhiIsNull() {
            addCriterion("xingzhi is null");
            return (Criteria) this;
        }

        public Criteria andXingzhiIsNotNull() {
            addCriterion("xingzhi is not null");
            return (Criteria) this;
        }

        public Criteria andXingzhiEqualTo(String value) {
            addCriterion("xingzhi =", value, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiNotEqualTo(String value) {
            addCriterion("xingzhi <>", value, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiGreaterThan(String value) {
            addCriterion("xingzhi >", value, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiGreaterThanOrEqualTo(String value) {
            addCriterion("xingzhi >=", value, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiLessThan(String value) {
            addCriterion("xingzhi <", value, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiLessThanOrEqualTo(String value) {
            addCriterion("xingzhi <=", value, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiLike(String value) {
            addCriterion("xingzhi like", value, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiNotLike(String value) {
            addCriterion("xingzhi not like", value, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiIn(List<String> values) {
            addCriterion("xingzhi in", values, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiNotIn(List<String> values) {
            addCriterion("xingzhi not in", values, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiBetween(String value1, String value2) {
            addCriterion("xingzhi between", value1, value2, "xingzhi");
            return (Criteria) this;
        }

        public Criteria andXingzhiNotBetween(String value1, String value2) {
            addCriterion("xingzhi not between", value1, value2, "xingzhi");
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