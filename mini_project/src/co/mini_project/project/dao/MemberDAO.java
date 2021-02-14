package co.mini_project.project.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mini_project.project.common.DAO;
import co.mini_project.project.vo.MemberVO;

public class MemberDAO extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;

	public ArrayList<MemberVO> memberSelectList() { // 멤버 리스트 조회
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		MemberVO vo;
		String sql = "SELECT * FROM MEMBER ORDER BY 1";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new MemberVO();
				vo.setmNumber(rs.getInt("mNumber"));
				vo.setmId(rs.getString("mId"));
				vo.setmPassword(rs.getString("mPassword"));
				vo.setmName(rs.getString("mName"));
				vo.setmBirth(rs.getString("mBirth"));
				vo.setmTel(rs.getString("mTel"));
				vo.setmAddress(rs.getString("mAddress"));
				vo.setmEmail(rs.getString("mEmail"));
				vo.setAdmin(rs.getString("admin"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public int memberInsert(MemberVO vo) { // 회원가입
		int n = 0;
		String sql = "INSERT INTO MEMBER(MNUMBER, MID, MPASSWORD, MNAME, MBIRTH, MTEL, MADDRESS, MEMAIL) "
			       + "VALUES (PRO_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmId());
			psmt.setString(2, vo.getmPassword());
			psmt.setString(3, vo.getmName());
			psmt.setString(4, vo.getmBirth());
			psmt.setString(5, vo.getmTel());
			psmt.setString(6, vo.getmAddress());
			psmt.setString(7, vo.getmEmail());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return n;
	}

	public int memberDelete(MemberVO vo) { // 멤버 리스트 멤버 삭제
		int n = 0;
		String sql = "DELETE FROM MEMBER WHERE MID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmId());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return n;
	}

	public int memberUpdate(MemberVO vo) { // 멤버 리스트 멤버 수정
		int n = 0;
		String sql = "UPDATE MEMBER SET MNAME = ?, MBIRTH = ?, MTEL = ?, MADDRESS = ?, MEMAIL = ? WHERE MID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmName());
			psmt.setString(2, vo.getmBirth());
			psmt.setString(3, vo.getmTel());
			psmt.setString(4, vo.getmAddress());
			psmt.setString(5, vo.getmEmail());
			psmt.setString(6, vo.getmId());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return n;
	}

	public MemberVO login(MemberVO vo) { // 로그인
		String sql = "SELECT * FROM MEMBER WHERE MID = ? AND MPASSWORD = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmId());
			psmt.setString(2, vo.getmPassword());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo = new MemberVO();
				vo.setmId(rs.getString("mId"));
				vo.setAdmin(rs.getString("admin"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return vo;
	}

	public boolean isIdCheck(String id) { // 로그인 ID중복확인
		boolean bool = true;
		String sql = "SELECT MID FROM MEMBER WHERE MID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				bool = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return bool;
	}

	public MemberVO myEditList(MemberVO vo) { // 내 정보
		String sql = "SELECT * FROM MEMBER WHERE MID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmId());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo = new MemberVO();
				vo.setmId(rs.getString("mId"));
				vo.setmName(rs.getString("mName"));
				vo.setmPassword(rs.getString("mPassword"));
				vo.setmBirth(rs.getString("mBirth"));
				vo.setmTel(rs.getString("mTel"));
				vo.setmAddress(rs.getString("mAddress"));
				vo.setDetailAdr(rs.getString("detailAdr"));
				vo.setPostCode(rs.getString("postCode"));
				vo.setmEmail(rs.getString("mEmail"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return vo;
	}

	public int myEdit(MemberVO vo) { // 내 정보 수정
		int n = 0;
		String sql = "UPDATE MEMBER SET MNAME = ?, MPASSWORD = ?, MBIRTH = ?, MTEL = ?, MADDRESS = ?, MEMAIL = ?, DETAILADR = ?, POSTCODE = ? "
				   + "WHERE MID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmName());
			psmt.setString(2, vo.getmPassword());
			psmt.setString(3, vo.getmBirth());
			psmt.setString(4, vo.getmTel());
			psmt.setString(5, vo.getmAddress());
			psmt.setString(6, vo.getmEmail());
			psmt.setString(7, vo.getDetailAdr());
			psmt.setString(8, vo.getPostCode());
			psmt.setString(9, vo.getmId());

			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return n;
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
