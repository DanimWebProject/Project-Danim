package com.danim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainPartyThumbnailController {

	@RequestMapping(value = "/RegionalBulletinBoardMapping", method = RequestMethod.GET)
	public String handleImageClick() {
		// ���⿡�� �ʿ��� ������ ó���ϸ� �˴ϴ�.

		// �̵��� �������� �� �̸��� ��ȯ�մϴ�.
		return "yourViewName";
	}

	}