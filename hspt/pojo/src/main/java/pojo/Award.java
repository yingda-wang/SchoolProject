package pojo;

import java.sql.Date;

public class Award {
	    private Integer id;

	    private int gId;
	    private String type;

	    private String name;

	    private String grade;

	    public int getgId() {
			return gId;
		}

		public void setgId(int gId) {
			this.gId = gId;
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getGrade() {
			return grade;
		}

		public void setGrade(String grade) {
			this.grade = grade;
		}

		public String getRank() {
			return rank;
		}

		public void setRank(String rank) {
			this.rank = rank;
		}

		public Date getTime() {
			return time;
		}

		public void setTime(Date time) {
			this.time = time;
		}

		private String rank;

	    private Date time;

}
