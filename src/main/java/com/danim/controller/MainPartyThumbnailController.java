package com.danim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainPartyThumbnailController {
	
	@GetMapping("list")
	public String list(Model model) {
		//db���� �����Խù�����Ʈ�� �����´�
		List<MenuVo> menulist
		
		
		return "yourViewName";
		
	}

	@RequestMapping(value = "/PartyDetailMapping", method = RequestMethod.GET)
	public String handleImageClick() {
		// ���⿡�� �ʿ��� ������ ó���ϸ� �˴ϴ�.

		// �̵��� �������� �� �̸��� ��ȯ�մϴ�.
		return "/PartyDetailMapping";
	}

}