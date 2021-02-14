package co.mini_project.project.vo;

public class MemberVO {

	private int mNumber;
	private String mId;
	private String mPassword;
	private String mName;
	private String mBirth;
	private String mTel;
	private String mAddress;
	private String mEmail;
	private String admin;
	private String detailAdr;
	private String postCode;

	public MemberVO() {

	}

	public String getDetailAdr() {
		return detailAdr;
	}

	public void setDetailAdr(String detailAdr) {
		this.detailAdr = detailAdr;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public int getmNumber() {
		return mNumber;
	}

	public void setmNumber(int mNumber) {
		this.mNumber = mNumber;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmPassword() {
		return mPassword;
	}

	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmBirth() {
		return mBirth;
	}

	public void setmBirth(String mBirth) {
		this.mBirth = mBirth;
	}

	public String getmTel() {
		return mTel;
	}

	public void setmTel(String mTel) {
		this.mTel = mTel;
	}

	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

}
