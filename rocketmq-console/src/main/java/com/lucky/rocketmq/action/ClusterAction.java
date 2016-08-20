package com.lucky.rocketmq.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lucky.rocketmq.common.Table;
import com.lucky.rocketmq.service.ClusterService;

@Controller
@RequestMapping(value = "/cluster")
public class ClusterAction {

	@Autowired
	ClusterService clusterService;

	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(HttpServletRequest request, HttpServletResponse response) {
		try {
			Table table = clusterService.list();
			Object[] objects = table.getTbodyData().get(0);
			System.out.println(objects[0]);
			if (table != null) {
				request.setAttribute("table", table);
			}
		} catch (Throwable t) {
		}
		return "/cluster";
	}

}
