package com.offer.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.offer.model.OfferFirmInformation;
import com.offer.model.OfferFirmProduce;
import com.offer.model.OfferFirmTechnology;
import com.offer.model.OfferFirmWelfare;
import com.offer.model.OfferInvite;
import com.offer.model.OfferJob;
import com.offer.model.OfferPhoto;
import com.offer.model.OfferWelfare;
import com.offer.service.BaseService;
import com.offer.service.OfferFirmInformationService;
import com.offer.service.OfferFirmIntroduceService;
import com.offer.service.OfferFirmProduceService;
import com.offer.service.OfferFirmService;
import com.offer.service.OfferFirmTechnologyService;
import com.offer.service.OfferFirmWelfareService;
import com.offer.service.OfferJobService;
import com.offer.service.OfferPhotoService;
import com.offer.service.OfferUserInformationService;
import com.offer.service.OfferUserService;
import com.offer.service.OfferWelfareService;

//@Controller
public class FirmManagerController extends BaseController {

	@Autowired
	private BaseService baseService;

	@Autowired
	private OfferJobService offerJobService;
	
	@Autowired
	private OfferUserService offerUserService;

	@Autowired
	private OfferFirmService offerFirmService;
	
	@Autowired
	private OfferWelfareService offerWelfareService;
	
	@Autowired
	private OfferFirmWelfareService offerFirmWelfareService;
	
	@Autowired
	private OfferPhotoService offerPhotoService;
	
	@Autowired
	private OfferFirmProduceService offerFirmProduceService;
	
	@Autowired
	private OfferFirmIntroduceService offerFirmIntroduceService;
	
	@Autowired
	private OfferFirmTechnologyService offerFirmTechnologyService;
	
	@Autowired
	private OfferFirmInformationService offerFirmInformationService;
	
	@Autowired
	private OfferUserInformationService offerUserInformationService;
	
	@ResponseBody
	@RequestMapping(value = "/login/sessionPutFirm", produces = "application/json")
	public Map<String, Object> sessionPutFirm(HttpServletRequest request,
			@RequestBody String data) {
		try {
			if (data != null || !"".equals(data)) {
				request.getSession().setAttribute("firmId", data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);// 返回密码错误
	}

	@ResponseBody
	@RequestMapping(value = "/login/sessionPutUser", produces = "application/json")
	public Map<String, Object> sessionPutUser(HttpServletRequest request,
			@RequestBody String data) {
		try {
			if (data != null || !"".equals(data)) {
				request.getSession().setAttribute("userId", data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);// 返回密码错误
	}
	
	@ResponseBody
	@RequestMapping(value = "/login/firmInformation1", produces = "application/json")
	public Map<String, Object> firmInformation1(HttpServletRequest request, @RequestBody String data) {
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Map<String, Object>> cityList = new ArrayList<Map<String, Object>>();
			List<Map<String, String>> city = baseService.getDiShiCity("getAll");// 所有的地市,getAll
			for (Map<String, String> map2 : city) {
				Map<String, Object> m = new HashMap<String, Object>();
				m.put("id", String.valueOf(map2.get("id")));
				m.put("value", map2.get("cityName"));
				cityList.add(m);
			}
			map.put("city", cityList);

			List<Map<String, Object>> jobList = new ArrayList<Map<String, Object>>();
			List<OfferJob> offerJobsOne = offerJobService.getAllJob("1");// parentId=1的,例如"Java工程师"
			for (int i = 0; i < offerJobsOne.size(); i++) {
				Map<String, Object> m = new HashMap<String, Object>();
				m.put("id", String.valueOf(offerJobsOne.get(i).getId()));
				m.put("value", offerJobsOne.get(i).getJobName());
				jobList.add(m);
			}
			map.put("job", jobList);

			List<Map<String, Object>> statusList = new ArrayList<Map<String, Object>>();
			String[] strings = new String[] { "", "停用", "启用", "待审批", "审批通过", "审批不通过" };
			for (int i = 0; i < strings.length; i++) {
				Map<String, Object> cityMap = new HashMap<String, Object>();
				cityMap.put("id", i == 0 ? "" : String.valueOf(i - 1));
				cityMap.put("value", String.valueOf(strings[i]));
				statusList.add(cityMap);
			}
			map.put("status", statusList);

			List<OfferJob> offerJobs = offerJobService.getAllJob("");
			List<Map<String, Object>> firmList = new ArrayList<Map<String, Object>>();
			String limit = request.getParameter("pageId") == null ? ""
					: request.getParameter("pageId");
			String firmstatus = request.getParameter("firmstatus") == null ? ""
					: request.getParameter("firmstatus");
			String firmcityValue = request.getParameter("firmcityValue") == null ? ""
					: request.getParameter("firmcityValue");
			Map<String, String> nowMap = new HashMap<String, String>();
			nowMap.put("limit", limit);
			nowMap.put("isoffer", "2");
			nowMap.put("firmCity", firmcityValue);
			nowMap.put("status", firmstatus);
			List<Map<String, String>> allFirm = offerFirmService
					.getAllFirmInformation(nowMap);
			int size = allFirm.size();
			int pageId = Integer.valueOf(limit);
			boolean flag = (pageId * 20) < size;
			String status;
			for (int i = (pageId - 1) * 20; flag ? i < (pageId * 20) : i < size; i++) {
				Map<String, Object> cityMap = new HashMap<String, Object>();
				cityMap.put("address", String.valueOf(allFirm.get(i).get(
						"firmAddress") == null ? "" : allFirm.get(i).get(
						"firmAddress")));
				cityMap.put("lingyu", String.valueOf(allFirm.get(i).get(
						"areaId") == null ? "" : allFirm.get(i).get("areaId")));
				cityMap.put("name", String.valueOf(allFirm.get(i).get(
						"firmSimpleName") == null ? "" : allFirm.get(i).get(
						"firmSimpleName")));
				cityMap.put("guimo", String.valueOf(allFirm.get(i).get(
						"firmSize") == null ? "" : allFirm.get(i).get(
						"firmSize")));
				cityMap.put("rongzi", String.valueOf(allFirm.get(i).get(
						"firmStage") == null ? "" : allFirm.get(i).get(
						"firmStage")));
				cityMap.put("shenqingren", String.valueOf(allFirm.get(i).get(
						"offerUserName") == null ? "" : allFirm.get(i).get(
						"offerUserName")));
				cityMap.put("zhiwei", "");
				for (OfferJob offerJob : offerJobs) {
					if ((String.valueOf(allFirm.get(i).get("offerJobId")))
							.equals(String.valueOf(offerJob.getId()))) {
						cityMap.put("zhiwei",
								String.valueOf(offerJob.getJobName()));
						break;
					}
				}
				cityMap.put("phone", String.valueOf(allFirm.get(i).get(
						"offerUserPhone") == null ? "" : allFirm.get(i).get(
						"offerUserPhone")));
				cityMap.put("shenqingtime", String.valueOf(allFirm.get(i).get(
						"firmCreateYear") == null ? "" : allFirm.get(i).get(
						"firmCreateYear")));
				cityMap.put(
						"teammember",
						allFirm.get(i).get("num") == null ? "" : String
								.valueOf(allFirm.get(i).get("num")));
				status = allFirm.get(i).get("fStatus") == null ? "" : allFirm
						.get(i).get("fStatus");
				if (!"".equals(status)) {
					status = status.equals("0") ? "停用"
							: status.equals("1") ? "启用"
									: status.equals("2") ? "待审批" : status
											.equals("3") ? "审批通过" : status
											.equals("4") ? "审批不通过" : "";
				}
				cityMap.put("status", status);
				cityMap.put("fuwu", "");
				cityMap.put("id",
						String.valueOf(allFirm.get(i).get("offerFirmId")));
				firmList.add(cityMap);
			}
			map.put("firmList", firmList);

			map.put("allNum", allFirm.size());
			map.put("pageNum",
					allFirm.size() == 0 ? 1 : Math.ceil(allFirm.size() / 20.0));
			return toJson(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}

	@ResponseBody
	@RequestMapping(value = "/login/firmInformation2", produces = "application/json")
	public Map<String, Object> firmInformation2(HttpServletRequest request,
			@RequestBody String data) {
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			String firmId = request.getSession().getAttribute("firmId").toString();

			List<OfferFirmInformation> offerFirmInformations = offerFirmInformationService.getOfferFirmInformation(firmId);
			if (offerFirmInformations == null || offerFirmInformations.size() == 0) {
				return toJson(null);
			}
			//信息
			Map<String, Object> informationmap = new HashMap<String, Object>();
			List<OfferPhoto> photos = offerPhotoService.findByFirmIId(firmId);
			String photoPath = "";
			if(photos != null && photos.size() > 0){
				photoPath = "../upload/photo/"+photos.get(0).getPhotoSavename();
			}
			informationmap.put("photo", photoPath);
			informationmap.put("name", returnString(offerFirmInformations.get(0).getFirmAllName()));
			informationmap.put("descript", returnString(offerFirmInformations.get(0).getFirmOneDescript()));
			informationmap.put("allname", returnString(offerFirmInformations.get(0).getFirmAllName()));
			informationmap.put("link", returnString(offerFirmInformations.get(0).getFirmWebLink()));
			map.put("information1", informationmap);
			//产品
			List<OfferFirmProduce> offerFirmProduces = offerFirmProduceService.getOfferFirmProduces(firmId);
			if (offerFirmProduces == null || offerFirmProduces.size() == 0) {
				return toJson(null);
			}
			map.put("chanpin", returnString(offerFirmProduces.get(0).getProduceDescript()));
			//新闻
			Map<String, Object> xinximap = new HashMap<String, Object>();
			xinximap.put("firmType", returnString(offerFirmInformations.get(0).getAreaId()));
			xinximap.put("firmRongzi", returnString(offerFirmInformations.get(0).getFirmStage()));
			xinximap.put("firmSize", returnString(offerFirmInformations.get(0).getFirmSize()));
			xinximap.put("firmArddess", returnString(offerFirmInformations.get(0).getFirmAddress()));
			xinximap.put("firmPeople", returnString(offerFirmInformations.get(0).getFirmTeamSize()));
			map.put("xinxi", xinximap);
			//介绍
			map.put("jieshao", returnString(offerFirmInformations.get(0).getFirmDescript()));
			List<OfferPhoto> offerPhotos = offerPhotoService.findByFirmdId(firmId);
			List<Map<String, Object>> carouselList = new ArrayList<Map<String, Object>>();
			for (OfferPhoto photo : offerPhotos) {
				Map<String, Object> carouselmap = new HashMap<String, Object>();
				carouselmap.put("photo", "../upload/photo/"+photo.getPhotoSavename());
				carouselList.add(carouselmap);
			}
			map.put("carousel", carouselList);
			//新闻
			map.put("news", "暂无内容");
			//技术
			List<OfferFirmTechnology> offerFirmTechnologies = offerFirmTechnologyService.getOfferFirmTechnologies(firmId);
			List<String> technologies = new ArrayList<String>();
			if(offerFirmTechnologies != null && offerFirmTechnologies.size() > 0){
				String seos = offerFirmTechnologies.get(0).getFirmSeo();
				if(seos != null && !"".equals(seos)){
					String[] ses = seos.split(";");
					for(int i = 0; i < ses.length; i++){
						technologies.add(ses[i]);
					}
				}
			}
			List<Map<String, Object>> jishuList = new ArrayList<Map<String, Object>>();
			for (String technology : technologies) {
				Map<String, Object> jishumap = new HashMap<String, Object>();
				jishumap.put("name", technology);
				jishuList.add(jishumap);
			}
			map.put("jishu", jishuList);
			//福利
			List<OfferFirmWelfare> offerFirmWelfares = offerFirmWelfareService.findWelfaresByFirmId(firmId);
			List<OfferWelfare> offerWelfares = offerWelfareService.findAll();
			Map<String, String> welfareMap = new HashMap<String, String>();
			for(OfferWelfare welfare : offerWelfares){
				welfareMap.put(welfare.getId().toString(), welfare.getWelfareName());
			}
			List<Map<String, Object>> fuliList = new ArrayList<Map<String, Object>>();
			for (OfferFirmWelfare welfare : offerFirmWelfares) {
				if(welfare.getWelfareId() == null || "".equals(welfare.getWelfareId())){
					break;
				}
				String[] welIds = welfare.getWelfareId().split(",");
				for(int i = 0; i < welIds.length; i++){
					Map<String, Object> fulimap = new HashMap<String, Object>();
					fulimap.put("name", welfareMap.get(welIds[i]));
					fuliList.add(fulimap);
				}
			}
			map.put("fuli", fuliList);
			//地址
			Map<String, Object> dizhimap = new HashMap<String, Object>();
			dizhimap.put("photo", returnString(offerFirmInformations.get(0).getFirmAddress()));
			dizhimap.put("name", returnString(offerFirmInformations.get(0).getFirmAllName()));
			map.put("dizhi", dizhimap);
			return toJson(map);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return toJson(SUCCESS);// 返回密码错误
	}
		
	//账号信息
	@ResponseBody
	@RequestMapping(value = "/login/firmaccount1", produces = "application/json")
	public Map<String, Object> firmaccount1(HttpServletRequest request, @RequestBody String data) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy年MM月dd日");
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			String firmId = request.getSession().getAttribute("firmId").toString();
//			map.put("offerCandidateId", offerCandidateId);
			Map<String, Object> information = new HashMap<String, Object>();
			Map<String, String> findMap = new HashMap<String, String>();
//			findMap.put("offerCandidateId", offerCandidateId);
			List<Map<String, String>> list = offerUserInformationService.getOfferUserInformationByOfferUserId(findMap);

			information.put("userphoto", "../img/changjinglu.jpg");
			information.put("userName", list.get(0).get("offerUserName"));
			information.put("usershenfen", "");
			information.put("zhucetime",
					formatter.format(list.get(0).get("createTime")));
			information.put("newtime", "");
			information.put("firmName", "");
			information.put("job", "");
			String status = list.get(0).get("status") == null ? "" : list
					.get(0).get("status");
			if (!"".equals(status)) {
				status = status.equals("0") ? "停用" : status.equals("1") ? "未提交"
						: status.equals("2") ? "待审批"
								: status.equals("3") ? "审批不通过" : status
										.equals("4") ? "审批通过" : "已下线";
			}
//			findMap.put("offerCandidateId", offerCandidateId);
			List<OfferInvite> offerInvites = baseService
					.getOfferInvite1(findMap);
			information.put("phone", list.get(0).get("offerUserPhone"));
			information.put("tongzhi", offerInvites.size() + "条");
			information.put("status", status);
			information.put("gewenbeizhu", list.get(0)
					.get("offerAdviserRemark"));
			information.put("beizhu",
					list.get(0).get("offerAdviserRemark") == null ? "" : list
							.get(0).get("offerAdviserRemark"));
			map.put("information", information);

			List<Map<String, Object>> gewenList = new ArrayList<Map<String, Object>>();
			String[] strings = new String[] { "不通过", "通过" };
			int i = 3;
			for (String string : strings) {
				Map<String, Object> gewen = new HashMap<String, Object>();
				gewen.put("id", String.valueOf(i++));
				gewen.put("value", string);
				gewenList.add(gewen);
			}
			// for(int i = 0; i < 2; i++){
			// Map<String, Object> gewen = new HashMap<String, Object>();
			// gewen.put("id", "1");
			// gewen.put("value", "通过");
			// gewenList.add(gewen);
			// }
			map.put("guwen", gewenList);
			return toJson(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);// 返回密码错误
	}
		
}
