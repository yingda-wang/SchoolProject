package controller;
import java.io.ByteArrayOutputStream;  
import java.io.FileOutputStream;  
import java.io.IOException;  
import java.io.OutputStreamWriter;  
import java.io.PrintWriter;  
  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletContext;  
import javax.servlet.ServletException;  
import javax.servlet.ServletOutputStream;
import javax.servlet.WriteListener;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpServletResponseWrapper;  

public class ToHtml extends HttpServlet {  
  
    private static final long serialVersionUID = -7294946376649752356L;  
  
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
  
        ServletContext sc = getServletContext();//Ϊ���Ӧ�õ�������·����  
  
        String fileName = request.getParameter("manager");// ��Ҫ���ʵ�jsp  
        // ����������servletʱ�Ӳ���.��http://localhost/test/toHtml?fileName=index  
        String url = "/" + fileName + ".jsp";// ��Ҫ���ɵ�ҳ����ļ�������չ��Ϊjsp  
        String name = sc.getRealPath("/") + fileName + ".html";// �������ɵ�html�ļ���  
  
        RequestDispatcher rd = sc.getRequestDispatcher(url);  
  
        final ByteArrayOutputStream os = new ByteArrayOutputStream();  
  
        final ServletOutputStream stream = new ServletOutputStream() {  
            public void write(byte[] data, int offset, int length) {  
                os.write(data, offset, length);  
            }  
  
            public void write(int b) throws IOException {  
                os.write(b);  
            }

			@Override
			public boolean isReady() {
				// TODO Auto-generated method stub
				return false;
			}

			@Override
			public void setWriteListener(WriteListener arg0) {
				// TODO Auto-generated method stub
				
			}  
        };  
  
        final PrintWriter pw = new PrintWriter(new OutputStreamWriter(os));  
  
        HttpServletResponse rep = new HttpServletResponseWrapper(response) {  
            public ServletOutputStream getOutputStream() {  
                return stream;  
            }  
  
            public PrintWriter getWriter() {  
                return pw;  
            }  
        };  
          
        rd.include(request, rep);  
        pw.flush();  
          
        FileOutputStream fos = new FileOutputStream(name); // ��jsp ���������д��xxx.html  
        os.writeTo(fos);  
        fos.close();  
          
        PrintWriter out = response.getWriter();  
        out.print("SUCCESS");  
          
    }  
}  