package iducs.spring.blog1812019.domain;

public class Blogger {
	private long id; // 블로거 식별자
	private String bid; // 블로거 아이디
	private String bpw; // 블로거 암호
	private String bname; // 블로거 이름
	private String bemail; // 블로거 이메일
	//private String bimg; // 블로거 사진 경로
	
	public Blogger()  {}
	public Blogger(String bid, String bpw, String bname, String bemail) {
		this.bid = bid;
		this.bpw = bpw;
		this.bname = bname;
		this.bemail = bemail;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBpw() {
		return bpw;
	}
	public void setBpw(String bpw) {
		this.bpw = bpw;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBemail() {
		return bemail;
	}
	public void setBemail(String bemail) {
		this.bemail = bemail;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bid == null) ? 0 : bid.hashCode());
		result = prime * result + ((bname == null) ? 0 : bname.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Blogger other = (Blogger) obj;
		if (bid == null) {
			if (other.bid != null)
				return false;
		} else if (!bid.equals(other.bid))
			return false;
		if (bname == null) {
			if (other.bname != null)
				return false;
		} else if (!bname.equals(other.bname))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Blogger [id=" + id + ", bid=" + bid + ", bpw=" + bpw + ", bname=" + bname + ", bemail=" + bemail + "]";
	}
	
}
