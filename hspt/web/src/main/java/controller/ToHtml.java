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
  
        ServletContext sc = getServletContext();//为你的应用的上下文路径。  
  
        String fileName = request.getParameter("manager");// 你要访问的jsp  
        // 则你访问这个servlet时加参数.如http://localhost/test/toHtml?fileName=index  
        String url = "/" + fileName + ".jsp";// 你要生成的页面的文件名。扩展名为jsp  
        String name = sc.getRealPath("/") + fileName + ".html";// 这是生成的html文件名  
  
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
          
        FileOutputStream fos = new FileOutputStream(name); // 把jsp 输出的内容写到xxx.html  
        os.writeTo(fos);  
        fos.close();  
          
        PrintWriter out = response.getWriter();  
        out.print("SUCCESS");  
          
    }  
}  