package command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import proxy.Proxy;
import proxy.RequestProxy;
import proxy.ResponseProxy;

public class Receiver {

	public static Command cmd = new Command();	
	
	public static void init(
			HttpServletRequest request, HttpServletResponse response){
		
		System.out.println("===== 2. 리시버진입 =====");
		System.out.println("cmd::"+request.getParameter("cmd"));
		System.out.println("dir::"+request.getParameter("dir"));
		System.out.println("page::"+request.getParameter("page"));
		RequestProxy req = new RequestProxy();
		ResponseProxy resp = new ResponseProxy();
		Map<String,Proxy> pxy = new HashMap<>();
		req.carryOut(request);
		resp.carryOut(response);
		pxy.put("req", req);
		pxy.put("resp", resp);
		
		cmd = Commander.order(pxy);
		System.out.println("리시버 내부 cmd:::"+Receiver.cmd.getView());

	}
}
