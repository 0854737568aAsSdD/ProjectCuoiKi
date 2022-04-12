package com.dmt.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmt.bo.AddSachBo;

@Controller
public class UpfileSuaSachLenServer {
	@RequestMapping("UpdateOneBookController")
	public String voidshow(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String nameimg = null, tendienthoai = null, manhinh = null;
		String urlimage = null, madienthoai = null, loai = null, hedieuhanh = null, cpu = null;
		String camerasau = null, cameratruoc = null, ram = null, bonhotrong = null;
		int gia = 0;
		DiskFileItemFactory factory = new DiskFileItemFactory();
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		String dirUrl1 = request.getServletContext().getRealPath("") + File.separator + "files";
		response.getWriter().println(dirUrl1);
		System.out.println(dirUrl1);
		try {
			List<FileItem> fileItems = upload.parseRequest(request);// Lấy về các đối tượng gửi lên
			// duyệt qua các đối tượng gửi lên từ client gồm file và các control
			for (FileItem fileItem : fileItems) {
				if (!fileItem.isFormField()) {// Nếu ko phải các control=>upfile lên
					// xử lý file
					nameimg = fileItem.getName();
					if (!nameimg.equals("")) {
						// Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
						String dirUrl = request.getServletContext().getRealPath("") + File.separator + "hinh";
						File dir = new File(dirUrl);
						if (!dir.exists()) {// nếu ko có thư mục thì tạo ra
							dir.mkdir();
						}
						String fileImg = dirUrl + File.separator + nameimg;
						File file = new File(fileImg);// tạo file
						try {
							fileItem.write(file);// lưu file
							System.out.println("UPLOAD THÀNH CÔNG...!");
							System.out.println("Đường dẫn lưu file là: " + dirUrl);
							request.setAttribute("memay1", dirUrl);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				} else// Neu la control
				{
					String tentk = fileItem.getFieldName();
					if (tentk.equals("txtmadienthoai")) {
						madienthoai = fileItem.getString("utf-8");
					}
					if (tentk.equals("txttendienthoai")) {
						tendienthoai = fileItem.getString("utf-8");
					}
					if (tentk.equals("txtgia")) {
						gia = Integer.parseInt(fileItem.getString());
					}
					if (tentk.equals("txtloai")) {
						loai = fileItem.getString("utf-8");
					}
					if (tentk.equals("txthedieuhanh")) {
						hedieuhanh = fileItem.getString("utf-8");
					}
					if (tentk.equals("txtcpu")) {
						cpu = fileItem.getString("utf-8");
					}
					if (tentk.equals("txtmanhinh")) {
						manhinh = fileItem.getString("utf-8");
					}
					if (tentk.equals("txtram")) {
						ram = fileItem.getString("utf-8");
					}
					if (tentk.equals("txtcamerasau")) {
						camerasau = fileItem.getString("utf-8");
					}
					if (tentk.equals("txtcameratruoc")) {
						cameratruoc = fileItem.getString("utf-8");
					}
					if (tentk.equals("txtbonhotrong")) {
						bonhotrong = fileItem.getString("utf-8");
					}

				}

			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		}

		urlimage = "hinh/" + nameimg;
		AddSachBo bo = new AddSachBo();
		try {
			bo.suadienthoai(madienthoai, tendienthoai, manhinh, gia, hedieuhanh, loai, cpu, urlimage, camerasau,
					cameratruoc, ram, bonhotrong);
		} catch (Exception e) {
			// TODO: handle exception
		}
		request.setAttribute("suasach", "suasach");

		return "HomeAdmin";

	}

}
