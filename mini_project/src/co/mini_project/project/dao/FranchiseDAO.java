package co.mini_project.project.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mini_project.project.common.DAO;
import co.mini_project.project.vo.FranchiseVO;

public class FranchiseDAO extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;

	public ArrayList<FranchiseVO> selectList() {
		ArrayList<FranchiseVO> list = new ArrayList<FranchiseVO>();
		String sql = "SELECT * FROM FRANCHISE ORDER BY 1";
		try {
			PreparedStatement psmt = conn.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				FranchiseVO vo = new FranchiseVO();
				vo.setfNumber(rs.getInt("fnumber"));
				vo.setfName(rs.getString("fname"));
				vo.setfEmail(rs.getString("femail"));
				vo.setfAge(rs.getInt("fage"));
				vo.setfTel(rs.getString("ftel"));
				vo.setfAddress(rs.getString("faddress"));
				vo.setfContent(rs.getString("fcontent"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public int insert(FranchiseVO vo) {
		int n = 0;
		String sql = "INSERT INTO FRANCHISE(FNUMBER, FNAME, FEMAIL, FAGE, FTEL, FADDRESS, FCONTENT) "
				   + "VALUES(PRO_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getfName());
			psmt.setString(2, vo.getfEmail());
			psmt.setInt(3, vo.getfAge());
			psmt.setString(4, vo.getfTel());
			psmt.setString(5, vo.getfAddress());
			psmt.setString(6, vo.getfContent());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return n;
	}

	public int delete(FranchiseVO vo) {
		int n = 0;
		String sql = "DELETE FROM FRANCHISE WHERE FNUMBER = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getfNumber());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return n;
	}

	public int update(FranchiseVO vo) {
		int n = 0;
		String sql = "UPDATE FRANCHISE SET FNAME = ?, FEMAIL = ?, FAGE = ?, FTEL = ?, FADDRESS = ?, FCONTENT = ? WHERE FNUMBER = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getfName());
			psmt.setString(2, vo.getfEmail());
			psmt.setInt(3, vo.getfAge());
			psmt.setString(4, vo.getfTel());
			psmt.setString(5, vo.getfAddress());
			psmt.setString(6, vo.getfContent());
			psmt.setInt(7, vo.getfNumber());
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