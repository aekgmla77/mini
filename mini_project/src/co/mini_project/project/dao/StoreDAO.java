package co.mini_project.project.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mini_project.project.common.DAO;
import co.mini_project.project.vo.StoreVO;

public class StoreDAO extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;

	public ArrayList<StoreVO> selectList() { // 매장 전체 리스트
		ArrayList<StoreVO> list = new ArrayList<StoreVO>();
		String sql = "SELECT * FROM STORE ORDER BY 1";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				StoreVO vo = new StoreVO();
				vo.setsNumber(rs.getInt("sNumber"));
				vo.setsName(rs.getString("sName"));
				vo.setsTel(rs.getString("sTel"));
				vo.setsAddress(rs.getString("sAddress"));
				vo.setsContent(rs.getString("sContent"));
				vo.setsImage(rs.getString("sImage"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public int insert(StoreVO vo) { // 매장 입력
		int n = 0;
		String sql = "INSERT INTO STORE(SNUMBER, SNAME, STEL, SADDRESS, SCONTENT, SIMAGE) VALUES(PRO_SEQ.NEXTVAL, ?, ?, ?, ?, ?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getsName());
			psmt.setString(2, vo.getsTel());
			psmt.setString(3, vo.getsAddress());
			psmt.setString(4, vo.getsContent());
			psmt.setString(5, vo.getsImage());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int delete(StoreVO vo) { // 매장 삭제
		int n = 0;
		String sql = "DELETE FROM STORE WHERE SNUMBER = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getsNumber());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int update(StoreVO vo) { // 매장 수정
		int n = 0;
		String sql = "UPDATE STORE SET SNAME = ?, STEL = ?, SADDRESS = ?, SCONTENT = ?, SIMAGE = ? WHERE SNUMBER = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getsName());
			psmt.setString(2, vo.getsTel());
			psmt.setString(3, vo.getsAddress());
			psmt.setString(4, vo.getsContent());
			psmt.setString(5, vo.getsImage()); 
			psmt.setInt(6, vo.getsNumber());
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
