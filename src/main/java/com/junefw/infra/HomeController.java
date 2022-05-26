package com.junefw.infra;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/test/publicCorona1List")
	public String publicCorona1List(Model model) throws Exception {
		
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=OhsPQAXAkqO95cgktfOWeGTcYDs4JKiL08UQzHZO4cIptrbzPyOOTaQqyFuNS5WXzWfVOXEGZvYGYIlaV4aHhw%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >=200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		System.out.println("stringBuilder.toString(): " +stringBuilder.toString());
		
//		json object + array string -> java map
		
		
		// jackson 객체 색성
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
		
		for(String key :map.keySet()) {
//			String value= map.get(key); // error casting
//			String value = map.get(key).toString(); // error npe
			String value= String.valueOf(map.get(key));	//ok
			System.out.println("[key]: " + key + "[value]: " +value);
		}
		
		// header node 
		Map<String, Object> header = new HashMap<String, Object>();	// String 타입을 Map Object으로 변환
		header = (Map<String, Object>) map.get("header");
		
		System.out.println("############Header");
		for( String key : header.keySet()) {
			String value = String.valueOf(header.get(key));
			System.out.println("[key]: " + key + "[value]: " +value);
		}
		
		String aaa =(String) header.get("resultCode");
		
		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
		
		// body 노드 
		Map<String, Object> body = new HashMap<String, Object>();	// String 타입을 Map Object으로 변환
		body = (Map<String, Object>) map.get("body");
		
		List<Home> items = new ArrayList<Home>();
		items = (List<Home>) body.get("items");
		
		for(int i = 0; i< items.size(); i++) {
			
		}
		
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		
		
		/* map을 통째로 넘기는건 불가능 header, body로 나눠서 넘겨야함 */
		
		return "test/publicCorona1List";
	}
	
	
	
	@RequestMapping(value = "/test/publicCorona1JsonNodeList")
	public String publicCorona1JsonNodeList(Model model) throws Exception{
		
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=OhsPQAXAkqO95cgktfOWeGTcYDs4JKiL08UQzHZO4cIptrbzPyOOTaQqyFuNS5WXzWfVOXEGZvYGYIlaV4aHhw%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >=200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		// jackson 객체 색성
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode node = objectMapper.readTree(stringBuilder.toString());
		
		System.out.println("node.get(\"header\").get(\"resultCode\").asText():" + node.get("header").get("resultCode").asText());
		System.out.println("node.get(\"header\").get(\"resultMsg\").asText():" + node.get("header").get("resultMsg").asText());
		System.out.println("node.get(\"header\").get(\"resultCode\").asText():" + node.get("body").get("items").get(0).get("KIT_PROD_QTY").asText());
		
		model.addAttribute("node", node);
		
		return "test/publicCorona1JsonNodeList";
	}
	

	
}
