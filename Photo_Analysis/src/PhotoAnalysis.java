

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.thoughtworks.xstream.XStream;
/**
 * Servlet implementation class PhoneAnalysis
 */
@WebServlet("/PhotoAnalysis")
public class PhotoAnalysis extends HttpServlet {
	private static final long serialVersionUID = 1L;       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PhotoAnalysis() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("xxxxxxxxx");
		String responseJson=request.getParameter("response");
		String url=request.getParameter("url");
	//	String imageUrll=request.getParameter("imageUrll");
		String caseString = null;
		PrintWriter pw=response.getWriter();
		System.err.println("before response is printed");
		System.err.println(responseJson);
		System.err.println("after the response is printing");
		
		if ("Error while reading the Image".equalsIgnoreCase(responseJson)){
			pw.println("<html><body onload=\"alert('Error while reading the Image')\"></body></html>");
			RequestDispatcher reqDispatcher=request.getRequestDispatcher("PhotoAnalysis.jsp");
			reqDispatcher.include(request,response);
			return;
		}
		
		

		//JSON from file to Object
		Gson gson = new Gson();
		Results results = gson.fromJson(responseJson, Results.class);
		System.err.println("results is: "+new XStream().toXML(results));
		ArrayList<Tag> tagList = new ArrayList<Tag>();
		
		List<ImageResponse> responseList = results.getResults();
		System.err.println("response list"+new XStream().toXML(responseList));
		for(ImageResponse imageResponse: responseList)
		{
			String taggingId = imageResponse.getTaggingId();
			System.err.println("Tagging id "+taggingId);
			String imageUrl = imageResponse.getImage();
			System.err.println("image url " +imageUrl);
			List<Tag> tags = imageResponse.getTags();
			System.err.println("lisf of tags");
			for(Tag tag:tags)
			{
				System.err.println("Confidence "+tag.getConfidence()+" tag "+tag.getTag());
			}
			caseString = TestTag.getTags(tags);
			System.err.println("response string is "+ caseString);
			
			
			
			
		}
		
		request.setAttribute("response",caseString);
		request.setAttribute("url",url);
		
		
		RequestDispatcher reqDispatcher=request.getRequestDispatcher("result.jsp");
		reqDispatcher.include(request,response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
