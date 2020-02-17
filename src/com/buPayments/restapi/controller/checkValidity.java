package com.buPayments.restapi.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

public class checkValidity {
	
	
	public boolean checkValidity(String startDate,String endDate) throws ParseException {
		

		LocalDate today = LocalDate.now(ZoneId.systemDefault()) ;
		String strDate = today.toString() ; 
         
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date curr = sdf.parse(strDate);
        
        if(startDate!=null && endDate!=null){
    		Date s_date = sdf.parse(startDate);
	    	Date e_date = sdf.parse(endDate);
		    	
		    	if (curr.compareTo(s_date) > 0 && curr.compareTo(e_date) < 0) {
		            System.out.println("valid date to pay");
		            return true;
		        } else if (curr.compareTo(s_date) == 0 || curr.compareTo(e_date) == 0) {
		            System.out.println("same day and valid date to pay fee");
		            return true;
		        } else {
		            System.out.println("expire date for fee");
		            return false;
		        }
    	}else{
    		System.out.println("ohh no");
    		return false;
    	}
		
		
	}

}
