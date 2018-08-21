package pojo;

import java.util.ArrayList;
import java.util.List;

public class KcbExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public KcbExample() {
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

        public Criteria andYueIsNull() {
            addCriterion("yue is null");
            return (Criteria) this;
        }

        public Criteria andYueIsNotNull() {
            addCriterion("yue is not null");
            return (Criteria) this;
        }

        public Criteria andYueEqualTo(String value) {
            addCriterion("yue =", value, "yue");
            return (Criteria) this;
        }

        public Criteria andYueNotEqualTo(String value) {
            addCriterion("yue <>", value, "yue");
            return (Criteria) this;
        }

        public Criteria andYueGreaterThan(String value) {
            addCriterion("yue >", value, "yue");
            return (Criteria) this;
        }

        public Criteria andYueGreaterThanOrEqualTo(String value) {
            addCriterion("yue >=", value, "yue");
            return (Criteria) this;
        }

        public Criteria andYueLessThan(String value) {
            addCriterion("yue <", value, "yue");
            return (Criteria) this;
        }

        public Criteria andYueLessThanOrEqualTo(String value) {
            addCriterion("yue <=", value, "yue");
            return (Criteria) this;
        }

        public Criteria andYueLike(String value) {
            addCriterion("yue like", value, "yue");
            return (Criteria) this;
        }

        public Criteria andYueNotLike(String value) {
            addCriterion("yue not like", value, "yue");
            return (Criteria) this;
        }

        public Criteria andYueIn(List<String> values) {
            addCriterion("yue in", values, "yue");
            return (Criteria) this;
        }

        public Criteria andYueNotIn(List<String> values) {
            addCriterion("yue not in", values, "yue");
            return (Criteria) this;
        }

        public Criteria andYueBetween(String value1, String value2) {
            addCriterion("yue between", value1, value2, "yue");
            return (Criteria) this;
        }

        public Criteria andYueNotBetween(String value1, String value2) {
            addCriterion("yue not between", value1, value2, "yue");
            return (Criteria) this;
        }

        public Criteria andZhouIsNull() {
            addCriterion("zhou is null");
            return (Criteria) this;
        }

        public Criteria andZhouIsNotNull() {
            addCriterion("zhou is not null");
            return (Criteria) this;
        }

        public Criteria andZhouEqualTo(String value) {
            addCriterion("zhou =", value, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouNotEqualTo(String value) {
            addCriterion("zhou <>", value, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouGreaterThan(String value) {
            addCriterion("zhou >", value, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouGreaterThanOrEqualTo(String value) {
            addCriterion("zhou >=", value, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouLessThan(String value) {
            addCriterion("zhou <", value, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouLessThanOrEqualTo(String value) {
            addCriterion("zhou <=", value, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouLike(String value) {
            addCriterion("zhou like", value, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouNotLike(String value) {
            addCriterion("zhou not like", value, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouIn(List<String> values) {
            addCriterion("zhou in", values, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouNotIn(List<String> values) {
            addCriterion("zhou not in", values, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouBetween(String value1, String value2) {
            addCriterion("zhou between", value1, value2, "zhou");
            return (Criteria) this;
        }

        public Criteria andZhouNotBetween(String value1, String value2) {
            addCriterion("zhou not between", value1, value2, "zhou");
            return (Criteria) this;
        }

        public Criteria andXingqi1IsNull() {
            addCriterion("xingqi1 is null");
            return (Criteria) this;
        }

        public Criteria andXingqi1IsNotNull() {
            addCriterion("xingqi1 is not null");
            return (Criteria) this;
        }

        public Criteria andXingqi1EqualTo(String value) {
            addCriterion("xingqi1 =", value, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1NotEqualTo(String value) {
            addCriterion("xingqi1 <>", value, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1GreaterThan(String value) {
            addCriterion("xingqi1 >", value, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1GreaterThanOrEqualTo(String value) {
            addCriterion("xingqi1 >=", value, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1LessThan(String value) {
            addCriterion("xingqi1 <", value, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1LessThanOrEqualTo(String value) {
            addCriterion("xingqi1 <=", value, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1Like(String value) {
            addCriterion("xingqi1 like", value, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1NotLike(String value) {
            addCriterion("xingqi1 not like", value, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1In(List<String> values) {
            addCriterion("xingqi1 in", values, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1NotIn(List<String> values) {
            addCriterion("xingqi1 not in", values, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1Between(String value1, String value2) {
            addCriterion("xingqi1 between", value1, value2, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andXingqi1NotBetween(String value1, String value2) {
            addCriterion("xingqi1 not between", value1, value2, "xingqi1");
            return (Criteria) this;
        }

        public Criteria andJieri1IsNull() {
            addCriterion("jieri1 is null");
            return (Criteria) this;
        }

        public Criteria andJieri1IsNotNull() {
            addCriterion("jieri1 is not null");
            return (Criteria) this;
        }

        public Criteria andJieri1EqualTo(String value) {
            addCriterion("jieri1 =", value, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1NotEqualTo(String value) {
            addCriterion("jieri1 <>", value, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1GreaterThan(String value) {
            addCriterion("jieri1 >", value, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1GreaterThanOrEqualTo(String value) {
            addCriterion("jieri1 >=", value, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1LessThan(String value) {
            addCriterion("jieri1 <", value, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1LessThanOrEqualTo(String value) {
            addCriterion("jieri1 <=", value, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1Like(String value) {
            addCriterion("jieri1 like", value, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1NotLike(String value) {
            addCriterion("jieri1 not like", value, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1In(List<String> values) {
            addCriterion("jieri1 in", values, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1NotIn(List<String> values) {
            addCriterion("jieri1 not in", values, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1Between(String value1, String value2) {
            addCriterion("jieri1 between", value1, value2, "jieri1");
            return (Criteria) this;
        }

        public Criteria andJieri1NotBetween(String value1, String value2) {
            addCriterion("jieri1 not between", value1, value2, "jieri1");
            return (Criteria) this;
        }

        public Criteria andXingqi2IsNull() {
            addCriterion("xingqi2 is null");
            return (Criteria) this;
        }

        public Criteria andXingqi2IsNotNull() {
            addCriterion("xingqi2 is not null");
            return (Criteria) this;
        }

        public Criteria andXingqi2EqualTo(String value) {
            addCriterion("xingqi2 =", value, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2NotEqualTo(String value) {
            addCriterion("xingqi2 <>", value, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2GreaterThan(String value) {
            addCriterion("xingqi2 >", value, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2GreaterThanOrEqualTo(String value) {
            addCriterion("xingqi2 >=", value, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2LessThan(String value) {
            addCriterion("xingqi2 <", value, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2LessThanOrEqualTo(String value) {
            addCriterion("xingqi2 <=", value, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2Like(String value) {
            addCriterion("xingqi2 like", value, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2NotLike(String value) {
            addCriterion("xingqi2 not like", value, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2In(List<String> values) {
            addCriterion("xingqi2 in", values, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2NotIn(List<String> values) {
            addCriterion("xingqi2 not in", values, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2Between(String value1, String value2) {
            addCriterion("xingqi2 between", value1, value2, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andXingqi2NotBetween(String value1, String value2) {
            addCriterion("xingqi2 not between", value1, value2, "xingqi2");
            return (Criteria) this;
        }

        public Criteria andJieri2IsNull() {
            addCriterion("jieri2 is null");
            return (Criteria) this;
        }

        public Criteria andJieri2IsNotNull() {
            addCriterion("jieri2 is not null");
            return (Criteria) this;
        }

        public Criteria andJieri2EqualTo(String value) {
            addCriterion("jieri2 =", value, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2NotEqualTo(String value) {
            addCriterion("jieri2 <>", value, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2GreaterThan(String value) {
            addCriterion("jieri2 >", value, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2GreaterThanOrEqualTo(String value) {
            addCriterion("jieri2 >=", value, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2LessThan(String value) {
            addCriterion("jieri2 <", value, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2LessThanOrEqualTo(String value) {
            addCriterion("jieri2 <=", value, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2Like(String value) {
            addCriterion("jieri2 like", value, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2NotLike(String value) {
            addCriterion("jieri2 not like", value, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2In(List<String> values) {
            addCriterion("jieri2 in", values, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2NotIn(List<String> values) {
            addCriterion("jieri2 not in", values, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2Between(String value1, String value2) {
            addCriterion("jieri2 between", value1, value2, "jieri2");
            return (Criteria) this;
        }

        public Criteria andJieri2NotBetween(String value1, String value2) {
            addCriterion("jieri2 not between", value1, value2, "jieri2");
            return (Criteria) this;
        }

        public Criteria andXingqi3IsNull() {
            addCriterion("xingqi3 is null");
            return (Criteria) this;
        }

        public Criteria andXingqi3IsNotNull() {
            addCriterion("xingqi3 is not null");
            return (Criteria) this;
        }

        public Criteria andXingqi3EqualTo(String value) {
            addCriterion("xingqi3 =", value, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3NotEqualTo(String value) {
            addCriterion("xingqi3 <>", value, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3GreaterThan(String value) {
            addCriterion("xingqi3 >", value, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3GreaterThanOrEqualTo(String value) {
            addCriterion("xingqi3 >=", value, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3LessThan(String value) {
            addCriterion("xingqi3 <", value, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3LessThanOrEqualTo(String value) {
            addCriterion("xingqi3 <=", value, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3Like(String value) {
            addCriterion("xingqi3 like", value, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3NotLike(String value) {
            addCriterion("xingqi3 not like", value, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3In(List<String> values) {
            addCriterion("xingqi3 in", values, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3NotIn(List<String> values) {
            addCriterion("xingqi3 not in", values, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3Between(String value1, String value2) {
            addCriterion("xingqi3 between", value1, value2, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andXingqi3NotBetween(String value1, String value2) {
            addCriterion("xingqi3 not between", value1, value2, "xingqi3");
            return (Criteria) this;
        }

        public Criteria andJieri3IsNull() {
            addCriterion("jieri3 is null");
            return (Criteria) this;
        }

        public Criteria andJieri3IsNotNull() {
            addCriterion("jieri3 is not null");
            return (Criteria) this;
        }

        public Criteria andJieri3EqualTo(String value) {
            addCriterion("jieri3 =", value, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3NotEqualTo(String value) {
            addCriterion("jieri3 <>", value, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3GreaterThan(String value) {
            addCriterion("jieri3 >", value, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3GreaterThanOrEqualTo(String value) {
            addCriterion("jieri3 >=", value, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3LessThan(String value) {
            addCriterion("jieri3 <", value, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3LessThanOrEqualTo(String value) {
            addCriterion("jieri3 <=", value, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3Like(String value) {
            addCriterion("jieri3 like", value, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3NotLike(String value) {
            addCriterion("jieri3 not like", value, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3In(List<String> values) {
            addCriterion("jieri3 in", values, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3NotIn(List<String> values) {
            addCriterion("jieri3 not in", values, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3Between(String value1, String value2) {
            addCriterion("jieri3 between", value1, value2, "jieri3");
            return (Criteria) this;
        }

        public Criteria andJieri3NotBetween(String value1, String value2) {
            addCriterion("jieri3 not between", value1, value2, "jieri3");
            return (Criteria) this;
        }

        public Criteria andXingqi4IsNull() {
            addCriterion("xingqi4 is null");
            return (Criteria) this;
        }

        public Criteria andXingqi4IsNotNull() {
            addCriterion("xingqi4 is not null");
            return (Criteria) this;
        }

        public Criteria andXingqi4EqualTo(String value) {
            addCriterion("xingqi4 =", value, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4NotEqualTo(String value) {
            addCriterion("xingqi4 <>", value, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4GreaterThan(String value) {
            addCriterion("xingqi4 >", value, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4GreaterThanOrEqualTo(String value) {
            addCriterion("xingqi4 >=", value, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4LessThan(String value) {
            addCriterion("xingqi4 <", value, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4LessThanOrEqualTo(String value) {
            addCriterion("xingqi4 <=", value, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4Like(String value) {
            addCriterion("xingqi4 like", value, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4NotLike(String value) {
            addCriterion("xingqi4 not like", value, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4In(List<String> values) {
            addCriterion("xingqi4 in", values, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4NotIn(List<String> values) {
            addCriterion("xingqi4 not in", values, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4Between(String value1, String value2) {
            addCriterion("xingqi4 between", value1, value2, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andXingqi4NotBetween(String value1, String value2) {
            addCriterion("xingqi4 not between", value1, value2, "xingqi4");
            return (Criteria) this;
        }

        public Criteria andJieri4IsNull() {
            addCriterion("jieri4 is null");
            return (Criteria) this;
        }

        public Criteria andJieri4IsNotNull() {
            addCriterion("jieri4 is not null");
            return (Criteria) this;
        }

        public Criteria andJieri4EqualTo(String value) {
            addCriterion("jieri4 =", value, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4NotEqualTo(String value) {
            addCriterion("jieri4 <>", value, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4GreaterThan(String value) {
            addCriterion("jieri4 >", value, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4GreaterThanOrEqualTo(String value) {
            addCriterion("jieri4 >=", value, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4LessThan(String value) {
            addCriterion("jieri4 <", value, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4LessThanOrEqualTo(String value) {
            addCriterion("jieri4 <=", value, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4Like(String value) {
            addCriterion("jieri4 like", value, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4NotLike(String value) {
            addCriterion("jieri4 not like", value, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4In(List<String> values) {
            addCriterion("jieri4 in", values, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4NotIn(List<String> values) {
            addCriterion("jieri4 not in", values, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4Between(String value1, String value2) {
            addCriterion("jieri4 between", value1, value2, "jieri4");
            return (Criteria) this;
        }

        public Criteria andJieri4NotBetween(String value1, String value2) {
            addCriterion("jieri4 not between", value1, value2, "jieri4");
            return (Criteria) this;
        }

        public Criteria andXingqi5IsNull() {
            addCriterion("xingqi5 is null");
            return (Criteria) this;
        }

        public Criteria andXingqi5IsNotNull() {
            addCriterion("xingqi5 is not null");
            return (Criteria) this;
        }

        public Criteria andXingqi5EqualTo(String value) {
            addCriterion("xingqi5 =", value, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5NotEqualTo(String value) {
            addCriterion("xingqi5 <>", value, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5GreaterThan(String value) {
            addCriterion("xingqi5 >", value, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5GreaterThanOrEqualTo(String value) {
            addCriterion("xingqi5 >=", value, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5LessThan(String value) {
            addCriterion("xingqi5 <", value, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5LessThanOrEqualTo(String value) {
            addCriterion("xingqi5 <=", value, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5Like(String value) {
            addCriterion("xingqi5 like", value, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5NotLike(String value) {
            addCriterion("xingqi5 not like", value, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5In(List<String> values) {
            addCriterion("xingqi5 in", values, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5NotIn(List<String> values) {
            addCriterion("xingqi5 not in", values, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5Between(String value1, String value2) {
            addCriterion("xingqi5 between", value1, value2, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andXingqi5NotBetween(String value1, String value2) {
            addCriterion("xingqi5 not between", value1, value2, "xingqi5");
            return (Criteria) this;
        }

        public Criteria andJieri5IsNull() {
            addCriterion("jieri5 is null");
            return (Criteria) this;
        }

        public Criteria andJieri5IsNotNull() {
            addCriterion("jieri5 is not null");
            return (Criteria) this;
        }

        public Criteria andJieri5EqualTo(String value) {
            addCriterion("jieri5 =", value, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5NotEqualTo(String value) {
            addCriterion("jieri5 <>", value, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5GreaterThan(String value) {
            addCriterion("jieri5 >", value, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5GreaterThanOrEqualTo(String value) {
            addCriterion("jieri5 >=", value, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5LessThan(String value) {
            addCriterion("jieri5 <", value, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5LessThanOrEqualTo(String value) {
            addCriterion("jieri5 <=", value, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5Like(String value) {
            addCriterion("jieri5 like", value, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5NotLike(String value) {
            addCriterion("jieri5 not like", value, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5In(List<String> values) {
            addCriterion("jieri5 in", values, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5NotIn(List<String> values) {
            addCriterion("jieri5 not in", values, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5Between(String value1, String value2) {
            addCriterion("jieri5 between", value1, value2, "jieri5");
            return (Criteria) this;
        }

        public Criteria andJieri5NotBetween(String value1, String value2) {
            addCriterion("jieri5 not between", value1, value2, "jieri5");
            return (Criteria) this;
        }

        public Criteria andXingqi6IsNull() {
            addCriterion("xingqi6 is null");
            return (Criteria) this;
        }

        public Criteria andXingqi6IsNotNull() {
            addCriterion("xingqi6 is not null");
            return (Criteria) this;
        }

        public Criteria andXingqi6EqualTo(String value) {
            addCriterion("xingqi6 =", value, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6NotEqualTo(String value) {
            addCriterion("xingqi6 <>", value, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6GreaterThan(String value) {
            addCriterion("xingqi6 >", value, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6GreaterThanOrEqualTo(String value) {
            addCriterion("xingqi6 >=", value, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6LessThan(String value) {
            addCriterion("xingqi6 <", value, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6LessThanOrEqualTo(String value) {
            addCriterion("xingqi6 <=", value, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6Like(String value) {
            addCriterion("xingqi6 like", value, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6NotLike(String value) {
            addCriterion("xingqi6 not like", value, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6In(List<String> values) {
            addCriterion("xingqi6 in", values, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6NotIn(List<String> values) {
            addCriterion("xingqi6 not in", values, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6Between(String value1, String value2) {
            addCriterion("xingqi6 between", value1, value2, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andXingqi6NotBetween(String value1, String value2) {
            addCriterion("xingqi6 not between", value1, value2, "xingqi6");
            return (Criteria) this;
        }

        public Criteria andJieri6IsNull() {
            addCriterion("jieri6 is null");
            return (Criteria) this;
        }

        public Criteria andJieri6IsNotNull() {
            addCriterion("jieri6 is not null");
            return (Criteria) this;
        }

        public Criteria andJieri6EqualTo(String value) {
            addCriterion("jieri6 =", value, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6NotEqualTo(String value) {
            addCriterion("jieri6 <>", value, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6GreaterThan(String value) {
            addCriterion("jieri6 >", value, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6GreaterThanOrEqualTo(String value) {
            addCriterion("jieri6 >=", value, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6LessThan(String value) {
            addCriterion("jieri6 <", value, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6LessThanOrEqualTo(String value) {
            addCriterion("jieri6 <=", value, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6Like(String value) {
            addCriterion("jieri6 like", value, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6NotLike(String value) {
            addCriterion("jieri6 not like", value, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6In(List<String> values) {
            addCriterion("jieri6 in", values, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6NotIn(List<String> values) {
            addCriterion("jieri6 not in", values, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6Between(String value1, String value2) {
            addCriterion("jieri6 between", value1, value2, "jieri6");
            return (Criteria) this;
        }

        public Criteria andJieri6NotBetween(String value1, String value2) {
            addCriterion("jieri6 not between", value1, value2, "jieri6");
            return (Criteria) this;
        }

        public Criteria andXingqi7IsNull() {
            addCriterion("xingqi7 is null");
            return (Criteria) this;
        }

        public Criteria andXingqi7IsNotNull() {
            addCriterion("xingqi7 is not null");
            return (Criteria) this;
        }

        public Criteria andXingqi7EqualTo(String value) {
            addCriterion("xingqi7 =", value, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7NotEqualTo(String value) {
            addCriterion("xingqi7 <>", value, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7GreaterThan(String value) {
            addCriterion("xingqi7 >", value, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7GreaterThanOrEqualTo(String value) {
            addCriterion("xingqi7 >=", value, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7LessThan(String value) {
            addCriterion("xingqi7 <", value, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7LessThanOrEqualTo(String value) {
            addCriterion("xingqi7 <=", value, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7Like(String value) {
            addCriterion("xingqi7 like", value, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7NotLike(String value) {
            addCriterion("xingqi7 not like", value, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7In(List<String> values) {
            addCriterion("xingqi7 in", values, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7NotIn(List<String> values) {
            addCriterion("xingqi7 not in", values, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7Between(String value1, String value2) {
            addCriterion("xingqi7 between", value1, value2, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andXingqi7NotBetween(String value1, String value2) {
            addCriterion("xingqi7 not between", value1, value2, "xingqi7");
            return (Criteria) this;
        }

        public Criteria andJieri7IsNull() {
            addCriterion("jieri7 is null");
            return (Criteria) this;
        }

        public Criteria andJieri7IsNotNull() {
            addCriterion("jieri7 is not null");
            return (Criteria) this;
        }

        public Criteria andJieri7EqualTo(String value) {
            addCriterion("jieri7 =", value, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7NotEqualTo(String value) {
            addCriterion("jieri7 <>", value, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7GreaterThan(String value) {
            addCriterion("jieri7 >", value, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7GreaterThanOrEqualTo(String value) {
            addCriterion("jieri7 >=", value, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7LessThan(String value) {
            addCriterion("jieri7 <", value, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7LessThanOrEqualTo(String value) {
            addCriterion("jieri7 <=", value, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7Like(String value) {
            addCriterion("jieri7 like", value, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7NotLike(String value) {
            addCriterion("jieri7 not like", value, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7In(List<String> values) {
            addCriterion("jieri7 in", values, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7NotIn(List<String> values) {
            addCriterion("jieri7 not in", values, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7Between(String value1, String value2) {
            addCriterion("jieri7 between", value1, value2, "jieri7");
            return (Criteria) this;
        }

        public Criteria andJieri7NotBetween(String value1, String value2) {
            addCriterion("jieri7 not between", value1, value2, "jieri7");
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