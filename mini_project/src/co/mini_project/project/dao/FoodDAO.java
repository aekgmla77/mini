package co.mini_project.project.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mini_project.project.common.DAO;
import co.mini_project.project.vo.FoodVO;

public class FoodDAO extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;

	public ArrayList<FoodVO> selectList() {
		ArrayList<FoodVO> list = new ArrayList<FoodVO>();
		String sql = "SELECT * FROM MENU ORDER BY 1";
		try {
			PreparedStatement psmt = conn.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				FoodVO vo = new FoodVO();
				vo.setmNumber(rs.getInt("menunumber"));
				vo.setmKind(rs.getString("menukind"));
				vo.setmName(rs.getString("menuname"));
				vo.setmPrice(rs.getString("menuprice"));
				vo.setmContent(rs.getString("menucontent"));
				vo.setmImage(rs.getString("menuimage"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public int insert(FoodVO vo) {
		int n = 0;
		String sql = "INSERT INTO MENU(MENUNUMBER, MENUKIND, MENUNAME, MENUPRICE, MENUCONTENT, MENUIMAGE) VALUES(PRO_SEQ.NEXTVAL, ?, ?, ?, ?, ?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmKind());
			psmt.setString(2, vo.getmName());
			psmt.setString(3, vo.getmPrice());
			psmt.setString(4, vo.getmContent());
			psmt.setString(5, vo.getmImage());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return n;
	}

	public int delete(FoodVO vo) {
		int n = 0;
		String sql = "DELETE FROM MENU WHERE MENUNUMBER = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getmNumber());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return n;
	}

	public int update(FoodVO vo) {
		int n = 0;
		String sql = "UPDATE MENU SET MENUKIND = ?, MENUNAME = ?, MENUPRICE = ?, MENUCONTENT = ?, MENUIMAGE = ? WHERE MENUNUMBER = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmKind());
			psmt.setString(2, vo.getmName());
			psmt.setString(3, vo.getmPrice());
			psmt.setString(4, vo.getmContent());
			psmt.setString(5, vo.getmImage());
			psmt.setInt(6, vo.getmNumber());
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
