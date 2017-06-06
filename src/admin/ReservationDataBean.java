package admin;

public class ReservationDataBean {
	private int stu_num;
	private int res_time;
	private String res_day;
	private String res_room;
	
	public String getRes_room() {
		return res_room;
	}
	public void setRes_room(String res_room) {
		this.res_room = res_room;
	}
	public String getRes_day() {
		return res_day;
	}
	public void setRes_day(String res_day) {
		this.res_day = res_day;
	}
	public int getStu_num() {
		return stu_num;
	}
	public void setStu_num(int stu_num) {
		this.stu_num = stu_num;
	}
	public int getRes_time() {
		return res_time;
	}
	public void setRes_time(int res_time) {
		this.res_time = res_time;
	}



}
