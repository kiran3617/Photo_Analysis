import java.io.*;
import java.net.*;


public class PhotoAnalysisHome {
	
	/*public void GetResponseFromImagga(){
		
		String imageUrl = "http://docs.imagga.com/static/images/docs/sample/japan-605234_1280.jpg",
				apiKey = "",
				apiSecret = "";

				// These code snippets use an open-source library. http://unirest.io/java
				HttpResponse response = Unirest.get("https://api.imagga.com/v1/tagging")
				    .queryString("url", imageUrl)
				    .basicAuth(apiKey, apiSecret)
				    .header("Accept", "application/json")
				    .asJson();

				    jsonResponse = response.getBody().getObject();
				    System.out.println(jsonResponse.toString());
	}*/
	
	/*public void restCall(){
		
		String imageUrl = "http://docs.imagga.com/static/images/docs/sample/japan-605234_1280.jpg";
		try {

			ClientRequest request = new ClientRequest("https://api.imagga.com/v1/tagging");
			request.accept("application/json");
			request.queryParameter("url", imageUrl);
			request.header("Accept", "application/json");
			
			ClientResponse<String> response = request.get(String.class);

			if (response.getStatus() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
					+ response.getStatus());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(
				new ByteArrayInputStream(response.getEntity().getBytes())));

			String output;
			System.err.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}

		  }  catch (IOException e) {

			e.printStackTrace();

		  } catch (Exception e) {

			e.printStackTrace();

		  }
	}*/
	
	public void callRest()
	{
		
		String imageUrl = "http://docs.imagga.com/static/images/docs/sample/japan-605234_1280.jpg";
		

		try {
			
			String query = "url="+imageUrl;
			
			URL url = new URL("https://api.imagga.com/v1/tagging" + "?" + query);
			System.out.println("before 1");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			System.out.println("before 2");
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");

			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
			}
			System.out.println("before 3");
			BufferedReader br = new BufferedReader(new InputStreamReader(
				(conn.getInputStream())));
			System.out.println("before 4");
			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.err.println(output);
			}

			conn.disconnect();

		  } catch (MalformedURLException e) {

			e.printStackTrace();

		  } catch (IOException e) {

			e.printStackTrace();

		  }

	}
	
	public static void main(String[] args) {
		
		PhotoAnalysisHome pa = new PhotoAnalysisHome();
		pa.callRest();
	}

}
