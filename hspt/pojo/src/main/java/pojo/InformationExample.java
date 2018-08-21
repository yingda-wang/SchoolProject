package pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class InformationExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public InformationExample() {
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

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andSexIsNull() {
            addCriterion("sex is null");
            return (Criteria) this;
        }

        public Criteria andSexIsNotNull() {
            addCriterion("sex is not null");
            return (Criteria) this;
        }

        public Criteria andSexEqualTo(String value) {
            addCriterion("sex =", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotEqualTo(String value) {
            addCriterion("sex <>", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThan(String value) {
            addCriterion("sex >", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThanOrEqualTo(String value) {
            addCriterion("sex >=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThan(String value) {
            addCriterion("sex <", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThanOrEqualTo(String value) {
            addCriterion("sex <=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLike(String value) {
            addCriterion("sex like", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotLike(String value) {
            addCriterion("sex not like", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexIn(List<String> values) {
            addCriterion("sex in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotIn(List<String> values) {
            addCriterion("sex not in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexBetween(String value1, String value2) {
            addCriterion("sex between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotBetween(String value1, String value2) {
            addCriterion("sex not between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andNationIsNull() {
            addCriterion("nation is null");
            return (Criteria) this;
        }

        public Criteria andNationIsNotNull() {
            addCriterion("nation is not null");
            return (Criteria) this;
        }

        public Criteria andNationEqualTo(String value) {
            addCriterion("nation =", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationNotEqualTo(String value) {
            addCriterion("nation <>", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationGreaterThan(String value) {
            addCriterion("nation >", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationGreaterThanOrEqualTo(String value) {
            addCriterion("nation >=", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationLessThan(String value) {
            addCriterion("nation <", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationLessThanOrEqualTo(String value) {
            addCriterion("nation <=", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationLike(String value) {
            addCriterion("nation like", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationNotLike(String value) {
            addCriterion("nation not like", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationIn(List<String> values) {
            addCriterion("nation in", values, "nation");
            return (Criteria) this;
        }

        public Criteria andNationNotIn(List<String> values) {
            addCriterion("nation not in", values, "nation");
            return (Criteria) this;
        }

        public Criteria andNationBetween(String value1, String value2) {
            addCriterion("nation between", value1, value2, "nation");
            return (Criteria) this;
        }

        public Criteria andNationNotBetween(String value1, String value2) {
            addCriterion("nation not between", value1, value2, "nation");
            return (Criteria) this;
        }

        public Criteria andIdcardIsNull() {
            addCriterion("idcard is null");
            return (Criteria) this;
        }

        public Criteria andIdcardIsNotNull() {
            addCriterion("idcard is not null");
            return (Criteria) this;
        }

        public Criteria andIdcardEqualTo(String value) {
            addCriterion("idcard =", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotEqualTo(String value) {
            addCriterion("idcard <>", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardGreaterThan(String value) {
            addCriterion("idcard >", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardGreaterThanOrEqualTo(String value) {
            addCriterion("idcard >=", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardLessThan(String value) {
            addCriterion("idcard <", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardLessThanOrEqualTo(String value) {
            addCriterion("idcard <=", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardLike(String value) {
            addCriterion("idcard like", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotLike(String value) {
            addCriterion("idcard not like", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardIn(List<String> values) {
            addCriterion("idcard in", values, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotIn(List<String> values) {
            addCriterion("idcard not in", values, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardBetween(String value1, String value2) {
            addCriterion("idcard between", value1, value2, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotBetween(String value1, String value2) {
            addCriterion("idcard not between", value1, value2, "idcard");
            return (Criteria) this;
        }

        public Criteria andClassesIsNull() {
            addCriterion("classes is null");
            return (Criteria) this;
        }

        public Criteria andClassesIsNotNull() {
            addCriterion("classes is not null");
            return (Criteria) this;
        }

        public Criteria andClassesEqualTo(String value) {
            addCriterion("classes =", value, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesNotEqualTo(String value) {
            addCriterion("classes <>", value, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesGreaterThan(String value) {
            addCriterion("classes >", value, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesGreaterThanOrEqualTo(String value) {
            addCriterion("classes >=", value, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesLessThan(String value) {
            addCriterion("classes <", value, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesLessThanOrEqualTo(String value) {
            addCriterion("classes <=", value, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesLike(String value) {
            addCriterion("classes like", value, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesNotLike(String value) {
            addCriterion("classes not like", value, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesIn(List<String> values) {
            addCriterion("classes in", values, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesNotIn(List<String> values) {
            addCriterion("classes not in", values, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesBetween(String value1, String value2) {
            addCriterion("classes between", value1, value2, "classes");
            return (Criteria) this;
        }

        public Criteria andClassesNotBetween(String value1, String value2) {
            addCriterion("classes not between", value1, value2, "classes");
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

        public Criteria andPhoneEqualTo(String value) {
            addCriterion("phone =", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotEqualTo(String value) {
            addCriterion("phone <>", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThan(String value) {
            addCriterion("phone >", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("phone >=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThan(String value) {
            addCriterion("phone <", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThanOrEqualTo(String value) {
            addCriterion("phone <=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLike(String value) {
            addCriterion("phone like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotLike(String value) {
            addCriterion("phone not like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneIn(List<String> values) {
            addCriterion("phone in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotIn(List<String> values) {
            addCriterion("phone not in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneBetween(String value1, String value2) {
            addCriterion("phone between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotBetween(String value1, String value2) {
            addCriterion("phone not between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andCharaIsNull() {
            addCriterion("chara is null");
            return (Criteria) this;
        }

        public Criteria andCharaIsNotNull() {
            addCriterion("chara is not null");
            return (Criteria) this;
        }

        public Criteria andCharaEqualTo(String value) {
            addCriterion("chara =", value, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaNotEqualTo(String value) {
            addCriterion("chara <>", value, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaGreaterThan(String value) {
            addCriterion("chara >", value, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaGreaterThanOrEqualTo(String value) {
            addCriterion("chara >=", value, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaLessThan(String value) {
            addCriterion("chara <", value, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaLessThanOrEqualTo(String value) {
            addCriterion("chara <=", value, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaLike(String value) {
            addCriterion("chara like", value, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaNotLike(String value) {
            addCriterion("chara not like", value, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaIn(List<String> values) {
            addCriterion("chara in", values, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaNotIn(List<String> values) {
            addCriterion("chara not in", values, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaBetween(String value1, String value2) {
            addCriterion("chara between", value1, value2, "chara");
            return (Criteria) this;
        }

        public Criteria andCharaNotBetween(String value1, String value2) {
            addCriterion("chara not between", value1, value2, "chara");
            return (Criteria) this;
        }

        public Criteria andBirthIsNull() {
            addCriterion("birth is null");
            return (Criteria) this;
        }

        public Criteria andBirthIsNotNull() {
            addCriterion("birth is not null");
            return (Criteria) this;
        }

        public Criteria andBirthEqualTo(Date value) {
            addCriterionForJDBCDate("birth =", value, "birth");
            return (Criteria) this;
        }

        public Criteria andBirthNotEqualTo(Date value) {
            addCriterionForJDBCDate("birth <>", value, "birth");
            return (Criteria) this;
        }

        public Criteria andBirthGreaterThan(Date value) {
            addCriterionForJDBCDate("birth >", value, "birth");
            return (Criteria) this;
        }

        public Criteria andBirthGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("birth >=", value, "birth");
            return (Criteria) this;
        }

        public Criteria andBirthLessThan(Date value) {
            addCriterionForJDBCDate("birth <", value, "birth");
            return (Criteria) this;
        }

        public Criteria andBirthLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("birth <=", value, "birth");
            return (Criteria) this;
        }

        public Criteria andBirthIn(List<Date> values) {
            addCriterionForJDBCDate("birth in", values, "birth");
            return (Criteria) this;
        }

        public Criteria andBirthNotIn(List<Date> values) {
            addCriterionForJDBCDate("birth not in", values, "birth");
            return (Criteria) this;
        }

        public Criteria andBirthBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("birth between", value1, value2, "birth");
            return (Criteria) this;
        }

        public Criteria andBirthNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("birth not between", value1, value2, "birth");
            return (Criteria) this;
        }

        public Criteria andDegreeIsNull() {
            addCriterion("degree is null");
            return (Criteria) this;
        }

        public Criteria andDegreeIsNotNull() {
            addCriterion("degree is not null");
            return (Criteria) this;
        }

        public Criteria andDegreeEqualTo(String value) {
            addCriterion("degree =", value, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeNotEqualTo(String value) {
            addCriterion("degree <>", value, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeGreaterThan(String value) {
            addCriterion("degree >", value, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeGreaterThanOrEqualTo(String value) {
            addCriterion("degree >=", value, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeLessThan(String value) {
            addCriterion("degree <", value, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeLessThanOrEqualTo(String value) {
            addCriterion("degree <=", value, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeLike(String value) {
            addCriterion("degree like", value, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeNotLike(String value) {
            addCriterion("degree not like", value, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeIn(List<String> values) {
            addCriterion("degree in", values, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeNotIn(List<String> values) {
            addCriterion("degree not in", values, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeBetween(String value1, String value2) {
            addCriterion("degree between", value1, value2, "degree");
            return (Criteria) this;
        }

        public Criteria andDegreeNotBetween(String value1, String value2) {
            addCriterion("degree not between", value1, value2, "degree");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeIsNull() {
            addCriterion("graduateTime is null");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeIsNotNull() {
            addCriterion("graduateTime is not null");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeEqualTo(Date value) {
            addCriterionForJDBCDate("graduateTime =", value, "graduatetime");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("graduateTime <>", value, "graduatetime");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeGreaterThan(Date value) {
            addCriterionForJDBCDate("graduateTime >", value, "graduatetime");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("graduateTime >=", value, "graduatetime");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeLessThan(Date value) {
            addCriterionForJDBCDate("graduateTime <", value, "graduatetime");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("graduateTime <=", value, "graduatetime");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeIn(List<Date> values) {
            addCriterionForJDBCDate("graduateTime in", values, "graduatetime");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("graduateTime not in", values, "graduatetime");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("graduateTime between", value1, value2, "graduatetime");
            return (Criteria) this;
        }

        public Criteria andGraduatetimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("graduateTime not between", value1, value2, "graduatetime");
            return (Criteria) this;
        }

        public Criteria andWorktimeIsNull() {
            addCriterion("workTime is null");
            return (Criteria) this;
        }

        public Criteria andWorktimeIsNotNull() {
            addCriterion("workTime is not null");
            return (Criteria) this;
        }

        public Criteria andWorktimeEqualTo(Date value) {
            addCriterionForJDBCDate("workTime =", value, "worktime");
            return (Criteria) this;
        }

        public Criteria andWorktimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("workTime <>", value, "worktime");
            return (Criteria) this;
        }

        public Criteria andWorktimeGreaterThan(Date value) {
            addCriterionForJDBCDate("workTime >", value, "worktime");
            return (Criteria) this;
        }

        public Criteria andWorktimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("workTime >=", value, "worktime");
            return (Criteria) this;
        }

        public Criteria andWorktimeLessThan(Date value) {
            addCriterionForJDBCDate("workTime <", value, "worktime");
            return (Criteria) this;
        }

        public Criteria andWorktimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("workTime <=", value, "worktime");
            return (Criteria) this;
        }

        public Criteria andWorktimeIn(List<Date> values) {
            addCriterionForJDBCDate("workTime in", values, "worktime");
            return (Criteria) this;
        }

        public Criteria andWorktimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("workTime not in", values, "worktime");
            return (Criteria) this;
        }

        public Criteria andWorktimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("workTime between", value1, value2, "worktime");
            return (Criteria) this;
        }

        public Criteria andWorktimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("workTime not between", value1, value2, "worktime");
            return (Criteria) this;
        }

        public Criteria andPartyIsNull() {
            addCriterion("party is null");
            return (Criteria) this;
        }

        public Criteria andPartyIsNotNull() {
            addCriterion("party is not null");
            return (Criteria) this;
        }

        public Criteria andPartyEqualTo(String value) {
            addCriterion("party =", value, "party");
            return (Criteria) this;
        }

        public Criteria andPartyNotEqualTo(String value) {
            addCriterion("party <>", value, "party");
            return (Criteria) this;
        }

        public Criteria andPartyGreaterThan(String value) {
            addCriterion("party >", value, "party");
            return (Criteria) this;
        }

        public Criteria andPartyGreaterThanOrEqualTo(String value) {
            addCriterion("party >=", value, "party");
            return (Criteria) this;
        }

        public Criteria andPartyLessThan(String value) {
            addCriterion("party <", value, "party");
            return (Criteria) this;
        }

        public Criteria andPartyLessThanOrEqualTo(String value) {
            addCriterion("party <=", value, "party");
            return (Criteria) this;
        }

        public Criteria andPartyLike(String value) {
            addCriterion("party like", value, "party");
            return (Criteria) this;
        }

        public Criteria andPartyNotLike(String value) {
            addCriterion("party not like", value, "party");
            return (Criteria) this;
        }

        public Criteria andPartyIn(List<String> values) {
            addCriterion("party in", values, "party");
            return (Criteria) this;
        }

        public Criteria andPartyNotIn(List<String> values) {
            addCriterion("party not in", values, "party");
            return (Criteria) this;
        }

        public Criteria andPartyBetween(String value1, String value2) {
            addCriterion("party between", value1, value2, "party");
            return (Criteria) this;
        }

        public Criteria andPartyNotBetween(String value1, String value2) {
            addCriterion("party not between", value1, value2, "party");
            return (Criteria) this;
        }

        public Criteria andDutyIsNull() {
            addCriterion("duty is null");
            return (Criteria) this;
        }

        public Criteria andDutyIsNotNull() {
            addCriterion("duty is not null");
            return (Criteria) this;
        }

        public Criteria andDutyEqualTo(String value) {
            addCriterion("duty =", value, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyNotEqualTo(String value) {
            addCriterion("duty <>", value, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyGreaterThan(String value) {
            addCriterion("duty >", value, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyGreaterThanOrEqualTo(String value) {
            addCriterion("duty >=", value, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyLessThan(String value) {
            addCriterion("duty <", value, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyLessThanOrEqualTo(String value) {
            addCriterion("duty <=", value, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyLike(String value) {
            addCriterion("duty like", value, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyNotLike(String value) {
            addCriterion("duty not like", value, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyIn(List<String> values) {
            addCriterion("duty in", values, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyNotIn(List<String> values) {
            addCriterion("duty not in", values, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyBetween(String value1, String value2) {
            addCriterion("duty between", value1, value2, "duty");
            return (Criteria) this;
        }

        public Criteria andDutyNotBetween(String value1, String value2) {
            addCriterion("duty not between", value1, value2, "duty");
            return (Criteria) this;
        }

        public Criteria andEngagetimeIsNull() {
            addCriterion("engageTime is null");
            return (Criteria) this;
        }

        public Criteria andEngagetimeIsNotNull() {
            addCriterion("engageTime is not null");
            return (Criteria) this;
        }

        public Criteria andEngagetimeEqualTo(Date value) {
            addCriterionForJDBCDate("engageTime =", value, "engagetime");
            return (Criteria) this;
        }

        public Criteria andEngagetimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("engageTime <>", value, "engagetime");
            return (Criteria) this;
        }

        public Criteria andEngagetimeGreaterThan(Date value) {
            addCriterionForJDBCDate("engageTime >", value, "engagetime");
            return (Criteria) this;
        }

        public Criteria andEngagetimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("engageTime >=", value, "engagetime");
            return (Criteria) this;
        }

        public Criteria andEngagetimeLessThan(Date value) {
            addCriterionForJDBCDate("engageTime <", value, "engagetime");
            return (Criteria) this;
        }

        public Criteria andEngagetimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("engageTime <=", value, "engagetime");
            return (Criteria) this;
        }

        public Criteria andEngagetimeIn(List<Date> values) {
            addCriterionForJDBCDate("engageTime in", values, "engagetime");
            return (Criteria) this;
        }

        public Criteria andEngagetimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("engageTime not in", values, "engagetime");
            return (Criteria) this;
        }

        public Criteria andEngagetimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("engageTime between", value1, value2, "engagetime");
            return (Criteria) this;
        }

        public Criteria andEngagetimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("engageTime not between", value1, value2, "engagetime");
            return (Criteria) this;
        }

        public Criteria andTechnicalIsNull() {
            addCriterion("technical is null");
            return (Criteria) this;
        }

        public Criteria andTechnicalIsNotNull() {
            addCriterion("technical is not null");
            return (Criteria) this;
        }

        public Criteria andTechnicalEqualTo(String value) {
            addCriterion("technical =", value, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalNotEqualTo(String value) {
            addCriterion("technical <>", value, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalGreaterThan(String value) {
            addCriterion("technical >", value, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalGreaterThanOrEqualTo(String value) {
            addCriterion("technical >=", value, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalLessThan(String value) {
            addCriterion("technical <", value, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalLessThanOrEqualTo(String value) {
            addCriterion("technical <=", value, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalLike(String value) {
            addCriterion("technical like", value, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalNotLike(String value) {
            addCriterion("technical not like", value, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalIn(List<String> values) {
            addCriterion("technical in", values, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalNotIn(List<String> values) {
            addCriterion("technical not in", values, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalBetween(String value1, String value2) {
            addCriterion("technical between", value1, value2, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicalNotBetween(String value1, String value2) {
            addCriterion("technical not between", value1, value2, "technical");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeIsNull() {
            addCriterion("technicalTime is null");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeIsNotNull() {
            addCriterion("technicalTime is not null");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeEqualTo(Date value) {
            addCriterionForJDBCDate("technicalTime =", value, "technicaltime");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("technicalTime <>", value, "technicaltime");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeGreaterThan(Date value) {
            addCriterionForJDBCDate("technicalTime >", value, "technicaltime");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("technicalTime >=", value, "technicaltime");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeLessThan(Date value) {
            addCriterionForJDBCDate("technicalTime <", value, "technicaltime");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("technicalTime <=", value, "technicaltime");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeIn(List<Date> values) {
            addCriterionForJDBCDate("technicalTime in", values, "technicaltime");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("technicalTime not in", values, "technicaltime");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("technicalTime between", value1, value2, "technicaltime");
            return (Criteria) this;
        }

        public Criteria andTechnicaltimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("technicalTime not between", value1, value2, "technicaltime");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionIsNull() {
            addCriterion("teacherPosition is null");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionIsNotNull() {
            addCriterion("teacherPosition is not null");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionEqualTo(String value) {
            addCriterion("teacherPosition =", value, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionNotEqualTo(String value) {
            addCriterion("teacherPosition <>", value, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionGreaterThan(String value) {
            addCriterion("teacherPosition >", value, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionGreaterThanOrEqualTo(String value) {
            addCriterion("teacherPosition >=", value, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionLessThan(String value) {
            addCriterion("teacherPosition <", value, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionLessThanOrEqualTo(String value) {
            addCriterion("teacherPosition <=", value, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionLike(String value) {
            addCriterion("teacherPosition like", value, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionNotLike(String value) {
            addCriterion("teacherPosition not like", value, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionIn(List<String> values) {
            addCriterion("teacherPosition in", values, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionNotIn(List<String> values) {
            addCriterion("teacherPosition not in", values, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionBetween(String value1, String value2) {
            addCriterion("teacherPosition between", value1, value2, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeacherpositionNotBetween(String value1, String value2) {
            addCriterion("teacherPosition not between", value1, value2, "teacherposition");
            return (Criteria) this;
        }

        public Criteria andTeachertimeIsNull() {
            addCriterion("teacherTime is null");
            return (Criteria) this;
        }

        public Criteria andTeachertimeIsNotNull() {
            addCriterion("teacherTime is not null");
            return (Criteria) this;
        }

        public Criteria andTeachertimeEqualTo(Date value) {
            addCriterionForJDBCDate("teacherTime =", value, "teachertime");
            return (Criteria) this;
        }

        public Criteria andTeachertimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("teacherTime <>", value, "teachertime");
            return (Criteria) this;
        }

        public Criteria andTeachertimeGreaterThan(Date value) {
            addCriterionForJDBCDate("teacherTime >", value, "teachertime");
            return (Criteria) this;
        }

        public Criteria andTeachertimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("teacherTime >=", value, "teachertime");
            return (Criteria) this;
        }

        public Criteria andTeachertimeLessThan(Date value) {
            addCriterionForJDBCDate("teacherTime <", value, "teachertime");
            return (Criteria) this;
        }

        public Criteria andTeachertimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("teacherTime <=", value, "teachertime");
            return (Criteria) this;
        }

        public Criteria andTeachertimeIn(List<Date> values) {
            addCriterionForJDBCDate("teacherTime in", values, "teachertime");
            return (Criteria) this;
        }

        public Criteria andTeachertimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("teacherTime not in", values, "teachertime");
            return (Criteria) this;
        }

        public Criteria andTeachertimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("teacherTime between", value1, value2, "teachertime");
            return (Criteria) this;
        }

        public Criteria andTeachertimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("teacherTime not between", value1, value2, "teachertime");
            return (Criteria) this;
        }

        public Criteria andTutorIsNull() {
            addCriterion("tutor is null");
            return (Criteria) this;
        }

        public Criteria andTutorIsNotNull() {
            addCriterion("tutor is not null");
            return (Criteria) this;
        }

        public Criteria andTutorEqualTo(String value) {
            addCriterion("tutor =", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorNotEqualTo(String value) {
            addCriterion("tutor <>", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorGreaterThan(String value) {
            addCriterion("tutor >", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorGreaterThanOrEqualTo(String value) {
            addCriterion("tutor >=", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorLessThan(String value) {
            addCriterion("tutor <", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorLessThanOrEqualTo(String value) {
            addCriterion("tutor <=", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorLike(String value) {
            addCriterion("tutor like", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorNotLike(String value) {
            addCriterion("tutor not like", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorIn(List<String> values) {
            addCriterion("tutor in", values, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorNotIn(List<String> values) {
            addCriterion("tutor not in", values, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorBetween(String value1, String value2) {
            addCriterion("tutor between", value1, value2, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorNotBetween(String value1, String value2) {
            addCriterion("tutor not between", value1, value2, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutortimeIsNull() {
            addCriterion("tutorTime is null");
            return (Criteria) this;
        }

        public Criteria andTutortimeIsNotNull() {
            addCriterion("tutorTime is not null");
            return (Criteria) this;
        }

        public Criteria andTutortimeEqualTo(Date value) {
            addCriterionForJDBCDate("tutorTime =", value, "tutortime");
            return (Criteria) this;
        }

        public Criteria andTutortimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("tutorTime <>", value, "tutortime");
            return (Criteria) this;
        }

        public Criteria andTutortimeGreaterThan(Date value) {
            addCriterionForJDBCDate("tutorTime >", value, "tutortime");
            return (Criteria) this;
        }

        public Criteria andTutortimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("tutorTime >=", value, "tutortime");
            return (Criteria) this;
        }

        public Criteria andTutortimeLessThan(Date value) {
            addCriterionForJDBCDate("tutorTime <", value, "tutortime");
            return (Criteria) this;
        }

        public Criteria andTutortimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("tutorTime <=", value, "tutortime");
            return (Criteria) this;
        }

        public Criteria andTutortimeIn(List<Date> values) {
            addCriterionForJDBCDate("tutorTime in", values, "tutortime");
            return (Criteria) this;
        }

        public Criteria andTutortimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("tutorTime not in", values, "tutortime");
            return (Criteria) this;
        }

        public Criteria andTutortimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("tutorTime between", value1, value2, "tutortime");
            return (Criteria) this;
        }

        public Criteria andTutortimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("tutorTime not between", value1, value2, "tutortime");
            return (Criteria) this;
        }

        public Criteria andGidIsNull() {
            addCriterion("gId is null");
            return (Criteria) this;
        }

        public Criteria andGidIsNotNull() {
            addCriterion("gId is not null");
            return (Criteria) this;
        }

        public Criteria andGidEqualTo(Integer value) {
            addCriterion("gId =", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidNotEqualTo(Integer value) {
            addCriterion("gId <>", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidGreaterThan(Integer value) {
            addCriterion("gId >", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidGreaterThanOrEqualTo(Integer value) {
            addCriterion("gId >=", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidLessThan(Integer value) {
            addCriterion("gId <", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidLessThanOrEqualTo(Integer value) {
            addCriterion("gId <=", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidIn(List<Integer> values) {
            addCriterion("gId in", values, "gid");
            return (Criteria) this;
        }

        public Criteria andGidNotIn(List<Integer> values) {
            addCriterion("gId not in", values, "gid");
            return (Criteria) this;
        }

        public Criteria andGidBetween(Integer value1, Integer value2) {
            addCriterion("gId between", value1, value2, "gid");
            return (Criteria) this;
        }

        public Criteria andGidNotBetween(Integer value1, Integer value2) {
            addCriterion("gId not between", value1, value2, "gid");
            return (Criteria) this;
        }

        public Criteria andQxIsNull() {
            addCriterion("qx is null");
            return (Criteria) this;
        }

        public Criteria andQxIsNotNull() {
            addCriterion("qx is not null");
            return (Criteria) this;
        }

        public Criteria andQxEqualTo(String value) {
            addCriterion("qx =", value, "qx");
            return (Criteria) this;
        }

        public Criteria andQxNotEqualTo(String value) {
            addCriterion("qx <>", value, "qx");
            return (Criteria) this;
        }

        public Criteria andQxGreaterThan(String value) {
            addCriterion("qx >", value, "qx");
            return (Criteria) this;
        }

        public Criteria andQxGreaterThanOrEqualTo(String value) {
            addCriterion("qx >=", value, "qx");
            return (Criteria) this;
        }

        public Criteria andQxLessThan(String value) {
            addCriterion("qx <", value, "qx");
            return (Criteria) this;
        }

        public Criteria andQxLessThanOrEqualTo(String value) {
            addCriterion("qx <=", value, "qx");
            return (Criteria) this;
        }

        public Criteria andQxLike(String value) {
            addCriterion("qx like", value, "qx");
            return (Criteria) this;
        }

        public Criteria andQxNotLike(String value) {
            addCriterion("qx not like", value, "qx");
            return (Criteria) this;
        }

        public Criteria andQxIn(List<String> values) {
            addCriterion("qx in", values, "qx");
            return (Criteria) this;
        }

        public Criteria andQxNotIn(List<String> values) {
            addCriterion("qx not in", values, "qx");
            return (Criteria) this;
        }

        public Criteria andQxBetween(String value1, String value2) {
            addCriterion("qx between", value1, value2, "qx");
            return (Criteria) this;
        }

        public Criteria andQxNotBetween(String value1, String value2) {
            addCriterion("qx not between", value1, value2, "qx");
            return (Criteria) this;
        }

        public Criteria andPasswordIsNull() {
            addCriterion("password is null");
            return (Criteria) this;
        }

        public Criteria andPasswordIsNotNull() {
            addCriterion("password is not null");
            return (Criteria) this;
        }

        public Criteria andPasswordEqualTo(String value) {
            addCriterion("password =", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotEqualTo(String value) {
            addCriterion("password <>", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordGreaterThan(String value) {
            addCriterion("password >", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("password >=", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLessThan(String value) {
            addCriterion("password <", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLessThanOrEqualTo(String value) {
            addCriterion("password <=", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLike(String value) {
            addCriterion("password like", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotLike(String value) {
            addCriterion("password not like", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordIn(List<String> values) {
            addCriterion("password in", values, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotIn(List<String> values) {
            addCriterion("password not in", values, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordBetween(String value1, String value2) {
            addCriterion("password between", value1, value2, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotBetween(String value1, String value2) {
            addCriterion("password not between", value1, value2, "password");
            return (Criteria) this;
        }

        public Criteria andRolenameIsNull() {
            addCriterion("roleName is null");
            return (Criteria) this;
        }

        public Criteria andRolenameIsNotNull() {
            addCriterion("roleName is not null");
            return (Criteria) this;
        }

        public Criteria andRolenameEqualTo(String value) {
            addCriterion("roleName =", value, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameNotEqualTo(String value) {
            addCriterion("roleName <>", value, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameGreaterThan(String value) {
            addCriterion("roleName >", value, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameGreaterThanOrEqualTo(String value) {
            addCriterion("roleName >=", value, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameLessThan(String value) {
            addCriterion("roleName <", value, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameLessThanOrEqualTo(String value) {
            addCriterion("roleName <=", value, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameLike(String value) {
            addCriterion("roleName like", value, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameNotLike(String value) {
            addCriterion("roleName not like", value, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameIn(List<String> values) {
            addCriterion("roleName in", values, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameNotIn(List<String> values) {
            addCriterion("roleName not in", values, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameBetween(String value1, String value2) {
            addCriterion("roleName between", value1, value2, "rolename");
            return (Criteria) this;
        }

        public Criteria andRolenameNotBetween(String value1, String value2) {
            addCriterion("roleName not between", value1, value2, "rolename");
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