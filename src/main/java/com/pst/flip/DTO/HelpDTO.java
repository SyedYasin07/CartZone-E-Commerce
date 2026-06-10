package com.pst.flip.DTO;

public class HelpDTO {
	  private int ticketId;
	    private int userId;
	    private String issueType;
	    private String description;
	    private String status;
		public int getTicketId() {
			return ticketId;
		}
		public void setTicketId(int ticketId) {
			this.ticketId = ticketId;
		}
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public String getIssueType() {
			return issueType;
		}
		public void setIssueType(String issueType) {
			this.issueType = issueType;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}

}
