package m1.model;
import java.util.*;

public class GuGuService {
	public ArrayList<String> getGuguDan(int dan){
		ArrayList<String> list = new ArrayList<String>();
		for(int i=1; i<10; i++) {
			list.add(dan+"*"+ i + "="+ (dan*i));//문자열+기본값 = 문자열
		}
		return list;
	}
}
