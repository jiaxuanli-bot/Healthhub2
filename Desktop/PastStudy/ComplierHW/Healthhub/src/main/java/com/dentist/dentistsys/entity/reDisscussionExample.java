package com.dentist.dentistsys.entity;

import java.util.ArrayList;
import java.util.List;

public class reDisscussionExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public reDisscussionExample() {
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

        public Criteria andDisnameIsNull() {
            addCriterion("disname is null");
            return (Criteria) this;
        }

        public Criteria andDisnameIsNotNull() {
            addCriterion("disname is not null");
            return (Criteria) this;
        }

        public Criteria andDisnameEqualTo(String value) {
            addCriterion("disname =", value, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameNotEqualTo(String value) {
            addCriterion("disname <>", value, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameGreaterThan(String value) {
            addCriterion("disname >", value, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameGreaterThanOrEqualTo(String value) {
            addCriterion("disname >=", value, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameLessThan(String value) {
            addCriterion("disname <", value, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameLessThanOrEqualTo(String value) {
            addCriterion("disname <=", value, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameLike(String value) {
            addCriterion("disname like", value, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameNotLike(String value) {
            addCriterion("disname not like", value, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameIn(List<String> values) {
            addCriterion("disname in", values, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameNotIn(List<String> values) {
            addCriterion("disname not in", values, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameBetween(String value1, String value2) {
            addCriterion("disname between", value1, value2, "disname");
            return (Criteria) this;
        }

        public Criteria andDisnameNotBetween(String value1, String value2) {
            addCriterion("disname not between", value1, value2, "disname");
            return (Criteria) this;
        }

        public Criteria andDisdateIsNull() {
            addCriterion("disdate is null");
            return (Criteria) this;
        }

        public Criteria andDisdateIsNotNull() {
            addCriterion("disdate is not null");
            return (Criteria) this;
        }

        public Criteria andDisdateEqualTo(String value) {
            addCriterion("disdate =", value, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateNotEqualTo(String value) {
            addCriterion("disdate <>", value, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateGreaterThan(String value) {
            addCriterion("disdate >", value, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateGreaterThanOrEqualTo(String value) {
            addCriterion("disdate >=", value, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateLessThan(String value) {
            addCriterion("disdate <", value, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateLessThanOrEqualTo(String value) {
            addCriterion("disdate <=", value, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateLike(String value) {
            addCriterion("disdate like", value, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateNotLike(String value) {
            addCriterion("disdate not like", value, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateIn(List<String> values) {
            addCriterion("disdate in", values, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateNotIn(List<String> values) {
            addCriterion("disdate not in", values, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateBetween(String value1, String value2) {
            addCriterion("disdate between", value1, value2, "disdate");
            return (Criteria) this;
        }

        public Criteria andDisdateNotBetween(String value1, String value2) {
            addCriterion("disdate not between", value1, value2, "disdate");
            return (Criteria) this;
        }

        public Criteria andDistypeIsNull() {
            addCriterion("distype is null");
            return (Criteria) this;
        }

        public Criteria andDistypeIsNotNull() {
            addCriterion("distype is not null");
            return (Criteria) this;
        }

        public Criteria andDistypeEqualTo(String value) {
            addCriterion("distype =", value, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeNotEqualTo(String value) {
            addCriterion("distype <>", value, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeGreaterThan(String value) {
            addCriterion("distype >", value, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeGreaterThanOrEqualTo(String value) {
            addCriterion("distype >=", value, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeLessThan(String value) {
            addCriterion("distype <", value, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeLessThanOrEqualTo(String value) {
            addCriterion("distype <=", value, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeLike(String value) {
            addCriterion("distype like", value, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeNotLike(String value) {
            addCriterion("distype not like", value, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeIn(List<String> values) {
            addCriterion("distype in", values, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeNotIn(List<String> values) {
            addCriterion("distype not in", values, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeBetween(String value1, String value2) {
            addCriterion("distype between", value1, value2, "distype");
            return (Criteria) this;
        }

        public Criteria andDistypeNotBetween(String value1, String value2) {
            addCriterion("distype not between", value1, value2, "distype");
            return (Criteria) this;
        }

        public Criteria andDisgroupIsNull() {
            addCriterion("disgroup is null");
            return (Criteria) this;
        }

        public Criteria andDisgroupIsNotNull() {
            addCriterion("disgroup is not null");
            return (Criteria) this;
        }

        public Criteria andDisgroupEqualTo(String value) {
            addCriterion("disgroup =", value, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupNotEqualTo(String value) {
            addCriterion("disgroup <>", value, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupGreaterThan(String value) {
            addCriterion("disgroup >", value, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupGreaterThanOrEqualTo(String value) {
            addCriterion("disgroup >=", value, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupLessThan(String value) {
            addCriterion("disgroup <", value, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupLessThanOrEqualTo(String value) {
            addCriterion("disgroup <=", value, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupLike(String value) {
            addCriterion("disgroup like", value, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupNotLike(String value) {
            addCriterion("disgroup not like", value, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupIn(List<String> values) {
            addCriterion("disgroup in", values, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupNotIn(List<String> values) {
            addCriterion("disgroup not in", values, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupBetween(String value1, String value2) {
            addCriterion("disgroup between", value1, value2, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDisgroupNotBetween(String value1, String value2) {
            addCriterion("disgroup not between", value1, value2, "disgroup");
            return (Criteria) this;
        }

        public Criteria andDistopicIsNull() {
            addCriterion("distopic is null");
            return (Criteria) this;
        }

        public Criteria andDistopicIsNotNull() {
            addCriterion("distopic is not null");
            return (Criteria) this;
        }

        public Criteria andDistopicEqualTo(String value) {
            addCriterion("distopic =", value, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicNotEqualTo(String value) {
            addCriterion("distopic <>", value, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicGreaterThan(String value) {
            addCriterion("distopic >", value, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicGreaterThanOrEqualTo(String value) {
            addCriterion("distopic >=", value, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicLessThan(String value) {
            addCriterion("distopic <", value, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicLessThanOrEqualTo(String value) {
            addCriterion("distopic <=", value, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicLike(String value) {
            addCriterion("distopic like", value, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicNotLike(String value) {
            addCriterion("distopic not like", value, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicIn(List<String> values) {
            addCriterion("distopic in", values, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicNotIn(List<String> values) {
            addCriterion("distopic not in", values, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicBetween(String value1, String value2) {
            addCriterion("distopic between", value1, value2, "distopic");
            return (Criteria) this;
        }

        public Criteria andDistopicNotBetween(String value1, String value2) {
            addCriterion("distopic not between", value1, value2, "distopic");
            return (Criteria) this;
        }

        public Criteria andDiskeywordIsNull() {
            addCriterion("diskeyword is null");
            return (Criteria) this;
        }

        public Criteria andDiskeywordIsNotNull() {
            addCriterion("diskeyword is not null");
            return (Criteria) this;
        }

        public Criteria andDiskeywordEqualTo(String value) {
            addCriterion("diskeyword =", value, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordNotEqualTo(String value) {
            addCriterion("diskeyword <>", value, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordGreaterThan(String value) {
            addCriterion("diskeyword >", value, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordGreaterThanOrEqualTo(String value) {
            addCriterion("diskeyword >=", value, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordLessThan(String value) {
            addCriterion("diskeyword <", value, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordLessThanOrEqualTo(String value) {
            addCriterion("diskeyword <=", value, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordLike(String value) {
            addCriterion("diskeyword like", value, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordNotLike(String value) {
            addCriterion("diskeyword not like", value, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordIn(List<String> values) {
            addCriterion("diskeyword in", values, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordNotIn(List<String> values) {
            addCriterion("diskeyword not in", values, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordBetween(String value1, String value2) {
            addCriterion("diskeyword between", value1, value2, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDiskeywordNotBetween(String value1, String value2) {
            addCriterion("diskeyword not between", value1, value2, "diskeyword");
            return (Criteria) this;
        }

        public Criteria andDismessageIsNull() {
            addCriterion("dismessage is null");
            return (Criteria) this;
        }

        public Criteria andDismessageIsNotNull() {
            addCriterion("dismessage is not null");
            return (Criteria) this;
        }

        public Criteria andDismessageEqualTo(String value) {
            addCriterion("dismessage =", value, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageNotEqualTo(String value) {
            addCriterion("dismessage <>", value, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageGreaterThan(String value) {
            addCriterion("dismessage >", value, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageGreaterThanOrEqualTo(String value) {
            addCriterion("dismessage >=", value, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageLessThan(String value) {
            addCriterion("dismessage <", value, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageLessThanOrEqualTo(String value) {
            addCriterion("dismessage <=", value, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageLike(String value) {
            addCriterion("dismessage like", value, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageNotLike(String value) {
            addCriterion("dismessage not like", value, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageIn(List<String> values) {
            addCriterion("dismessage in", values, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageNotIn(List<String> values) {
            addCriterion("dismessage not in", values, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageBetween(String value1, String value2) {
            addCriterion("dismessage between", value1, value2, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDismessageNotBetween(String value1, String value2) {
            addCriterion("dismessage not between", value1, value2, "dismessage");
            return (Criteria) this;
        }

        public Criteria andDisidIsNull() {
            addCriterion("disid is null");
            return (Criteria) this;
        }

        public Criteria andDisidIsNotNull() {
            addCriterion("disid is not null");
            return (Criteria) this;
        }

        public Criteria andDisidEqualTo(String value) {
            addCriterion("disid =", value, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidNotEqualTo(String value) {
            addCriterion("disid <>", value, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidGreaterThan(String value) {
            addCriterion("disid >", value, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidGreaterThanOrEqualTo(String value) {
            addCriterion("disid >=", value, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidLessThan(String value) {
            addCriterion("disid <", value, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidLessThanOrEqualTo(String value) {
            addCriterion("disid <=", value, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidLike(String value) {
            addCriterion("disid like", value, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidNotLike(String value) {
            addCriterion("disid not like", value, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidIn(List<String> values) {
            addCriterion("disid in", values, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidNotIn(List<String> values) {
            addCriterion("disid not in", values, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidBetween(String value1, String value2) {
            addCriterion("disid between", value1, value2, "disid");
            return (Criteria) this;
        }

        public Criteria andDisidNotBetween(String value1, String value2) {
            addCriterion("disid not between", value1, value2, "disid");
            return (Criteria) this;
        }

        public Criteria andDisparentidIsNull() {
            addCriterion("disparentid is null");
            return (Criteria) this;
        }

        public Criteria andDisparentidIsNotNull() {
            addCriterion("disparentid is not null");
            return (Criteria) this;
        }

        public Criteria andDisparentidEqualTo(String value) {
            addCriterion("disparentid =", value, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidNotEqualTo(String value) {
            addCriterion("disparentid <>", value, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidGreaterThan(String value) {
            addCriterion("disparentid >", value, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidGreaterThanOrEqualTo(String value) {
            addCriterion("disparentid >=", value, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidLessThan(String value) {
            addCriterion("disparentid <", value, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidLessThanOrEqualTo(String value) {
            addCriterion("disparentid <=", value, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidLike(String value) {
            addCriterion("disparentid like", value, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidNotLike(String value) {
            addCriterion("disparentid not like", value, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidIn(List<String> values) {
            addCriterion("disparentid in", values, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidNotIn(List<String> values) {
            addCriterion("disparentid not in", values, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidBetween(String value1, String value2) {
            addCriterion("disparentid between", value1, value2, "disparentid");
            return (Criteria) this;
        }

        public Criteria andDisparentidNotBetween(String value1, String value2) {
            addCriterion("disparentid not between", value1, value2, "disparentid");
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