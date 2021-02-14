package co.mini_project.project.app.store;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/FileUploadUp.do") // --storeUpdate.do--
@MultipartConfig(maxFileSize = -1, maxRequestSize = -1, fileSizeThreshold = 1024)
public class FileUploadUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CHARSET = "utf-8";

	public FileUploadUp() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding(CHARSET);
		String ATTACHES_DIR = "/img";
		PrintWriter out = response.getWriter();
		String contentType = request.getContentType();

		if (contentType != null && contentType.toLowerCase().startsWith("multipart/")) {
			// getParts()를 통해 Body에 넘어온 데이터들을 각각의 Part로 쪼개어 리턴
			Collection<Part> parts = request.getParts();

			for (Part part : parts) {
				System.out.printf("파라미터 명 : %s, contentType :  %s,  size : %d bytes \n", part.getName(),
						part.getContentType(), part.getSize());

				if (part.getHeader("Content-Disposition").contains("filename=")) {
					String fileName = extractFileName(part.getHeader("Content-Disposition"));

					if (part.getSize() > 0) {
						System.out.printf("업로드 파일 명 : %s  \n", fileName);
						part.write(ATTACHES_DIR + File.separator + fileName);
						part.delete();
					}
				} else {
					String formValue = request.getParameter(part.getName());
					System.out.printf("name : %s, value : %s  \n", part.getName(), formValue);
				}
			}

			out.println("<h1>업로드 완료</h1>");
		} else {
			out.println("<h1>enctype이 multipart/form-data가  아님</h1>");
		}

		RequestDispatcher dispatcher1 = request.getRequestDispatcher("storeUpdate.do");
		dispatcher1.forward(request, response);

	}

	private String extractFileName(String partHeader) { // 파일명 추출
		for (String cd : partHeader.split(";")) {
			if (cd.trim().startsWith("filename")) {
				String fileName = cd.substring(cd.indexOf("=") + 1).trim().replace("\"", "");
				;
				int index = fileName.lastIndexOf(File.separator);
				return fileName.substring(index + 1);
			}
		}
		return null;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
