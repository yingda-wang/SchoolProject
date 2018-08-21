package pojo;

import java.util.ArrayList;
import java.util.List;

public class NotesExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public NotesExample() {
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

        public Criteria andId1IsNull() {
            addCriterion("id1 is null");
            return (Criteria) this;
        }

        public Criteria andId1IsNotNull() {
            addCriterion("id1 is not null");
            return (Criteria) this;
        }

        public Criteria andId1EqualTo(Long value) {
            addCriterion("id1 =", value, "id1");
            return (Criteria) this;
        }

        public Criteria andId1NotEqualTo(Long value) {
            addCriterion("id1 <>", value, "id1");
            return (Criteria) this;
        }

        public Criteria andId1GreaterThan(Long value) {
            addCriterion("id1 >", value, "id1");
            return (Criteria) this;
        }

        public Criteria andId1GreaterThanOrEqualTo(Long value) {
            addCriterion("id1 >=", value, "id1");
            return (Criteria) this;
        }

        public Criteria andId1LessThan(Long value) {
            addCriterion("id1 <", value, "id1");
            return (Criteria) this;
        }

        public Criteria andId1LessThanOrEqualTo(Long value) {
            addCriterion("id1 <=", value, "id1");
            return (Criteria) this;
        }

        public Criteria andId1In(List<Long> values) {
            addCriterion("id1 in", values, "id1");
            return (Criteria) this;
        }

        public Criteria andId1NotIn(List<Long> values) {
            addCriterion("id1 not in", values, "id1");
            return (Criteria) this;
        }

        public Criteria andId1Between(Long value1, Long value2) {
            addCriterion("id1 between", value1, value2, "id1");
            return (Criteria) this;
        }

        public Criteria andId1NotBetween(Long value1, Long value2) {
            addCriterion("id1 not between", value1, value2, "id1");
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

        public Criteria andStudentIsNull() {
            addCriterion("student is null");
            return (Criteria) this;
        }

        public Criteria andStudentIsNotNull() {
            addCriterion("student is not null");
            return (Criteria) this;
        }

        public Criteria andStudentEqualTo(String value) {
            addCriterion("student =", value, "student");
            return (Criteria) this;
        }

        public Criteria andStudentNotEqualTo(String value) {
            addCriterion("student <>", value, "student");
            return (Criteria) this;
        }

        public Criteria andStudentGreaterThan(String value) {
            addCriterion("student >", value, "student");
            return (Criteria) this;
        }

        public Criteria andStudentGreaterThanOrEqualTo(String value) {
            addCriterion("student >=", value, "student");
            return (Criteria) this;
        }

        public Criteria andStudentLessThan(String value) {
            addCriterion("student <", value, "student");
            return (Criteria) this;
        }

        public Criteria andStudentLessThanOrEqualTo(String value) {
            addCriterion("student <=", value, "student");
            return (Criteria) this;
        }

        public Criteria andStudentLike(String value) {
            addCriterion("student like", value, "student");
            return (Criteria) this;
        }

        public Criteria andStudentNotLike(String value) {
            addCriterion("student not like", value, "student");
            return (Criteria) this;
        }

        public Criteria andStudentIn(List<String> values) {
            addCriterion("student in", values, "student");
            return (Criteria) this;
        }

        public Criteria andStudentNotIn(List<String> values) {
            addCriterion("student not in", values, "student");
            return (Criteria) this;
        }

        public Criteria andStudentBetween(String value1, String value2) {
            addCriterion("student between", value1, value2, "student");
            return (Criteria) this;
        }

        public Criteria andStudentNotBetween(String value1, String value2) {
            addCriterion("student not between", value1, value2, "student");
            return (Criteria) this;
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
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

        public Criteria andNfIsNull() {
            addCriterion("nf is null");
            return (Criteria) this;
        }

        public Criteria andNfIsNotNull() {
            addCriterion("nf is not null");
            return (Criteria) this;
        }

        public Criteria andNfEqualTo(String value) {
            addCriterion("nf =", value, "nf");
            return (Criteria) this;
        }

        public Criteria andNfNotEqualTo(String value) {
            addCriterion("nf <>", value, "nf");
            return (Criteria) this;
        }

        public Criteria andNfGreaterThan(String value) {
            addCriterion("nf >", value, "nf");
            return (Criteria) this;
        }

        public Criteria andNfGreaterThanOrEqualTo(String value) {
            addCriterion("nf >=", value, "nf");
            return (Criteria) this;
        }

        public Criteria andNfLessThan(String value) {
            addCriterion("nf <", value, "nf");
            return (Criteria) this;
        }

        public Criteria andNfLessThanOrEqualTo(String value) {
            addCriterion("nf <=", value, "nf");
            return (Criteria) this;
        }

        public Criteria andNfLike(String value) {
            addCriterion("nf like", value, "nf");
            return (Criteria) this;
        }

        public Criteria andNfNotLike(String value) {
            addCriterion("nf not like", value, "nf");
            return (Criteria) this;
        }

        public Criteria andNfIn(List<String> values) {
            addCriterion("nf in", values, "nf");
            return (Criteria) this;
        }

        public Criteria andNfNotIn(List<String> values) {
            addCriterion("nf not in", values, "nf");
            return (Criteria) this;
        }

        public Criteria andNfBetween(String value1, String value2) {
            addCriterion("nf between", value1, value2, "nf");
            return (Criteria) this;
        }

        public Criteria andNfNotBetween(String value1, String value2) {
            addCriterion("nf not between", value1, value2, "nf");
            return (Criteria) this;
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

        public Criteria andUsernameIsNull() {
            addCriterion("username is null");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNotNull() {
            addCriterion("username is not null");
            return (Criteria) this;
        }

        public Criteria andUsernameEqualTo(String value) {
            addCriterion("username =", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotEqualTo(String value) {
            addCriterion("username <>", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThan(String value) {
            addCriterion("username >", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("username >=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThan(String value) {
            addCriterion("username <", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThanOrEqualTo(String value) {
            addCriterion("username <=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLike(String value) {
            addCriterion("username like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotLike(String value) {
            addCriterion("username not like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameIn(List<String> values) {
            addCriterion("username in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotIn(List<String> values) {
            addCriterion("username not in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameBetween(String value1, String value2) {
            addCriterion("username between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotBetween(String value1, String value2) {
            addCriterion("username not between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andStrIsNull() {
            addCriterion("str is null");
            return (Criteria) this;
        }

        public Criteria andStrIsNotNull() {
            addCriterion("str is not null");
            return (Criteria) this;
        }

        public Criteria andStrEqualTo(String value) {
            addCriterion("str =", value, "str");
            return (Criteria) this;
        }

        public Criteria andStrNotEqualTo(String value) {
            addCriterion("str <>", value, "str");
            return (Criteria) this;
        }

        public Criteria andStrGreaterThan(String value) {
            addCriterion("str >", value, "str");
            return (Criteria) this;
        }

        public Criteria andStrGreaterThanOrEqualTo(String value) {
            addCriterion("str >=", value, "str");
            return (Criteria) this;
        }

        public Criteria andStrLessThan(String value) {
            addCriterion("str <", value, "str");
            return (Criteria) this;
        }

        public Criteria andStrLessThanOrEqualTo(String value) {
            addCriterion("str <=", value, "str");
            return (Criteria) this;
        }

        public Criteria andStrLike(String value) {
            addCriterion("str like", value, "str");
            return (Criteria) this;
        }

        public Criteria andStrNotLike(String value) {
            addCriterion("str not like", value, "str");
            return (Criteria) this;
        }

        public Criteria andStrIn(List<String> values) {
            addCriterion("str in", values, "str");
            return (Criteria) this;
        }

        public Criteria andStrNotIn(List<String> values) {
            addCriterion("str not in", values, "str");
            return (Criteria) this;
        }

        public Criteria andStrBetween(String value1, String value2) {
            addCriterion("str between", value1, value2, "str");
            return (Criteria) this;
        }

        public Criteria andStrNotBetween(String value1, String value2) {
            addCriterion("str not between", value1, value2, "str");
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

        public Criteria andXuehaoIsNull() {
            addCriterion("xuehao is null");
            return (Criteria) this;
        }

        public Criteria andXuehaoIsNotNull() {
            addCriterion("xuehao is not null");
            return (Criteria) this;
        }

        public Criteria andXuehaoEqualTo(String value) {
            addCriterion("xuehao =", value, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoNotEqualTo(String value) {
            addCriterion("xuehao <>", value, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoGreaterThan(String value) {
            addCriterion("xuehao >", value, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoGreaterThanOrEqualTo(String value) {
            addCriterion("xuehao >=", value, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoLessThan(String value) {
            addCriterion("xuehao <", value, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoLessThanOrEqualTo(String value) {
            addCriterion("xuehao <=", value, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoLike(String value) {
            addCriterion("xuehao like", value, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoNotLike(String value) {
            addCriterion("xuehao not like", value, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoIn(List<String> values) {
            addCriterion("xuehao in", values, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoNotIn(List<String> values) {
            addCriterion("xuehao not in", values, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoBetween(String value1, String value2) {
            addCriterion("xuehao between", value1, value2, "xuehao");
            return (Criteria) this;
        }

        public Criteria andXuehaoNotBetween(String value1, String value2) {
            addCriterion("xuehao not between", value1, value2, "xuehao");
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