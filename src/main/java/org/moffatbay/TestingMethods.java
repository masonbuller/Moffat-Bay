package org.moffatbay;

import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class TestingMethods {

	public static void main(String[] args) {
		
		String check_in = "2024-11-02";
		String check_out = "2024-11-11";
		
		double cost = 160;
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate start_date = LocalDate.parse(check_in, formatter);
		LocalDate end_date = LocalDate.parse(check_out, formatter);
		System.out.println("LocalDate start_date:" + start_date);
		System.out.println("LocalDate end_date: " + end_date);
		
		long days = ChronoUnit.DAYS.between(start_date, end_date);
		System.out.println("Days Calculated: " + days);
		
		double subtotal = cost * days;
		System.out.println("Subtotal Calculated: " + subtotal);
		
		subtotal = Math.round(subtotal * 100d) / 100d;
		System.out.println("Subtotal Rounded: " + subtotal);
		
		double tax = subtotal * .07;
		tax = Math.round(tax * 100d) / 100d;
		
		double total = subtotal + tax;
		total = Math.round(total * 100d) / 100d;
		
		SimpleDateFormat stringForm = new SimpleDateFormat("EEEE, MMMM d, yyyy");
		
		String myDate = stringForm.format(start_date) + " - " + stringForm.format(end_date);
		
		NumberFormat moneyformatter = NumberFormat.getCurrencyInstance();
		String subtotalF = moneyformatter.format(subtotal);
		String taxF = moneyformatter.format(tax);
		String totalF = moneyformatter.format(total);

	}

}
