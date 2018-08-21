package pojo;

import java.util.ArrayList;
import java.util.List;

public class CourseroomExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CourseroomExample() {
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

        public Criteria andCoursenameIsNull() {
            addCriterion("courseName is null");
            return (Criteria) this;
        }

        public Criteria andCoursenameIsNotNull() {
            addCriterion("courseName is not null");
            return (Criteria) this;
        }

        public Criteria andCoursenameEqualTo(String value) {
            addCriterion("courseName =", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotEqualTo(String value) {
            addCriterion("courseName <>", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameGreaterThan(String value) {
            addCriterion("courseName >", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameGreaterThanOrEqualTo(String value) {
            addCriterion("courseName >=", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameLessThan(String value) {
            addCriterion("courseName <", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameLessThanOrEqualTo(String value) {
            addCriterion("courseName <=", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameLike(String value) {
            addCriterion("courseName like", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotLike(String value) {
            addCriterion("courseName not like", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameIn(List<String> values) {
            addCriterion("courseName in", values, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotIn(List<String> values) {
            addCriterion("courseName not in", values, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameBetween(String value1, String value2) {
            addCriterion("courseName between", value1, value2, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotBetween(String value1, String value2) {
            addCriterion("courseName not between", value1, value2, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursecodeIsNull() {
            addCriterion("courseCode is null");
            return (Criteria) this;
        }

        public Criteria andCoursecodeIsNotNull() {
            addCriterion("courseCode is not null");
            return (Criteria) this;
        }

        public Criteria andCoursecodeEqualTo(String value) {
            addCriterion("courseCode =", value, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeNotEqualTo(String value) {
            addCriterion("courseCode <>", value, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeGreaterThan(String value) {
            addCriterion("courseCode >", value, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeGreaterThanOrEqualTo(String value) {
            addCriterion("courseCode >=", value, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeLessThan(String value) {
            addCriterion("courseCode <", value, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeLessThanOrEqualTo(String value) {
            addCriterion("courseCode <=", value, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeLike(String value) {
            addCriterion("courseCode like", value, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeNotLike(String value) {
            addCriterion("courseCode not like", value, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeIn(List<String> values) {
            addCriterion("courseCode in", values, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeNotIn(List<String> values) {
            addCriterion("courseCode not in", values, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeBetween(String value1, String value2) {
            addCriterion("courseCode between", value1, value2, "coursecode");
            return (Criteria) this;
        }

        public Criteria andCoursecodeNotBetween(String value1, String value2) {
            addCriterion("courseCode not between", value1, value2, "coursecode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeIsNull() {
            addCriterion("roomCode is null");
            return (Criteria) this;
        }

        public Criteria andRoomcodeIsNotNull() {
            addCriterion("roomCode is not null");
            return (Criteria) this;
        }

        public Criteria andRoomcodeEqualTo(String value) {
            addCriterion("roomCode =", value, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeNotEqualTo(String value) {
            addCriterion("roomCode <>", value, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeGreaterThan(String value) {
            addCriterion("roomCode >", value, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeGreaterThanOrEqualTo(String value) {
            addCriterion("roomCode >=", value, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeLessThan(String value) {
            addCriterion("roomCode <", value, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeLessThanOrEqualTo(String value) {
            addCriterion("roomCode <=", value, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeLike(String value) {
            addCriterion("roomCode like", value, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeNotLike(String value) {
            addCriterion("roomCode not like", value, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeIn(List<String> values) {
            addCriterion("roomCode in", values, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeNotIn(List<String> values) {
            addCriterion("roomCode not in", values, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeBetween(String value1, String value2) {
            addCriterion("roomCode between", value1, value2, "roomcode");
            return (Criteria) this;
        }

        public Criteria andRoomcodeNotBetween(String value1, String value2) {
            addCriterion("roomCode not between", value1, value2, "roomcode");
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