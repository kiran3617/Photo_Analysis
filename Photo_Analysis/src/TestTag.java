import java.io.IOException;
import java.sql.Array;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;


public class TestTag {

	

	public static String getTags(List<Tag> tags) 
	{
		ArrayList<String> tagList = new ArrayList<String>();
		
		for(Tag tag:tags)
		{
			String tagName = tag.getTag();
			tagList.add(tagName);
			
		}
		if(tagList.contains("cake") || tagList.contains("celebration"))
		{
			System.err.println("Inside cake case");
			return "Many many happy returns of the day... Secure your future with our insurance plans. For more details, please call us on our Toll free number 1 800 LFSC98";
		}
		
		else if((tagList.contains("repaireman") || tagList.contains("service")) && tagList.contains("old") && (tagList.contains("vehicle") || tagList.contains("automobile")))
		{
			System.err.println("Inside car break down case");
			return "We are sorry for your vehicle... Get your vehicle insured with our plans";
		}
		else if(tagList.contains("new") && tagList.contains("car") || (tagList.contains("automobile") || tagList.contains("wheel")))
		{
			System.err.println("Inside new car case");
			return "Congratulations on buying a new Car. We would be glad to help protect your brand new vehicle and you just in case something happens.  For more details, please call us on our Toll free number 1 800 LFSC98";

		}
		else if(tagList.contains("child")|| tagList.contains("baby") || tagList.contains("kid") || tagList.contains("newborn") || tagList.contains("motherhood") || tagList.contains("infant") || tagList.contains("born"))
		{
			System.err.println("Inside new born baby case");
			return "A baby is the best gift to all parents. With the arrival of a newborn, parents are overcome with happiness and seem to have the greatest gift they could ever have.  We would love to help you save money for providing better education to your child.  Please give us a call on our our Toll free number 1 800 LFSC98 to get more details on how to secure your child's future";
		}
		
		else if((tagList.contains("house") || tagList.contains("bungalow") || tagList.contains("home") || tagList.contains("building") || tagList.contains("residence") || tagList.contains("residential") || tagList.contains("estate") || tagList.contains("roof") || tagList.contains("mansion") || tagList.contains("property")|| tagList.contains("houses rural") )&& (tagList.contains("new")) )
		{
			System.err.println("Inside the new house case");
			return "Congratulations on owing a new Home. We can help protect your home, please buy our Homeowner's Insurance. If some thing happens to your home, We'll help take care of it as soon as possible to bring back your life back on track.  For more details, please call us on our Toll free number 1 800 LFSC98 ";
		}
		else if(tagList.contains("pensioner") || tagList.contains("senior") || tagList.contains("elderly") || tagList.contains("retired") || tagList.contains("retirement") || tagList.contains("old") || tagList.contains("older") || tagList.contains("aged")  || tagList.contains("seniors") || tagList.contains("grandmother") || tagList.contains("retire"))
		{
			System.err.println("Inside the retirement case");
			return "We are glad, that you are leading a very joyous life after retirement. We would like to secure your beatiful  smile, check out our exciting Dental insurance plans. For more details, please call us on our Toll free number 1 800 LFSC98";
		}
		else 
		{
			System.err.println("Inside the general case");
			return "General";
		}
	}
}
