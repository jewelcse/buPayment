package com.buPayments.Utility;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import com.buPayments.model.Devfees;
import com.buPayments.model.FormfillupFees;
import com.buPayments.model.SemesterFees;
import com.buPayments.model.Student;

public class ParameterBuilder {
	
	static String baseUrl = "http://localhost:4444/DevelopmentFees/";

	public static String getParamsString(Map<String, String> params, boolean urlEncode)
			throws UnsupportedEncodingException {
		StringBuilder result = new StringBuilder();

		for (Map.Entry<String, String> entry : params.entrySet()) {
			if (urlEncode)
				result.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
			else
				result.append(entry.getKey());

			result.append("=");
			if (urlEncode)
				result.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
			else
				result.append(entry.getValue());
			result.append("&");
		}

		String resultString = result.toString();
		return resultString.length() > 0 ? resultString.substring(0, resultString.length() - 1) : resultString;
	}



<<<<<<< HEAD
	public static Map<String, String> constructRequestParameters(Student student, Devfees devfees) {
		// CREATING LIST OF POST DATA

		// String baseUrl =
		// "http://103.28.121.29:8080/DevelopmentFees/";//Request.Url.Scheme + "://" +
		// Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
		
		Map<String, String> postData = new HashMap<String, String>();
		postData.put("total_amount", devfees.getAmount());
		postData.put("tran_id", devfees.getTransId());
		postData.put("success_url",baseUrl + "paymentStatus?action=developmentfee&transid=" + devfees.getTransId()+"&deptId="+devfees.getDepartmentId() +"&stuId="+devfees.getStudentId()+"&semester="+devfees.getSemester());
		postData.put("fail_url", baseUrl + "fail.jsp");
		postData.put("cancel_url", "https://sandbox.sslcommerz.com/developer/cancel.php");
		postData.put("version", "3.00");
		/*postData.put("stu_id", devfees.getStudentId());
		postData.put("stu_dept", devfees.getDepartmentId());
		postData.put("stu_semester", devfees.getSemester());*/
		
		return postData;
	}



	public static Map<String, String> constructRequestParameters(Student student, SemesterFees semfee) {
		
				//String baseUrl = "http://localhost:4444/DevelopmentFees/";
				Map<String, String> postData = new HashMap<String, String>();
				postData.put("total_amount", semfee.getAmount());
				postData.put("tran_id", semfee.getTransId());
				postData.put("success_url",baseUrl + "paymentStatus?action=semesterfee&transid=" + semfee.getTransId()+"&deptId="+semfee.getDepartmentId() +"&stuId="+semfee.getStudentId()+"&semester="+semfee.getSemester());
				postData.put("fail_url", baseUrl + "fail.jsp");
				postData.put("cancel_url", "https://sandbox.sslcommerz.com/developer/cancel.php");
				postData.put("version", "3.00");
				
				return postData;
	}



	public static Map<String, String> constructRequestParameters(Student student, FormfillupFees formfillupfee) {

		//String baseUrl = "http://localhost:4444/DevelopmentFees/";
		Map<String, String> postData = new HashMap<String, String>();
		postData.put("total_amount", formfillupfee.getAmount());
		postData.put("tran_id", formfillupfee.getTransId());
		postData.put("success_url",baseUrl + "paymentStatus?action=formfillupfee&transid=" + formfillupfee.getTransId()+"&deptId="+formfillupfee.getDepartmentId() +"&stuId="+formfillupfee.getStudentId()+"&semester="+formfillupfee.getSemester());
		postData.put("fail_url", baseUrl + "fail.jsp");
		postData.put("cancel_url", "https://sandbox.sslcommerz.com/developer/cancel.php");
		postData.put("version", "3.00");
		/*postData.put("stu_id", devfees.getStudentId());
		postData.put("stu_dept", devfees.getDepartmentId());
		postData.put("stu_semester", devfees.getSemester());*/
		
		return postData;
	}




=======
	
	public static String getParamsString(Map<String, String> params, boolean urlEncode) throws UnsupportedEncodingException {
        StringBuilder result = new StringBuilder();

        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (urlEncode)
                result.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
            else
                result.append(entry.getKey());

            result.append("=");
            if (urlEncode)
                result.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
            else
                result.append(entry.getValue());
            result.append("&");
        }

        String resultString = result.toString();
        return resultString.length() > 0
                ? resultString.substring(0, resultString.length() - 1)
                : resultString;
    }
	
/*	public static Map<String, String> constructRequestParameters() {
        // CREATING LIST OF POST DATA
        String baseUrl = "http://localhost:8222/DevelopmentFees/";//Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
        Map<String, String> postData = new HashMap<String, String>();
        postData.put("total_amount", "150.00");
        postData.put("tran_id", "TESTASPNET1234");
        postData.put("success_url", baseUrl + "success");
        postData.put("fail_url", "https://sandbox.sslcommerz.com/developer/fail.php");
        postData.put("cancel_url", "https://sandbox.sslcommerz.com/developer/cancel.php");
        postData.put("version", "3.00");
        postData.put("cus_name","Md. Erfan");
        postData.put("cus_email", "abc.xyz@mail.co");
        postData.put("cus_add1", "Address Line On");
        postData.put("cus_add2", "Address Line Tw");
        postData.put("cus_city", "City Nam");
        postData.put("cus_state", "State Nam");
        postData.put("cus_postcode", "Post Cod");
        postData.put("cus_country", "Countr");
        postData.put("cus_phone", "0111111111");
        postData.put("cus_fax", "0171111111");
        postData.put("ship_name", "ABC XY");
        postData.put("ship_add1", "Address Line On");
        postData.put("ship_add2", "Address Line Tw");
        postData.put("ship_city", "City Nam");
        postData.put("ship_state", "State Nam");
        postData.put("ship_postcode", "Post Cod");
        postData.put("ship_country", "Countr");
        postData.put("value_a", "ref00");
        postData.put("value_b", "ref00");
        postData.put("value_c", "ref00");
        postData.put("value_d", "ref00");
        return postData;
    }*/
	
	public static Map<String, String> constructRequestParameters(Student student, Devfees devfees) {
        // CREATING LIST OF POST DATA
//        String baseUrl = "http://localhost:8080/DevelopmentFees/";//Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
//        Map<String, String> postData = new HashMap<String, String>();
//        postData.put("total_amount", devfees.getS_semester_fee());
//        postData.put("tran_id", devfees.getTrans_id());
//        postData.put("success_url", baseUrl + "success");
//        postData.put("fail_url", baseUrl+"fail.jsp");
//        postData.put("cancel_url", "https://sandbox.sslcommerz.com/developer/cancel.php");
//        postData.put("version", "3.00");
//       
//        postData.put("cus_id",student.getId());
//        postData.put("cus_semester",student.getS_semester());
//        postData.put("cus_amount",devfees.getS_semester_fee());
//        postData.put("cus_trans_id",devfees.getTrans_id());
//  
//        return postData;
		
		String baseUrl = "http://localhost:8080/DevelopmentFees/";//Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
        Map<String, String> postData = new HashMap<String, String>();
        postData.put("total_amount", devfees.getS_semester_fee()+"");
        postData.put("tran_id", devfees.getTrans_id());
        postData.put("success_url", baseUrl + "success.jsp");
        postData.put("fail_url", baseUrl+"fail.jsp");
        postData.put("cancel_url", "https://sandbox.sslcommerz.com/developer/cancel.php");
        postData.put("version", "3.00");
        postData.put("cus_name",student.getS_name());
        postData.put("cus_email", "abc.xyz@mail.co");
        postData.put("cus_add1", "Address Line On");
        postData.put("cus_add2", "Address Line Tw");
        postData.put("cus_city", "City Nam");
        postData.put("cus_state", "State Nam");
        postData.put("cus_postcode", "Post Cod");
        postData.put("cus_country", "Countr");
        postData.put("cus_phone", "0111111111");
        postData.put("cus_fax", "0171111111");
        postData.put("ship_name", "ABC XY");
        postData.put("ship_add1", "Address Line On");
        postData.put("ship_add2", "Address Line Tw");
        postData.put("ship_city", "City Nam");
        postData.put("ship_state", "State Nam");
        postData.put("ship_postcode", "Post Cod");
        postData.put("ship_country", "Countr");
        postData.put("value_a", "ref00");
        postData.put("value_b", "ref00");
        postData.put("value_c", "ref00");
        postData.put("value_d", "ref00");
        return postData;
    }
>>>>>>> 265d245e3a9ff47d197af4d6ef3e408c3ca0b3db

}
