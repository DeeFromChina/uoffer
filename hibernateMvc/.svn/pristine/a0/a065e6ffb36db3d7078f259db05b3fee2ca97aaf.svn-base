package com.offer.controller;

import java.io.File;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.offer.dao.BaseDao;
import com.offer.model.OfferCollect;
import com.offer.model.OfferEmail;
import com.offer.model.OfferFirm;
import com.offer.model.OfferFirmSelect;
import com.offer.model.OfferInvite;
import com.offer.model.OfferJob;
import com.offer.model.OfferPhoto;
import com.offer.model.OfferStage;
import com.offer.model.OfferUser;
import com.offer.model.OfferUserEducation;
import com.offer.model.OfferUserEmail;
import com.offer.model.OfferUserInformation;
import com.offer.model.OfferUserPlanJob;
import com.offer.model.OfferUserPlanWorkPlace;
import com.offer.model.OfferUserShield;
import com.offer.model.OfferUserWorks;
import com.offer.service.BaseService;
import com.offer.service.OfferFirmSelectService;
import com.offer.service.OfferFirmService;
import com.offer.service.OfferInviteService;
import com.offer.service.OfferJobService;
import com.offer.service.OfferPhotoService;
import com.offer.service.OfferUserInformationService;
import com.offer.service.OfferUserService;
import com.offer.util.ChinaInitial;
import com.offer.util.Code;
import com.offer.util.Encryption;
import com.offer.util.FileUtils;
import com.offer.util.GeneratePDF;
import com.offer.util.SendEmail;

@Controller
public class OfferUserController extends BaseController {

   @Autowired
   private OfferUserService offerUserService;
   
   @Autowired
   private OfferUserInformationService offerUserInformationService;
   
   @Autowired
   private OfferJobService offerJobService;
   
   @Autowired
   private SendEmail sendEmail;
   
   @Autowired
   private Encryption encryption;
   
   @Autowired
   private BaseService baseService;
   
   @Autowired
   private GeneratePDF     generatePDF;
   
   @Autowired
   private OfferInviteService     offerInviteService;
   
   @Autowired
   private OfferFirmService       offerFirmService;
   
   @Autowired
   private OfferFirmSelectService       offerFirmSelectService;
   
   @Autowired
   private OfferPhotoService  offerPhotoService;
   
   @Autowired
   private BaseDao baseDao;
   
   private static SimpleDateFormat dateformatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
   
   private void allMethods(){
	   String aString = null;
		HttpServletRequest request = null;
		HttpServletResponse response = null;
	   resumeeditPage1(request, aString);//用户简历编辑页面初始化
	   editcontentPage1(request, aString);//用户简历编辑页面修改
	   saveeditcontent1(request, aString);//用户简历编辑页面保存
	   download(request, response);//用户简历编辑页面下载pdf
	   personalQuestionnaire(request);//企业审批通过--调查问卷初始化
	   saveofferSelect(request, aString);//企业审批通过--调查问卷保存
	   resumeviewPage1(request, aString);//查看候选人信息页面初始化
	   personalsettingsPage1(request, aString);//用户个人设置初始化
	   updateOfferUserPassword2(request, aString);//用户个人设置保存
	   getpersonalSettingsEdit(request, aString);//企业个人设置初始化
	   savepersonalSettingsEditName(request, aString);//企业个人设置修改名字
	   updateOfferUserPassword(request, aString);//企业个人设置修改密码
	   updateOfferUserJobId(request, aString);//企业个人设置修改职位
	   updateOfferInviteEmail(request, aString);//企业个人设置是否开启邮件
	   savepersonalSettingsEditName(request, aString);//企业个人设置修改名字
//	   firmzhaopin1(request, aString);//企业个人设置修改名字
   }

/*   @ResponseBody
   @RequestMapping(value = "/login/user")
   public Map<String, Object> login(HttpServletRequest request, HttpSession session) {
      try {
         OfferUser offerUser = offerUserService.islogin(request);
         if (offerUser != null) {
            session.setAttribute("id", offerUser.getId());
            return toJson("SUCCESS");
         }
      }
      catch (Exception e) {
         e.printStackTrace();
      }
      return null;
   }*/
   
   @ResponseBody 
   @RequestMapping(value="/logout/user", produces = "application/json")
	public Map<String, Object> logout(HttpServletRequest request, @RequestBody String data) {
		try {
			if(request.getSession().getAttribute("id") == null){
				return toJson(SUCCESS);
			}
			request.getSession().removeAttribute("id");
			request.getSession().removeAttribute("name");
			request.getSession().removeAttribute("password");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}
   
   @ResponseBody 
   @RequestMapping(value="/login/user", produces = "application/json")
   public Map<String, Object> login(HttpServletRequest request, @RequestBody String data){
      try {
         putToForm(data);
         OfferUser offerUser = offerUserService.islogin(form);
         if (offerUser != null) {
            request.getSession().setAttribute("id", offerUser.getId());
            request.getSession().setAttribute("name", offerUser.getOfferUserName());
            request.getSession().setAttribute("password", offerUser.getOfferUserPassword());
            return toJson(offerUser);
         }else {
            return toJson("loginError");
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      return null;
   }
   
   @ResponseBody 
   @RequestMapping(value="/register/user", produces = "application/json")
   public Map<String, Object> registerUser(HttpServletRequest request, @RequestBody String data){
      try {
         putToForm(data);
         offerUserService.saveOfferUser(form);
         return toJson(SUCCESS);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return null;
   }
   
	@ResponseBody 
	@RequestMapping(value="/jobList/user", produces = "application/json")
	public Map<String, Object> jobList(HttpServletRequest request, @RequestBody String data){
		try {

			List<Map<String, String>> t = new ArrayList<Map<String, String>>();
			List<OfferJob> offerJobs = offerJobService.getAllJob("1");
			for (int i = 0; i < offerJobs.size(); i++) {
			   Map<String, String> m = new HashMap<String, String>();
			   m.put("value", offerJobs.get(i).getJobName());
			   m.put("id", String.valueOf(offerJobs.get(i).getId()));
	         t.add(m);
         }
			return toJson(t);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@ResponseBody 
	@RequestMapping(value="/changeUserStatus/user", produces = "application/json")
	public Map<String, Object> changeUserStatus(HttpServletRequest request, @RequestBody String data){
		try {
			putToForm(data);
			OfferUser offerUser = offerUserService.getOfferUser(Integer.valueOf(form.get("id")));
			offerUser.setStatus(form.get("status"));
			offerUserService.updateOfferUser(offerUser);
			return toJson(SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@ResponseBody 
	@RequestMapping(value="/changeguwenStatus/user", produces = "application/json")
	public Map<String, Object> changeguwenStatus(HttpServletRequest request, @RequestBody String data){
		try {
			putToForm(data);
			String userId = request.getParameter("id");
			String status = request.getParameter("status");
//			System.out.println(userId);
			OfferUser offerUser = offerUserService.getOfferUser(Integer.valueOf(userId));
			offerUser.setStatus(status);
			offerUserService.updateOfferUser(offerUser);
			return toJson(SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@ResponseBody 
	@RequestMapping(value="/saveUserInfo/user", produces = "application/json")
	public Map<String, Object> saveUserInfo(HttpServletRequest request, @RequestBody String data){
		try {
			putToForm(data);
			offerUserInformationService.saveOfferUserInfo(form);
			return toJson(SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@ResponseBody 
   @RequestMapping(value="/sendConfirmEmail/user", produces = "application/json")
   public Map<String, Object> sendConfirmEmail(HttpServletRequest request, @RequestBody String data){
      try {
         putToForm(data);
//         offerUserInformationService.saveOfferUserInfo(form);
         sendEmail.sendEmail(form);
         return toJson(SUCCESS);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return null;
   }
	
	//个人设置页面 
	@ResponseBody
	@RequestMapping(value = "/user/personalsettingsPage1", produces = "application/json")
	public Map<String, Object> personalsettingsPage1(HttpServletRequest request, @RequestBody String data) {
		try {
			OfferUser offerUser = offerUserService.getOfferUser(request.getSession().getAttribute("id").toString());
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("account", returnString(offerUser.getOfferUserEmail()));
			map.put("phone", returnString(offerUser.getOfferUserPhone()));
			map.put("isAccountPhone", returnString(offerUser.getIsAccountPhone()));
			map.put("emailmsg", returnString(offerUser.getEmailmsg()));
			map.put("dataName", offerUser.getStatus().equals("4") ? "1" : "0");//.equals("1") ? "1" : "0"
			return toJson(map);
		} catch (Exception e) {
			e.printStackTrace();
			return toJson(ERROR);
		}
	}
	
	//个人设置保存
	@ResponseBody
	@RequestMapping(value = "/user/savepersonalsettings1", produces = "application/json")
	public Map<String, Object> savepersonalsettings1(HttpServletRequest request, @RequestBody String data) {
		try {
			putToForm(data);
			OfferUser offerUser = offerUserService.getOfferUser(request.getSession().getAttribute("id").toString());
			offerUser.setIsAccountPhone(form.get("phone"));
			offerUser.setEmailmsg(form.get("emailmsg"));
			offerUser.setOfferUserPassword(encryption.encryption(form.get("passwordconfirm")));
			offerUserService.updateOfferUser(offerUser);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}
	
	// 我的简历
	@ResponseBody
	@RequestMapping(value = "/user/resumeeditPage1", produces = "application/json")
	public Map<String, Object> resumeeditPage1(HttpServletRequest request, @RequestBody String data) {
		try {
		   String userId = request.getSession().getAttribute("id").toString();
         OfferUser offerUser = offerUserService.getOfferUser(Integer.parseInt(userId));
         List<OfferUserInformation> offerUserInformation = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId));
         OfferUserInformation offerUserInformations = offerUserInformation.get(0);
         List<OfferUserWorks> offerUserWorkss  = offerUserInformationService.getOfferUserWorks4UserId(Integer.parseInt(userId));
         List<OfferUserEducation>  OfferUserEducations = offerUserInformationService.getOfferUserEducation4UserId(Integer.parseInt(userId));
         List<OfferUserShield>  offerUserShields = offerUserInformationService.getOfferUserShield4UserId(Integer.parseInt(userId));
         Map<String, Object> map = new HashMap<String, Object>();
         float index = 0;
         String information = offerUser!=null?"1":"0";
         String me = offerUser!=null?"1":"0";
         if ("1".equals(information))index++;
         if ("1".equals(me))index++;
         String skill = offerUserInformations.getOfferUserDescription()!=null?"1":"0";
         if ("1".equals(skill))index++;
         String work = offerUserWorkss.size()>0?"1":"0";
         if ("1".equals(work))index++;
         String education = OfferUserEducations.size()>0?"1":"0";
         if ("1".equals(education))index++;
//       String project = "0";//offerUserWorkss.size()>0?"1":"0";
//       if ("1".equals(project))index++;
         String description = offerUserInformations.getOfferDescription()!=null?"1":"0";
         if ("1".equals(description))index++;
         String works = offerUserInformations.getOfferUserOpus()!=null?"1":"0";
         if ("1".equals(works))index++;
         String protect = offerUserInformations.getEndless()!=null?"1":"0";
         if ("1".equals(protect))index++;
         String integrity = String.valueOf((int)(index/8*100))+"%";
         
         map.put("integrity", integrity);
         map.put("me", "1");
         map.put("information", information);
         map.put("skill", skill);
         map.put("work", work);
         map.put("education",education);
//       map.put("project", project);
         map.put("description", description);
         map.put("works", works);
         map.put("protect", protect);
			
			Map<String, String> informationMap1 = new HashMap<String, String>();
//			File file=new File("../upload/photo/"+offerUser.getId()+".jpg"); 
//			if (!file.exists()) {
//			   String nameString = ChinaInitial.getPYIndexStr(offerUser.getOfferUserName(), true);
//				informationMap1.put("userPhoto", "../img/font/"+nameString.toCharArray()[0]+".png");
//			}
//			else {
//				informationMap1.put("userPhoto", "../upload/photo/"+offerUser.getId()+".jpg");
//			}
			List<OfferPhoto> offerPhotos = offerPhotoService.findByCandidateId(userId);
			if (offerPhotos.size() > 0) {
			   informationMap1.put("userPhoto", "../upload/photo/"+offerPhotos.get(0).getPhotoSavename());
         }
			else {
			   String nameString = ChinaInitial.getPYIndexStr(offerUser.getOfferUserName(), true);
			   //FileUtils.getGreenPhotoPath(returnString(offerUser.getOfferUserName()));
			   informationMap1.put("userPhoto", FileUtils.getGreenPhotoPath(returnString(offerUser.getOfferUserName())));//"../img/font/"+nameString.toCharArray()[0]+".png");//FileUtils.getGreenPhotoPath(returnString(list.get(0).get("offerUserName")))
         }
			String offerUserBirthday = returnString(offerUserInformations.getOfferUserBirthday());
			String age = "";
			if (!"".equals(offerUserBirthday)) {
			   Calendar calendar = Calendar.getInstance();
			   Integer year = calendar.get(Calendar.YEAR); 
			   Integer birth = Integer.valueOf(offerUserBirthday.split("-")[0]);
			   age = "，" +String.valueOf(year - birth) + "岁" + "，";
         }
			else {
				age = "，";
			}
			informationMap1.put("userName", offerUser.getOfferUserName() == null ? "" : offerUser.getOfferUserName());//(returnString(offerUserInformations.getOfferUserAge()).equals("") ? "" : (offerUserInformations.getOfferUserAge().toString() + "岁"))
			String cityName = "";
			List<Map<String, String>> items = baseService.getDiShiCityName(offerUser.getOfferUserCity());
			if (items.size()>0) {
				cityName = baseService.getDiShiCityName(offerUser.getOfferUserCity()).get(0).get("cityName");
			}
		
			informationMap1.put("simpleResume", ("1".equals(returnString(offerUserInformations.getOfferUserSex())) ? "男" : "女") + age + returnString("现居" + cityName));
			informationMap1.put("offerUserNowPlace", returnString(cityName));
			informationMap1.put("email", offerUser.getOfferUserEmail() == null ? "" : offerUser.getOfferUserEmail());
			informationMap1.put("phone", offerUser.getOfferUserPhone() == null ? "" : offerUser.getOfferUserPhone());
			map.put("informationTd1", informationMap1);
			
			Map<String, Object> informationMap2 = new HashMap<String, Object>();
			informationMap2.put("userName", offerUser.getOfferUserName());
			List<Map<String, String>> informationList2 = new ArrayList<Map<String, String>>();
			List<String> infos = new ArrayList<String>();
//			infos.add("何时上班：" + ("".equals(returnString(offerUserInformations.getOfferUserWhenWork())) ? "无" : returnString(offerUserInformations.getOfferUserWhenWork())));
//			infos.add("求职状态："+("".equals(returnString(offerUserInformations.getOfferJobStatus())) ? "无" : returnString(offerUserInformations.getOfferJobStatus())));
//			infos.add("工作时间："+("".equals(returnString(offerUserInformations.getOfferUserWorktime())) ? "无" : returnString(offerUserInformations.getOfferUserWorktime())));
//			infos.add("工作地点："+("".equals(returnString(offerUserInformations.getOfferUserWorkPlace())) ? "无" : returnString(offerUserInformations.getOfferUserWorkPlace())));
			String offerUserLikeFirmStage = returnString(offerUserInformations.getOfferUserLikeFirmStage());
			String nowOfferUserLikeFirmStage = "";
			if (!"".equals(offerUserLikeFirmStage)) {
			   List<Map<String, String>> listStage = baseService.getOfferStage();
            for (String string : offerUserLikeFirmStage.split(",")) {
               for (Map<String, String> map2 : listStage) {
                  if (string.equals(String.valueOf(map2.get("id")))) {
                     nowOfferUserLikeFirmStage += map2.get("offerStage") + "，";
                  }
               }
            }
            nowOfferUserLikeFirmStage = nowOfferUserLikeFirmStage.substring(0, nowOfferUserLikeFirmStage.lastIndexOf("，")) + "工作";
         }
			String offerUserWhenWork = returnString(offerUserInformations.getOfferUserWhenWork());
			String offerJobStatus = returnString(offerUserInformations.getOfferJobStatus());
			Map<String, String> findMap = new HashMap<String, String>();
			findMap.put("offerUserId", userId);
			List<OfferUserPlanWorkPlace> offerUserPlanWorkPlaces = (List<OfferUserPlanWorkPlace>)baseDao.findField(OfferUserPlanWorkPlace.class, findMap);
			String allOfferUserPlanWorkPlace = "";
			if (offerUserPlanWorkPlaces.size() > 0) {
            String offerCityId = offerUserPlanWorkPlaces.get(0).getOfferCityId();
            for (String string : offerCityId.split(",")) {
               allOfferUserPlanWorkPlace += baseService.getDiShiCityName(string).get(0).get("cityName")+ "，";
            }
            allOfferUserPlanWorkPlace = allOfferUserPlanWorkPlace.substring(0, allOfferUserPlanWorkPlace.lastIndexOf("，")) + "工作";
         }
			String offerUserNowYearWages = returnString(offerUserInformations.getOfferUserNowYearWages());
			String offerNowGetMoneyType = returnString(offerUserInformations.getOfferNowGetMoneyType());
			String offerUserPlanYearWages = returnString(offerUserInformations.getOfferUserPlanYearWages());
			String offerPlanGetMoneyType = returnString(offerUserInformations.getOfferPlanGetMoneyType());
			infos.add("目前年薪"+ offerUserNowYearWages + "万" + offerNowGetMoneyType + "，期望年薪" + offerUserPlanYearWages + "万" + offerPlanGetMoneyType);
			infos.add("期望在"+ allOfferUserPlanWorkPlace);
			infos.add(offerJobStatus + "，" + offerUserWhenWork);
			infos.add("期望在"+ nowOfferUserLikeFirmStage);
//			String job1 = returnString(offerUserInformations.getOfferUserJob1() == null ? "" : offerJobService.getOfferJob(offerUserInformations.getOfferUserJob1()).get(0).getJobName());
//			String job2 = returnString(offerUserInformations.getOfferUserJob2() == null ? "" : offerJobService.getOfferJob(offerUserInformations.getOfferUserJob2()).get(0).getJobName());
//			infos.add("技术类型："+job1+(!"".equals(job2) ? "" : "/" + job2));//offerUserInformations.getOfferUserEducation()+
			infos.add("其他要求：" + offerUserInformations.getOfferRequestNextJob() == null ? "无" : returnString(offerUserInformations.getOfferRequestNextJob()));
			for(int i = 0; i < infos.size(); i++){
				Map<String, String> informationListMap2 = new HashMap<String, String>();
				informationListMap2.put("str", infos.get(i));
				informationList2.add(informationListMap2);
			}
			informationMap2.put("informationList2", informationList2);
			map.put("informationTd2", informationMap2);
			
			Map<String, Object> skillMap = new HashMap<String, Object>();
			List<Map<String, String>> skillList1 = new ArrayList<Map<String, String>>();
			List<Map<String, String>> skillList2 = new ArrayList<Map<String, String>>();
			String offerUserWorkTime = returnString(offerUserInformations.getOfferUserWorktime());
			String offerUserJob1 = returnString(offerUserInformations.getOfferUserJob1());
			String offerUserJob2 = returnString(offerUserInformations.getOfferUserJob2());
			String offerHaveExperience1 = returnString(offerUserInformations.getOfferHaveExperience1());
			String offerHaveExperience2 = returnString(offerUserInformations.getOfferHaveExperience2());
			String a1 = returnString(offerUserInformations.getOfferUserDescription());
			Map<String, String> skillMap1 = new HashMap<String, String>();
			if (!"".equals(offerUserWorkTime)) {
			   skillMap1.put("str", offerUserWorkTime + "工作经验");
			   skillList1.add(skillMap1);
         }
			if (!"".equals(offerUserJob1)) {
			   skillMap1 = new HashMap<String, String>();
			   skillMap1.put("str", offerJobService.getOfferJob(Integer.valueOf(offerUserJob1)).get(0).getJobName() + "(" + offerHaveExperience1 + ")");
            skillList1.add(skillMap1);
			}
			if (!"".equals(offerUserJob2)) {
			   skillMap1 = new HashMap<String, String>();
			   skillMap1.put("str", offerJobService.getOfferJob(Integer.valueOf(offerUserJob2)).get(0).getJobName() + "(" + offerHaveExperience2 + ")");
            skillList1.add(skillMap1);
			}
			if (!"".equals(a1)) {
	         String[] a = a1.split(",");
	         for (String string : a) {
	            Map<String, String> skillMap2 = new HashMap<String, String>();
	            skillMap2.put("str", string);
	            skillList2.add(skillMap2);
	         }
         }
//			for(int i = 0; i < a.length; i++){
//				System.out.println(a[i]);
//				Map<String, String> skillMap1 = new HashMap<String, String>();
//				skillMap1.put("str", a[i]);
//				skillList1.add(skillMap1);
//			}
//			for(int i = 0; i < a.length; i++){
//				Map<String, String> skillMap2 = new HashMap<String, String>();
//				skillMap2.put("str", a[i]);
//				skillList2.add(skillMap2);
//			}
			skillMap.put("skillList1", skillList1);
         skillMap.put("skillList2", skillList2);
         map.put("skillTd", skillMap);
         String str = "";
         List<Map<String, Object>> listOfWorks = new ArrayList<Map<String,Object>>();
         for (int i = 0; i < offerUserWorkss.size(); i++) {
//          str = str + "公司名称："+returnString(offerUserWorkss.get(i).getOldFirmName())+"<br/>工作时间："+returnString(offerUserWorkss.get(i).getStartTime())+"~"+returnString(offerUserWorkss.get(i).getEndTime())+"<br>工作描述："+returnString(offerUserWorkss.get(i).getJobDescript())+"<br><br>";
//          str = str + returnString(offerUserWorkss.get(i).getOldFirmName())+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+returnString(offerUserWorkss.get(i).getStartTime())+"~"+returnString(offerUserWorkss.get(i).getEndTime())+"<br>" + returnString(offerUserWorkss.get(i).getJobName()) + "<br>"+returnString(offerUserWorkss.get(i).getJobDescript())+"<br><br>";
            Map<String, Object> newMap = new HashMap<String, Object>();
            newMap.put("oldFirmName", returnString(offerUserWorkss.get(i).getOldFirmName()));
            newMap.put("startTime", returnString(offerUserWorkss.get(i).getStartTime()));
            if (offerUserWorkss.get(i).getToNow().equals("1")) {
               newMap.put("endTime", "至今");
            }
            else {
               newMap.put("endTime", returnString(offerUserWorkss.get(i).getEndTime()));
            }
            newMap.put("jobName", returnString(offerUserWorkss.get(i).getJobName()));
            newMap.put("jobDescript", returnString(offerUserWorkss.get(i).getJobDescript()));
            listOfWorks.add(newMap);
         }
         
//      Map<String, Object> workMap = new HashMap<String, Object>();         
//      workMap.put("str", listOfWorks);
        map.put("workTd", listOfWorks);
			
			Map<String, Object> educationMap = new HashMap<String, Object>();
			List<Map<String, String>> educationList = new ArrayList<Map<String, String>>();
			for(int i = 0; i < OfferUserEducations.size(); i++){
            Map<String, String> educationMap2 = new HashMap<String, String>();
//          educationMap2.put("str", returnString(OfferUserEducations.get(i).getSchoolName())+"："+returnString(OfferUserEducations.get(i).getStarTime())+"至"+returnString(OfferUserEducations.get(i).getEndTime()));
            educationMap2.put("schoolName", returnString(OfferUserEducations.get(i).getSchoolName()));
            educationMap2.put("starTime", returnString(OfferUserEducations.get(i).getStarTime()));
            if (OfferUserEducations.get(i).getToNow().equals("1")) {
               educationMap2.put("endTime", "至今");
            }
            else {
               educationMap2.put("endTime", returnString(OfferUserEducations.get(i).getEndTime()));
            }
            educationMap2.put("userMajor", returnString(OfferUserEducations.get(i).getUserMajor()));
            educationMap2.put("userXueLi", returnString(OfferUserEducations.get(i).getOfferUserXueli()));
            educationList.add(educationMap2);
         }
         educationMap.put("educationList", educationList);
         map.put("educationTd", educationMap);
			
			Map<String, Object> descriptionMap = new HashMap<String, Object>();
			descriptionMap.put("str", returnString(offerUserInformations.getOfferDescription()));
			map.put("descriptionTd", descriptionMap);
			
//			Map<String, Object> worksMap = new HashMap<String, Object>();
//			worksMap.put("str", "GitHub："+returnString(offerUserInformations.getOfferUserGithub())+"<br>"+"知乎："+returnString(offerUserInformations.getOfferUserZhihu())+"<br>"+"博客："+returnString(offerUserInformations.getOfferUserBlog())+"<br>"+"Web站："+returnString(offerUserInformations.getOfferUserPersonWeb())+"<br>");
			map.put("worksTd", returnString(offerUserInformation.get(0).getOfferUserOpus()));
			
			Map<String, Object> protectMap = new HashMap<String, Object>();
			protectMap.put("str",returnString(offerUserInformations.getEndless()));
			map.put("protectTd", protectMap);
			return toJson(map);
		} catch (Exception e) {
			e.printStackTrace();
			return toJson(ERROR);
		}
	}
	
	// 点击发送邀请的模板
   @ResponseBody
   @RequestMapping(value = "/user/inputDataForMoBan", produces = "application/json")
   public Map<String, Object> inputDataForMoBan(HttpServletRequest request, @RequestBody String data) {
      try {
         Map<String, Object> map = new HashMap<String, Object>();
         String offerUserId = request.getSession().getAttribute("id").toString();
         String offerFirmId = request.getSession().getAttribute("firmId").toString();
         List<Map<String, String>> listOfMoBan = offerInviteService.getOfferInvitesByFirmIdAndUserId(offerUserId, offerFirmId, data);
         if (listOfMoBan.size() > 0) {
            map.put("jobName", returnString(listOfMoBan.get(0).get("job_name")));
            map.put("jobPlace", returnString(listOfMoBan.get(0).get("job_place")));
            map.put("jobMonthWagesFirst", returnString(listOfMoBan.get(0).get("job_month_wages_first")));
            map.put("jobMonthWagesSecond", returnString(listOfMoBan.get(0).get("job_month_wages_second")));
            map.put("jobMonth", returnString(listOfMoBan.get(0).get("job_month")));
            map.put("isstock", returnString(listOfMoBan.get(0).get("isstock")));
            map.put("getMoneyType", returnString(listOfMoBan.get(0).get("get_money_type")));
            map.put("chatMessage", returnString(listOfMoBan.get(0).get("chat_message")));
         }
         else {
            return toJson(ERROR);
         }
         return toJson(map);
      }
      catch (Exception e) {
         e.printStackTrace();
         return toJson(ERROR);
      }
   }
	
	// 个人简历
	@ResponseBody
	@RequestMapping(value = "/user/resumeviewPage1", produces = "application/json")
	public Map<String, Object> resumeviewPage1(HttpServletRequest request, @RequestBody String data) {
		try {
		   String offerUserId = request.getSession().getAttribute("id").toString();
			String offerCandidateId = request.getSession().getAttribute("userId").toString();
//			String offerUserId = request.getSession().getAttribute("id").toString();
			String offerFirmId = request.getSession().getAttribute("firmId").toString();
//			OfferUser offerFirmUser = offerUserService.getOfferUser(offerUserId);
//			String userId = request.getParameter("offerCandidateId");
			OfferUser offerCandidate = offerUserService.getOfferUser(Integer.parseInt(offerCandidateId));
			String isoffer = offerCandidate.getIsoffer();
//			OfferUser offerUser = offerUserService.getOfferUser(Integer.parseInt(offerUserId));
			List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(offerCandidateId));
			OfferUserInformation offerUserInformation;
			if (offerUserInformations.size() > 0) {
			   offerUserInformation = offerUserInformations.get(0);
         }
			else {
			   offerUserInformation = null;
			}
			List<OfferUserWorks> offerUserWorkss  = offerUserInformationService.getOfferUserWorks4UserId(Integer.parseInt(offerCandidateId));
			List<OfferUserEducation>  OfferUserEducations = offerUserInformationService.getOfferUserEducation4UserId(Integer.parseInt(offerCandidateId));
			List<OfferUserShield>  offerUserShields = offerUserInformationService.getOfferUserShield4UserId(Integer.parseInt(offerCandidateId));
         Map<String, String> findMap = new HashMap<String, String>();
//         findMap.put("offerUserId", offerUserId);
//         findMap.put("offerFirmId", offerFirmId);
         findMap.put("offerCandidateId", offerCandidateId);
			Map<String, Object> map = new HashMap<String, Object>();
			List<Map<String, String>> moneytypeList = new ArrayList<Map<String,String>>();
         List<Map<String, String>> listOfmoneyType = baseService.getOfferMoneyType();
         for(Map<String, String> map2 : listOfmoneyType){
            Map<String, String> moneytypeMap = new HashMap<String, String>();
            moneytypeMap.put("id", String.valueOf(map2.get("id")));
            moneytypeMap.put("value", map2.get("offerMoneyType"));
            moneytypeList.add(moneytypeMap);
         }
         map.put("moneytypeList", moneytypeList);
			map.put("userId", offerCandidateId);

         List<Map<String, String>> keyongmoban = new ArrayList<Map<String,String>>();
         List<Map<String, String>> listOfMoBan = offerInviteService.getOfferInvitesByFirmIdAndUserId(offerUserId, offerFirmId);
         for (Map<String, String> nowMap : listOfMoBan) {
            Map<String, String> newMap = new HashMap<String, String>();
            newMap.put("id", returnString(nowMap.get("id")));
            newMap.put("jobName", returnString(nowMap.get("job_name")));
            keyongmoban.add(newMap);
         }
         map.put("keyongmoban", keyongmoban);
//			map.put("userName", returnString(offerUser.getOfferUserName()));
			putUserName(map, request);
			map.put("isoffer", isoffer);
         List<OfferCollect> offerCollects = baseService.getOfferCollects(findMap);
         List<OfferInvite> offerInvites = baseService.getOfferInvite1(findMap);
         if (offerCollects.size() > 0) {
            map.put("haveCollect", "true");
         }
         else {
            map.put("haveCollect", "false");
         }
         if (offerInvites.size() > 0) {
            map.put("haveInvite", "true");
         }
         else {
            map.put("haveInvite", "false");
         }
//			float index = 0;
//			String information = offerCandidate!=null?"1":"0";
//			if ("1".equals(information))index++;
//			String skill = offerUserInformation == null ? "0" : offerUserInformation.getOfferUserDescription()!=null ? "1":"0";
//			if ("1".equals(skill))index++;
//			String work = offerUserWorkss.size()>0?"1":"0";
//			if ("1".equals(work))index++;
//			String education = OfferUserEducations.size()>0?"1":"0";
//			if ("1".equals(education))index++;
//			String project = offerUserWorkss.size()>0?"1":"0";
//			if ("1".equals(project))index++;
//			String description = offerUserInformation == null ? "0" : offerUserInformation.getOfferUserDescription()!=null?"1":"0";
//			if ("1".equals(description))index++;
//			String works = offerUserInformation == null ? "0" : offerUserInformation.getOfferUserDescription()!=null?"1":"0";
//			if ("1".equals(works))index++;
//			String protect = offerUserShields.size() > 0 ? "1":"0";
//			if ("1".equals(protect))index++;
//			String integrity = String.valueOf(index/8*100)+"%";
//			
//			map.put("integrity", integrity);
//			map.put("information", information);
//			map.put("skill", skill);
//			map.put("work", work);
//			map.put("education",education);
//			map.put("project", project);
//			map.put("description", description);
//			map.put("works", works);
//			map.put("protect", protect);
			
			//判断面试状态
			List<OfferInvite> invites = offerInviteService.getOfferInvitesforcandaId(String.valueOf(offerCandidate.getId()),offerFirmId);
			Map<String, String> informationMap1 = new HashMap<String, String>();//"../upload/photo/"+
//			informationMap1.put("userPhoto", FileUtils.getphotoPath(String.valueOf(offerCandidate.getId()),offerCandidate.getOfferUserName()));//FileUtils.getphotoPath();+".jpg"
			List<OfferPhoto> offerPhotos = offerPhotoService.findByCandidateId(offerCandidateId);
         if (offerPhotos.size() > 0) {
            informationMap1.put("userPhoto", "../upload/photo/"+offerPhotos.get(0).getPhotoSavename());
         }
         else {
            String nameString = ChinaInitial.getPYIndexStr(offerCandidate.getOfferUserName(), true);
//            informationMap1.put("userPhoto", "../img/font/"+nameString.toCharArray()[0]+".png");
            informationMap1.put("userPhoto", FileUtils.getGreenPhotoPath(offerCandidate.getOfferUserName()));
         }
         String offerUserBirthday = returnString(offerUserInformation.getOfferUserBirthday());
         String age = "";
         if (!"".equals(offerUserBirthday)) {
            Calendar calendar = Calendar.getInstance();
            Integer year = calendar.get(Calendar.YEAR); 
            Integer birth = Integer.valueOf(offerUserBirthday.split("-")[0]);
            age = "，" +String.valueOf(year - birth) + "岁" + "，";
         } 
         String name = ChinaInitial.getPYIndexStr(offerCandidate.getOfferUserName(), true);
         String sex = offerUserInformation == null ? "" : offerUserInformation.getOfferUserSex().equals("1") ? "先生  " : "女士   ";
			informationMap1.put("userName", name.substring(0,1) + sex);//returnString(offerCandidate.getOfferUserName()));
			informationMap1.put("simpleResume", (offerUserInformation == null ? "" : offerUserInformation.getOfferUserSex().equals("1") ? "男   " : "女   ") + age + returnString("现居" + (offerCandidate.getOfferUserCity() == null ? "" : baseService.getDiShiCityName(offerCandidate.getOfferUserCity()).get(0).get("cityName"))) + "，期待年薪" + returnString(offerUserInformation.getOfferUserPlanYearWages()) + "万" + returnString(offerUserInformation.getOfferPlanGetMoneyType()));
			informationMap1.put("email", returnString(offerCandidate.getOfferUserEmail()));
			if (invites.size() == 0) {
				map.put("inviteStatus", "1");
			}else {
				map.put("inviteStatus", "0");
			}
			if (invites.size()>0 && Integer.valueOf(invites.get(0).getStatus()) > 2) {
				informationMap1.put("phone", returnString(offerCandidate.getOfferUserPhone()));
			}
			else {
				informationMap1.put("phone", "候选人同意面试邀请后方能查看联系方式");
			}
			
			map.put("informationTd1", informationMap1);
			
			map.put("guwen", returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferAdviserRemark()));
			
			/*File file=new File("../upload/photo/"+offerCandidate.getId()+".jpg"); 
         if(!file.exists())    
         {    String nameString = ChinaInitial.getPYIndexStr(offerCandidate.getOfferUserName(), true);
            informationMap1.put("userPhoto", "../img/font/"+nameString.toCharArray()[0]+".png");
         } else {
            informationMap1.put("userPhoto", "../upload/photo/"+offerCandidate.getId()+".jpg");
         }*/
//			FileUtils.getphotoPath(offerCandidateId, offerCandidate.getOfferUserName());
//			Map<String, Object> informationMap2 = new HashMap<String, Object>();
//			informationMap2.put("userName", returnString(offerCandidate.getOfferUserName()));
//			List<Map<String, String>> informationList2 = new ArrayList<Map<String, String>>();
//			List<String> infos = new ArrayList<String>();
//			infos.add("何时入职："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserWhenWork()));
//			infos.add("求职情况："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferJobStatus()));
//			infos.add("工作时间："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserWorktime()));
//			infos.add("工作地点："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserWorkPlace()));
//			String job1 = offerUserInformation == null ? "" : offerUserInformation.getOfferUserJob1() == null ? "" : returnString(offerJobService.getOfferJob(offerUserInformation.getOfferUserJob1()).get(0).getJobName());
//			String job2 = offerUserInformation == null ? "" : offerUserInformation.getOfferUserJob2() == null ? "" : returnString(offerJobService.getOfferJob(offerUserInformation.getOfferUserJob2()).get(0).getJobName());
//			infos.add("工作技能：" + job1+("".equals(job2) ? "" : "/" + job2));//offerUserInformations.getOfferUserEducation()+"  "+
//			for(int i = 0; i < infos.size(); i++){
//				Map<String, String> informationListMap2 = new HashMap<String, String>();
//				informationListMap2.put("str", infos.get(i));
//				informationList2.add(informationListMap2);
//			}
//			informationMap2.put("informationList2", informationList2);
//			map.put("informationTd2", informationMap2);
			
			Map<String, Object> informationMap2 = new HashMap<String, Object>();
//         informationMap2.put("nowUserName", offerCandidate.getOfferUserName());
         informationMap2.put("nowUserName", name.substring(0,1) + sex);
         List<Map<String, String>> informationList2 = new ArrayList<Map<String, String>>();
         List<String> infos = new ArrayList<String>();
//       infos.add("何时上班：" + ("".equals(returnString(offerUserInformations.getOfferUserWhenWork())) ? "无" : returnString(offerUserInformations.getOfferUserWhenWork())));
//       infos.add("求职状态："+("".equals(returnString(offerUserInformations.getOfferJobStatus())) ? "无" : returnString(offerUserInformations.getOfferJobStatus())));
//       infos.add("工作时间："+("".equals(returnString(offerUserInformations.getOfferUserWorktime())) ? "无" : returnString(offerUserInformations.getOfferUserWorktime())));
//       infos.add("工作地点："+("".equals(returnString(offerUserInformations.getOfferUserWorkPlace())) ? "无" : returnString(offerUserInformations.getOfferUserWorkPlace())));
         String offerUserLikeFirmStage = returnString(offerUserInformation.getOfferUserLikeFirmStage());
         String nowOfferUserLikeFirmStage = "";
         if (!"".equals(offerUserLikeFirmStage)) {
            List<Map<String, String>> listStage = baseService.getOfferStage();
            for (String string : offerUserLikeFirmStage.split(",")) {
               for (Map<String, String> map2 : listStage) {
                  if (string.equals(String.valueOf(map2.get("id")))) {
                     nowOfferUserLikeFirmStage += map2.get("offerStage") + "，";//公司
                  }
               }
            }
            nowOfferUserLikeFirmStage = nowOfferUserLikeFirmStage.substring(0, nowOfferUserLikeFirmStage.lastIndexOf("，")) + "工作";
         }
         String offerUserWhenWork = returnString(offerUserInformation.getOfferUserWhenWork());
         String offerJobStatus = returnString(offerUserInformation.getOfferJobStatus());
//         Map<String, String> findMap = new HashMap<String, String>();
//         findMap.put("offerUserId", userId);
         List<OfferUserPlanWorkPlace> offerUserPlanWorkPlaces = (List<OfferUserPlanWorkPlace>)baseDao.findField(OfferUserPlanWorkPlace.class, findMap);
         String allOfferUserPlanWorkPlace = "";
         if (offerUserPlanWorkPlaces.size() > 0) {
            String offerCityId = offerUserPlanWorkPlaces.get(0).getOfferCityId();
            for (String string : offerCityId.split(",")) {
               allOfferUserPlanWorkPlace += baseService.getDiShiCityName(string).get(0).get("cityName")+ "，";
            }
            allOfferUserPlanWorkPlace = allOfferUserPlanWorkPlace.substring(0, allOfferUserPlanWorkPlace.lastIndexOf("，")) + "工作";
         }
         String offerUserNowYearWages = returnString(offerUserInformation.getOfferUserNowYearWages());
         String offerNowGetMoneyType = returnString(offerUserInformation.getOfferNowGetMoneyType());
         String offerUserPlanYearWages = returnString(offerUserInformation.getOfferUserPlanYearWages());
         String offerPlanGetMoneyType = returnString(offerUserInformation.getOfferPlanGetMoneyType());
         infos.add("目前年薪"+ offerUserNowYearWages + "万" + offerNowGetMoneyType + "，期望年薪" + offerUserPlanYearWages + "万" + offerPlanGetMoneyType);
         infos.add("期望在"+ allOfferUserPlanWorkPlace);
         infos.add(offerJobStatus + "，" + offerUserWhenWork);
         infos.add("期望在"+ returnString(nowOfferUserLikeFirmStage));
//       String job1 = returnString(offerUserInformations.getOfferUserJob1() == null ? "" : offerJobService.getOfferJob(offerUserInformations.getOfferUserJob1()).get(0).getJobName());
//       String job2 = returnString(offerUserInformations.getOfferUserJob2() == null ? "" : offerJobService.getOfferJob(offerUserInformations.getOfferUserJob2()).get(0).getJobName());
//       infos.add("技术类型："+job1+(!"".equals(job2) ? "" : "/" + job2));//offerUserInformations.getOfferUserEducation()+
         infos.add("其他要求：" + (offerUserInformation.getOfferRequestNextJob() == null ? "无" : returnString(offerUserInformation.getOfferRequestNextJob())));
         for(int i = 0; i < infos.size(); i++){
            Map<String, String> informationListMap2 = new HashMap<String, String>();
            informationListMap2.put("str", infos.get(i));
            informationList2.add(informationListMap2);
         }
         informationMap2.put("informationList2", informationList2);
         map.put("informationTd2", informationMap2);
			
			Map<String, Object> skillMap = new HashMap<String, Object>();
         List<Map<String, String>> skillList1 = new ArrayList<Map<String, String>>();
         List<Map<String, String>> skillList2 = new ArrayList<Map<String, String>>();
         String offerUserWorkTime = returnString(offerUserInformation.getOfferUserWorktime());
         String offerUserJob1 = returnString(offerUserInformation.getOfferUserJob1());
         String offerUserJob2 = returnString(offerUserInformation.getOfferUserJob2());
         String offerHaveExperience1 = returnString(offerUserInformation.getOfferHaveExperience1());
         String offerHaveExperience2 = returnString(offerUserInformation.getOfferHaveExperience2());
         String a1 = returnString(offerUserInformation.getOfferUserDescription());
         Map<String, String> skillMap1 = new HashMap<String, String>();
         if (!"".equals(offerUserWorkTime)) {
            skillMap1.put("str", offerUserWorkTime + "工作经验");
            skillList1.add(skillMap1);
         }
         if (!"".equals(offerUserJob1)) {
            skillMap1 = new HashMap<String, String>();
            skillMap1.put("str", offerJobService.getOfferJob(Integer.valueOf(offerUserJob1)).get(0).getJobName() + "(" + offerHaveExperience1 + ")");
            skillList1.add(skillMap1);
         }
         if (!"".equals(offerUserJob2)) {
            skillMap1 = new HashMap<String, String>();
            skillMap1.put("str", offerJobService.getOfferJob(Integer.valueOf(offerUserJob2)).get(0).getJobName() + "(" + offerHaveExperience2 + ")");
            skillList1.add(skillMap1);
         }
         if (!"".equals(a1)) {
            String[] a = a1.split(",");
            for (String string : a) {
               Map<String, String> skillMap2 = new HashMap<String, String>();
               skillMap2.put("str", string);
               skillList2.add(skillMap2);
            }
         }
//			Map<String, Object> skillMap = new HashMap<String, Object>();
//			List<Map<String, String>> skillList1 = new ArrayList<Map<String, String>>();
//			String[] a = offerUserInformation == null ? new String[]{} : offerUserInformation.getOfferUserDescription().split(",");
//			for(int i = 0; i < a.length; i++){
//				System.out.println(a[i]);
//				Map<String, String> skillMap1 = new HashMap<String, String>();
//				skillMap1.put("str", a[i]);
//				skillList1.add(skillMap1);
//			}
//			List<Map<String, String>> skillList2 = new ArrayList<Map<String, String>>();
//			for(int i = 0; i < a.length; i++){
//				Map<String, String> skillMap2 = new HashMap<String, String>();
//				skillMap2.put("str", a[i]);
//				skillList2.add(skillMap2);
//			}
			skillMap.put("skillList1", skillList1);
			skillMap.put("skillList2", skillList2);
			map.put("skillTd", skillMap);
//			String str = "";
//			for (int i = 0; i < offerUserWorkss.size(); i++) {
//				str = str + "公司名称："+returnString(offerUserWorkss.get(i).getOldFirmName())+"&nbsp;&nbsp;&nbsp;<br/>工作时间："+returnString(offerUserWorkss.get(i).getStartTime())+"~"+returnString(offerUserWorkss.get(i).getEndTime())+"<br>工作描述："+returnString(offerUserWorkss.get(i).getJobDescript())+"<br><br>";
//			}
			 
//			Map<String, Object> workMap = new HashMap<String, Object>();			
//			workMap.put("str", str);
			List<Map<String, Object>> listOfWorks = new ArrayList<Map<String,Object>>();
         for (int i = 0; i < offerUserWorkss.size(); i++) {
//          str = str + "公司名称："+returnString(offerUserWorkss.get(i).getOldFirmName())+"<br/>工作时间："+returnString(offerUserWorkss.get(i).getStartTime())+"~"+returnString(offerUserWorkss.get(i).getEndTime())+"<br>工作描述："+returnString(offerUserWorkss.get(i).getJobDescript())+"<br><br>";
//          str = str + returnString(offerUserWorkss.get(i).getOldFirmName())+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+returnString(offerUserWorkss.get(i).getStartTime())+"~"+returnString(offerUserWorkss.get(i).getEndTime())+"<br>" + returnString(offerUserWorkss.get(i).getJobName()) + "<br>"+returnString(offerUserWorkss.get(i).getJobDescript())+"<br><br>";
            Map<String, Object> newMap = new HashMap<String, Object>();
            newMap.put("oldFirmName", returnString(offerUserWorkss.get(i).getOldFirmName()));
            newMap.put("startTime", returnString(offerUserWorkss.get(i).getStartTime()));
            if (offerUserWorkss.get(i).getToNow().equals("1")) {
               newMap.put("endTime", "至今");
            }
            else {
               newMap.put("endTime", returnString(offerUserWorkss.get(i).getEndTime()));
            }
            newMap.put("jobName", returnString(offerUserWorkss.get(i).getJobName()));
            newMap.put("jobDescript", returnString(offerUserWorkss.get(i).getJobDescript()));
            listOfWorks.add(newMap);
         }
			map.put("workTd", listOfWorks);
			
			Map<String, Object> educationMap = new HashMap<String, Object>();
         List<Map<String, String>> educationList = new ArrayList<Map<String, String>>();
         for(int i = 0; i < OfferUserEducations.size(); i++){
            Map<String, String> educationMap2 = new HashMap<String, String>();
//          educationMap2.put("str", returnString(OfferUserEducations.get(i).getSchoolName())+"："+returnString(OfferUserEducations.get(i).getStarTime())+"至"+returnString(OfferUserEducations.get(i).getEndTime()));
            educationMap2.put("schoolName", returnString(OfferUserEducations.get(i).getSchoolName()));
            educationMap2.put("starTime", returnString(OfferUserEducations.get(i).getStarTime()));
            if (OfferUserEducations.get(i).getToNow().equals("1")) {
               educationMap2.put("endTime", "至今");
            }
            else {
               educationMap2.put("endTime", returnString(OfferUserEducations.get(i).getEndTime()));
            }
            educationMap2.put("userMajor", returnString(OfferUserEducations.get(i).getUserMajor()));
            educationMap2.put("userXueLi", returnString(OfferUserEducations.get(i).getOfferUserXueli()));
            educationList.add(educationMap2);
         }
         educationMap.put("educationList", educationList);
         map.put("educationTd", educationMap);
//			Map<String, Object> educationMap = new HashMap<String, Object>();
//			List<Map<String, String>> educationList = new ArrayList<Map<String, String>>();
//			for(int i = 0; i < OfferUserEducations.size(); i++){
//				Map<String, String> educationMap2 = new HashMap<String, String>();
//				educationMap2.put("str", returnString(OfferUserEducations.get(i).getSchoolName())+"："+returnString(OfferUserEducations.get(i).getStarTime())+"至"+returnString(OfferUserEducations.get(i).getEndTime()));
//				educationList.add(educationMap2);
//			}
//			educationMap.put("educationList", educationList);
//			map.put("educationTd", educationMap);
			
			Map<String, Object> descriptionMap = new HashMap<String, Object>();
			descriptionMap.put("str", returnString(offerUserInformations.get(0).getOfferDescription()));
			map.put("descriptionTd", descriptionMap);
			
//			Map<String, Object> worksMap = new HashMap<String, Object>();
//			worksMap.put("str", "GitHub："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserGithub())+"<br>"+"知乎："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserZhihu())+"<br>"+"博客："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserBlog())+"<br>"+"Web站："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserPersonWeb())+"<br>");
//			map.put("worksTd", worksMap);
			map.put("worksTd", returnString(offerUserInformation.getOfferUserOpus()));
			
			Map<String, Object> protectMap = new HashMap<String, Object>();
			protectMap.put("str", offerUserInformations.get(0).getEndless()==null?"": offerUserInformations.get(0).getEndless());
			map.put("protectTd", protectMap);
			
			map.put("beizhu", returnString(offerUserInformations.get(0).getOfferAdviserRemark()));
			
			map.put("issuccess", "true");
			return toJson(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}
   // 个人简历
   @ResponseBody
   @RequestMapping(value = "/user/resumeviewPage11", produces = "application/json")
   public Map<String, Object> resumeviewPage11(HttpServletRequest request, @RequestBody String data) {
      try {
//       String offerUserId = request.getSession().getAttribute("id").toString();
         String offerCandidateId = request.getSession().getAttribute("userId").toString();
//       String offerUserId = request.getSession().getAttribute("id").toString();
//         String offerFirmId = request.getSession().getAttribute("firmId").toString();
//       OfferUser offerFirmUser = offerUserService.getOfferUser(offerUserId);
//       String userId = request.getParameter("offerCandidateId");
         OfferUser offerCandidate = offerUserService.getOfferUser(Integer.parseInt(offerCandidateId));
         String isoffer = offerCandidate.getIsoffer();
//       OfferUser offerUser = offerUserService.getOfferUser(Integer.parseInt(offerUserId));
         List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(offerCandidateId));
         OfferUserInformation offerUserInformation;
         if (offerUserInformations.size() > 0) {
            offerUserInformation = offerUserInformations.get(0);
         }
         else {
            offerUserInformation = null;
         }
         List<OfferUserWorks> offerUserWorkss  = offerUserInformationService.getOfferUserWorks4UserId(Integer.parseInt(offerCandidateId));
         List<OfferUserEducation>  OfferUserEducations = offerUserInformationService.getOfferUserEducation4UserId(Integer.parseInt(offerCandidateId));
         List<OfferUserShield>  offerUserShields = offerUserInformationService.getOfferUserShield4UserId(Integer.parseInt(offerCandidateId));
         Map<String, String> findMap = new HashMap<String, String>();
//         findMap.put("offerUserId", offerUserId);
//         findMap.put("offerFirmId", offerFirmId);
         findMap.put("offerCandidateId", offerCandidateId);
         Map<String, Object> map = new HashMap<String, Object>();
         map.put("userId", offerCandidateId);
//       map.put("userName", returnString(offerUser.getOfferUserName()));
         putUserName(map, request);
         map.put("isoffer", isoffer);
         List<OfferCollect> offerCollects = baseService.getOfferCollects(findMap);
         List<OfferInvite> offerInvites = baseService.getOfferInvite1(findMap);
         if (offerCollects.size() > 0) {
            map.put("haveCollect", "true");
         }
         else {
            map.put("haveCollect", "false");
         }
         if (offerInvites.size() > 0) {
            map.put("haveInvite", "true");
         }
         else {
            map.put("haveInvite", "false");
         }
//       float index = 0;
//       String information = offerCandidate!=null?"1":"0";
//       if ("1".equals(information))index++;
//       String skill = offerUserInformation == null ? "0" : offerUserInformation.getOfferUserDescription()!=null ? "1":"0";
//       if ("1".equals(skill))index++;
//       String work = offerUserWorkss.size()>0?"1":"0";
//       if ("1".equals(work))index++;
//       String education = OfferUserEducations.size()>0?"1":"0";
//       if ("1".equals(education))index++;
//       String project = offerUserWorkss.size()>0?"1":"0";
//       if ("1".equals(project))index++;
//       String description = offerUserInformation == null ? "0" : offerUserInformation.getOfferUserDescription()!=null?"1":"0";
//       if ("1".equals(description))index++;
//       String works = offerUserInformation == null ? "0" : offerUserInformation.getOfferUserDescription()!=null?"1":"0";
//       if ("1".equals(works))index++;
//       String protect = offerUserShields.size() > 0 ? "1":"0";
//       if ("1".equals(protect))index++;
//       String integrity = String.valueOf(index/8*100)+"%";
//       
//       map.put("integrity", integrity);
//       map.put("information", information);
//       map.put("skill", skill);
//       map.put("work", work);
//       map.put("education",education);
//       map.put("project", project);
//       map.put("description", description);
//       map.put("works", works);
//       map.put("protect", protect);
         
         //判断面试状态
//         List<OfferInvite> invites = offerInviteService.getOfferInvitesforcandaId(String.valueOf(offerCandidate.getId()),offerFirmId);
         Map<String, String> informationMap1 = new HashMap<String, String>();//"../upload/photo/"+
//       informationMap1.put("userPhoto", FileUtils.getphotoPath(String.valueOf(offerCandidate.getId()),offerCandidate.getOfferUserName()));//FileUtils.getphotoPath();+".jpg"
         List<OfferPhoto> offerPhotos = offerPhotoService.findByCandidateId(offerCandidateId);
         if (offerPhotos.size() > 0) {
            informationMap1.put("userPhoto", "../upload/photo/"+offerPhotos.get(0).getPhotoSavename());
         }
         else {
            String nameString = ChinaInitial.getPYIndexStr(offerCandidate.getOfferUserName(), true);
            if (nameString != null) {
//               informationMap1.put("userPhoto", "../img/font/"+nameString.toCharArray()[0]+".png");
            	informationMap1.put("userPhoto", FileUtils.getGreenPhotoPath(offerCandidate.getOfferUserName()));
            }
            else {
               informationMap1.put("userPhoto", "");
            }
         }
         String offerUserBirthday = returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserBirthday());
         String age = "";
         if (!"".equals(offerUserBirthday)) {
            Calendar calendar = Calendar.getInstance();
            Integer year = calendar.get(Calendar.YEAR); 
            Integer birth = Integer.valueOf(offerUserBirthday.split("-")[0]);
            age = "，" +String.valueOf(year - birth) + "岁" + "，";
         } 
//         String name = offerCandidate.getOfferUserName() == null ? "" : ChinaInitial.getPYIndexStr(offerCandidate.getOfferUserName(), true);
//         String sex = offerUserInformation == null ? "" : offerUserInformation.getOfferUserSex().equals("1") ? "先生  " : "女士   ";
         informationMap1.put("phone", returnString(offerCandidate.getOfferUserPhone()));
         String cityeName= "";
         informationMap1.put("email", returnString(offerCandidate.getOfferUserEmail()));
         if (offerUserInformation != null) {
            if (baseService.getDiShiCityName(offerUserInformation.getOfferUserNowPlace()).size()>0) {
               cityeName = baseService.getDiShiCityName(offerCandidate.getOfferUserCity()).get(0).get("cityName");
            }
         }
         informationMap1.put("userName", returnString(offerCandidate.getOfferUserName()));//("".equals(name) ? "" : name.substring(0,1)) + sex);//returnString(offerCandidate.getOfferUserName()));
         String all = ""; 
         String sex = (offerUserInformation == null ? "" : offerUserInformation.getOfferUserSex().equals("1") ? "男   " : "女   ");
         String xianju = returnString(cityeName.length() == 0 ? "" : "现居" + cityeName);
         if (sex.length() > 0) all += sex;
         if (age.length() > 0) all += age;
         if (xianju.length() > 0) all += xianju;
         if (all.length() > 0) all += "，期待年薪" + returnString(offerUserInformation== null ? "" : offerUserInformation.getOfferUserPlanYearWages()) + "万" + returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferPlanGetMoneyType());
         else all += returnString(offerUserInformation== null ? "" : offerUserInformation.getOfferUserPlanYearWages()) + returnString(offerUserInformation == null ? "" : "万" + offerUserInformation.getOfferPlanGetMoneyType());
//         System.out.println(all);
         informationMap1.put("simpleResume", all);//"，期待年薪" + returnString(offerUserInformation== null ? "" : offerUserInformation.getOfferUserPlanYearWages()) + "万" + returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferPlanGetMoneyType()));
         map.put("guwen", returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferAdviserRemark()));
         
         map.put("informationTd1", informationMap1);
         
         
         
         Map<String, Object> informationMap2 = new HashMap<String, Object>();
         informationMap2.put("userName", returnString(offerCandidate.getOfferUserName()));
         List<Map<String, String>> informationList2 = new ArrayList<Map<String, String>>();
         List<String> infos = new ArrayList<String>();
         String offerUserLikeFirmStage = returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserLikeFirmStage());
         String nowOfferUserLikeFirmStage = "";
         if (!"".equals(offerUserLikeFirmStage)) {
            List<Map<String, String>> listStage = baseService.getOfferStage();
            for (String string : offerUserLikeFirmStage.split(",")) {
               for (Map<String, String> map2 : listStage) {
                  if (string.equals(String.valueOf(map2.get("id")))) {
                     nowOfferUserLikeFirmStage += map2.get("offerStage") + "，";//公司
                  }
               }
            }
            nowOfferUserLikeFirmStage = nowOfferUserLikeFirmStage.substring(0, nowOfferUserLikeFirmStage.lastIndexOf("，")) + "工作";
         }
         String offerUserWhenWork = returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserWhenWork());
         String offerJobStatus = returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferJobStatus());
//         Map<String, String> findMap = new HashMap<String, String>();
//         findMap.put("offerUserId", userId);
         List<OfferUserPlanWorkPlace> offerUserPlanWorkPlaces = (List<OfferUserPlanWorkPlace>)baseDao.findField(OfferUserPlanWorkPlace.class, findMap);
         String allOfferUserPlanWorkPlace = "";
         if (offerUserPlanWorkPlaces.size() > 0) {
            String offerCityId = offerUserPlanWorkPlaces.get(0).getOfferCityId();
            for (String string : offerCityId.split(",")) {
               allOfferUserPlanWorkPlace += baseService.getDiShiCityName(string).get(0).get("cityName")+ "，";
            }
            allOfferUserPlanWorkPlace = allOfferUserPlanWorkPlace.substring(0, allOfferUserPlanWorkPlace.lastIndexOf("，")) + "工作";
         }
         if (offerUserInformation != null) {
            String offerUserNowYearWages = returnString(offerUserInformation.getOfferUserNowYearWages());
            String offerNowGetMoneyType = returnString(offerUserInformation.getOfferNowGetMoneyType());
            String offerUserPlanYearWages = returnString(offerUserInformation.getOfferUserPlanYearWages());
            String offerPlanGetMoneyType = returnString(offerUserInformation.getOfferPlanGetMoneyType());
            infos.add("目前年薪"+ offerUserNowYearWages + "万" + offerNowGetMoneyType + "，期望年薪" + offerUserPlanYearWages + "万" + offerPlanGetMoneyType);
            infos.add("期望在"+ allOfferUserPlanWorkPlace);
            infos.add(offerJobStatus + "，" + offerUserWhenWork);
			infos.add("期望在" + nowOfferUserLikeFirmStage);
            infos.add("其他要求：" + (offerUserInformation.getOfferRequestNextJob() == null ? "无" : returnString(offerUserInformation.getOfferRequestNextJob())));
         }
         for(int i = 0; i < infos.size(); i++){
            Map<String, String> informationListMap2 = new HashMap<String, String>();
            informationListMap2.put("str", infos.get(i));
            informationList2.add(informationListMap2);
         }
         informationMap2.put("informationList2", informationList2);
         map.put("informationTd2", informationMap2);
         Map<String, String> skillMap1 = new HashMap<String, String>();
         
         Map<String, Object> skillMap = new HashMap<String, Object>();
         List<Map<String, String>> skillList1 = new ArrayList<Map<String, String>>();
         List<Map<String, String>> skillList2 = new ArrayList<Map<String, String>>();
         if (offerUserInformation != null) {
            String offerUserWorkTime = returnString(offerUserInformation.getOfferUserWorktime());
            String offerUserJob1 = returnString(offerUserInformation.getOfferUserJob1());
            String offerUserJob2 = returnString(offerUserInformation.getOfferUserJob2());
            String offerHaveExperience1 = returnString(offerUserInformation.getOfferHaveExperience1());
            String offerHaveExperience2 = returnString(offerUserInformation.getOfferHaveExperience2());
            String a1 = returnString(offerUserInformation.getOfferUserDescription());
            if (!"".equals(offerUserWorkTime)) {
               skillMap1.put("str", offerUserWorkTime + "工作经验");
               skillList1.add(skillMap1);
            }
            if (!"".equals(offerUserJob1)) {
               skillMap1 = new HashMap<String, String>();
               skillMap1.put("str", offerJobService.getOfferJob(Integer.valueOf(offerUserJob1)).get(0).getJobName() + "(" + offerHaveExperience1 + ")");
               skillList1.add(skillMap1);
            }
            if (!"".equals(offerUserJob2)) {
               skillMap1 = new HashMap<String, String>();
               skillMap1.put("str", offerJobService.getOfferJob(Integer.valueOf(offerUserJob2)).get(0).getJobName() + "(" + offerHaveExperience2 + ")");
               skillList1.add(skillMap1);
            }
            if (!"".equals(a1)) {
               String[] a = a1.split(",");
               for (String string : a) {
                  Map<String, String> skillMap2 = new HashMap<String, String>();
                  skillMap2.put("str", string);
                  skillList2.add(skillMap2);
               }
            }
         }
//       Map<String, Object> skillMap = new HashMap<String, Object>();
//       List<Map<String, String>> skillList1 = new ArrayList<Map<String, String>>();
//       String[] a = offerUserInformation == null ? new String[]{} : offerUserInformation.getOfferUserDescription().split(",");
//       for(int i = 0; i < a.length; i++){
//          System.out.println(a[i]);
//          Map<String, String> skillMap1 = new HashMap<String, String>();
//          skillMap1.put("str", a[i]);
//          skillList1.add(skillMap1);
//       }
//       List<Map<String, String>> skillList2 = new ArrayList<Map<String, String>>();
//       for(int i = 0; i < a.length; i++){
//          Map<String, String> skillMap2 = new HashMap<String, String>();
//          skillMap2.put("str", a[i]);
//          skillList2.add(skillMap2);
//       }
         skillMap.put("skillList1", skillList1);
         skillMap.put("skillList2", skillList2);
         map.put("skillTd", skillMap);
//       String str = "";
//       for (int i = 0; i < offerUserWorkss.size(); i++) {
//          str = str + "公司名称："+returnString(offerUserWorkss.get(i).getOldFirmName())+"&nbsp;&nbsp;&nbsp;<br/>工作时间："+returnString(offerUserWorkss.get(i).getStartTime())+"~"+returnString(offerUserWorkss.get(i).getEndTime())+"<br>工作描述："+returnString(offerUserWorkss.get(i).getJobDescript())+"<br><br>";
//       }
          
//       Map<String, Object> workMap = new HashMap<String, Object>();         
//       workMap.put("str", str);
         List<Map<String, Object>> listOfWorks = new ArrayList<Map<String,Object>>();
         for (int i = 0; i < offerUserWorkss.size(); i++) {
//          str = str + "公司名称："+returnString(offerUserWorkss.get(i).getOldFirmName())+"<br/>工作时间："+returnString(offerUserWorkss.get(i).getStartTime())+"~"+returnString(offerUserWorkss.get(i).getEndTime())+"<br>工作描述："+returnString(offerUserWorkss.get(i).getJobDescript())+"<br><br>";
//          str = str + returnString(offerUserWorkss.get(i).getOldFirmName())+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+returnString(offerUserWorkss.get(i).getStartTime())+"~"+returnString(offerUserWorkss.get(i).getEndTime())+"<br>" + returnString(offerUserWorkss.get(i).getJobName()) + "<br>"+returnString(offerUserWorkss.get(i).getJobDescript())+"<br><br>";
            Map<String, Object> newMap = new HashMap<String, Object>();
            newMap.put("oldFirmName", returnString(offerUserWorkss.get(i).getOldFirmName()));
            newMap.put("startTime", returnString(offerUserWorkss.get(i).getStartTime()));
            if (offerUserWorkss.get(i).getToNow().equals("1")) {
               newMap.put("endTime", "至今");
            }
            else {
               newMap.put("endTime", returnString(offerUserWorkss.get(i).getEndTime()));
            }
            newMap.put("jobName", returnString(offerUserWorkss.get(i).getJobName()));
            newMap.put("jobDescript", returnString(offerUserWorkss.get(i).getJobDescript()));
            listOfWorks.add(newMap);
         }
         map.put("workTd", listOfWorks);
         
         Map<String, Object> educationMap = new HashMap<String, Object>();
         List<Map<String, String>> educationList = new ArrayList<Map<String, String>>();
         for(int i = 0; i < OfferUserEducations.size(); i++){
            Map<String, String> educationMap2 = new HashMap<String, String>();
//          educationMap2.put("str", returnString(OfferUserEducations.get(i).getSchoolName())+"："+returnString(OfferUserEducations.get(i).getStarTime())+"至"+returnString(OfferUserEducations.get(i).getEndTime()));
            educationMap2.put("schoolName", returnString(OfferUserEducations.get(i).getSchoolName()));
            educationMap2.put("starTime", returnString(OfferUserEducations.get(i).getStarTime()));
            if (OfferUserEducations.get(i).getToNow().equals("1")) {
               educationMap2.put("endTime", "至今");
            }
            else {
               educationMap2.put("endTime", returnString(OfferUserEducations.get(i).getEndTime()));
            }
            educationMap2.put("userMajor", returnString(OfferUserEducations.get(i).getUserMajor()));
            educationMap2.put("userXueLi", returnString(OfferUserEducations.get(i).getOfferUserXueli()));
            educationList.add(educationMap2);
         }
         educationMap.put("educationList", educationList);
         map.put("educationTd", educationMap);
//       Map<String, Object> educationMap = new HashMap<String, Object>();
//       List<Map<String, String>> educationList = new ArrayList<Map<String, String>>();
//       for(int i = 0; i < OfferUserEducations.size(); i++){
//          Map<String, String> educationMap2 = new HashMap<String, String>();
//          educationMap2.put("str", returnString(OfferUserEducations.get(i).getSchoolName())+"："+returnString(OfferUserEducations.get(i).getStarTime())+"至"+returnString(OfferUserEducations.get(i).getEndTime()));
//          educationList.add(educationMap2);
//       }
//       educationMap.put("educationList", educationList);
//       map.put("educationTd", educationMap);
         
         Map<String, Object> descriptionMap = new HashMap<String, Object>();
         descriptionMap.put("str", "");
         if (offerUserInformations.size() > 0) {
            descriptionMap.put("str", returnString(offerUserInformations.get(0).getOfferDescription()));
         }
         map.put("descriptionTd", descriptionMap);
         
//       Map<String, Object> worksMap = new HashMap<String, Object>();
//       worksMap.put("str", "GitHub："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserGithub())+"<br>"+"知乎："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserZhihu())+"<br>"+"博客："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserBlog())+"<br>"+"Web站："+returnString(offerUserInformation == null ? "" : offerUserInformation.getOfferUserPersonWeb())+"<br>");
//       map.put("worksTd", worksMap);
         map.put("worksTd", returnString(offerUserInformation == null ? "":offerUserInformation.getOfferUserOpus()));
         
         Map<String, Object> protectMap = new HashMap<String, Object>();
         protectMap.put("str", "");
         if (offerUserInformations.size() > 0) {
            protectMap.put("str", offerUserInformations.get(0).getEndless()==null?"": offerUserInformations.get(0).getEndless());
         }
         map.put("protectTd", protectMap);
         
         map.put("beizhu", returnString(offerUserInformations.size() == 0 ? "" : offerUserInformations.get(0).getOfferAdviserRemark()));
         
         map.put("issuccess", "true");
         return toJson(map);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return toJson(SUCCESS);
   }
	
	   @ResponseBody
	   @RequestMapping(value = "/user/downloadPdf")
	   public Map<String, Object> download(HttpServletRequest request, HttpServletResponse response) {
	      try {
	    	 String userId = request.getSession().getAttribute("id").toString();
			 OfferUser offerUser = offerUserService.getOfferUser(Integer.parseInt(userId));
			 OfferUserInformation offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId)).get(0);
			 List<OfferUserWorks> offerUserWorkss  = offerUserInformationService.getOfferUserWorks4UserId(Integer.parseInt(userId));
			 List<OfferUserEducation>  OfferUserEducations = offerUserInformationService.getOfferUserEducation4UserId(Integer.parseInt(userId));
			 
	         Map<String, List<Map<String, String>>> map = new HashMap<String, List<Map<String,String>>>();
	         List<Map<String, String>> list0 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list1 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list2 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list3 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list4 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list5 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list6 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list7 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list8 = new ArrayList<Map<String,String>>();
	         Map<String, String> map0 = new HashMap<String, String>();
	         map0.put("content", userId);
	         list0.add(map0);
	         String sexString = offerUserInformations.getOfferUserSex().equals("1")?"男":"女";
	         Map<String, String> map1 = new HashMap<String, String>();
	         map1.put("content", offerUser.getOfferUserName());
	         list.add(map1);
	         Map<String, String> phone = new HashMap<String, String>();
	         phone.put("content", offerUser.getOfferUserPhone());
	         list1.add(phone);
	         Map<String, String> emil = new HashMap<String, String>();
	         emil.put("content", offerUser.getOfferUserEmail());
	         list2.add(emil);
	         
			Map<String, Object> informationMap2 = new HashMap<String, Object>();
			informationMap2.put("userName", offerUser.getOfferUserName());
			List<Map<String, String>> informationList2 = new ArrayList<Map<String, String>>();
			List<String> infos = new ArrayList<String>();
			String offerUserLikeFirmStage = returnString(offerUserInformations
					.getOfferUserLikeFirmStage());
			String nowOfferUserLikeFirmStage = "";
			if (!"".equals(offerUserLikeFirmStage)) {
				List<Map<String, String>> listStage = baseService
						.getOfferStage();
				for (String string : offerUserLikeFirmStage.split(",")) {
					for (Map<String, String> map2 : listStage) {
						if (string.equals(String.valueOf(map2.get("id")))) {
							nowOfferUserLikeFirmStage += map2.get("offerStage")
									+ "公司，";
						}
					}
				}
				nowOfferUserLikeFirmStage = nowOfferUserLikeFirmStage
						.substring(0,
								nowOfferUserLikeFirmStage.lastIndexOf("，"))
						+ "工作";
			}
			String offerUserWhenWork = returnString(offerUserInformations
					.getOfferUserWhenWork());
			String offerJobStatus = returnString(offerUserInformations
					.getOfferJobStatus());
			Map<String, String> findMap = new HashMap<String, String>();
			findMap.put("offerUserId", userId);
			List<OfferUserPlanWorkPlace> offerUserPlanWorkPlaces = (List<OfferUserPlanWorkPlace>) baseDao.findField(OfferUserPlanWorkPlace.class, findMap);
			String allOfferUserPlanWorkPlace = "";
			if (offerUserPlanWorkPlaces.size() > 0) {
				String offerCityId = offerUserPlanWorkPlaces.get(0)
						.getOfferCityId();
				for (String string : offerCityId.split(",")) {
					allOfferUserPlanWorkPlace += baseService
							.getDiShiCityName(string).get(0).get("cityName")
							+ "，";
				}
				allOfferUserPlanWorkPlace = allOfferUserPlanWorkPlace
						.substring(0,
								allOfferUserPlanWorkPlace.lastIndexOf("，"))
						+ "工作";
			}
			String offerUserNowYearWages = returnString(offerUserInformations
					.getOfferUserNowYearWages());
			String offerNowGetMoneyType = returnString(offerUserInformations
					.getOfferNowGetMoneyType());
			String offerUserPlanYearWages = returnString(offerUserInformations
					.getOfferUserPlanYearWages());
			String offerPlanGetMoneyType = returnString(offerUserInformations
					.getOfferPlanGetMoneyType());
			infos.add("目前年薪" + offerUserNowYearWages + "万"
					+ offerNowGetMoneyType + "，期望年薪" + offerUserPlanYearWages
					+ "万" + offerPlanGetMoneyType);
			infos.add("期望在" + allOfferUserPlanWorkPlace);
			infos.add(offerJobStatus + "，" + offerUserWhenWork);
			infos.add("期望在" + nowOfferUserLikeFirmStage);
			infos.add("其他要求：" + offerUserInformations.getOfferRequestNextJob() == null ? "无"
					: returnString(offerUserInformations
							.getOfferRequestNextJob()));
			for (int i = 0; i < infos.size(); i++) {
				Map<String, String> informationListMap2 = new HashMap<String, String>();
				informationListMap2.put("content", infos.get(i));
				informationList2.add(informationListMap2);
			}

//			Map<String, String> info = new HashMap<String, String>();
//			info.put("content",
//					sexString + " " + offerUserInformations.getOfferUserAge()
//							+ "岁");
//			Map<String, String> info1 = new HashMap<String, String>();
//			info1.put("content", OfferUserEducations.size() == 0 ? ""
//					: OfferUserEducations.get(0).getUserMajor());
//			list3.add(info);
//			list3.add(info1);

			Map<String, Object> skillMap = new HashMap<String, Object>();
			List<Map<String, String>> skillList1 = new ArrayList<Map<String, String>>();
			String offerUserWorkTime = returnString(offerUserInformations
					.getOfferUserWorktime());
			String offerUserJob1 = returnString(offerUserInformations
					.getOfferUserJob1());
			String offerUserJob2 = returnString(offerUserInformations
					.getOfferUserJob2());
			String offerHaveExperience1 = returnString(offerUserInformations
					.getOfferHaveExperience1());
			String offerHaveExperience2 = returnString(offerUserInformations
					.getOfferHaveExperience2());
			Map<String, String> skillMap1 = new HashMap<String, String>();
			if (!"".equals(offerUserWorkTime)) {
				skillMap1.put("content", offerUserWorkTime + "工作经验");
				skillList1.add(skillMap1);
			}
			if (!"".equals(offerUserJob1)) {
				skillMap1 = new HashMap<String, String>();
				skillMap1.put(
						"content",
						offerJobService
								.getOfferJob(Integer.valueOf(offerUserJob1))
								.get(0).getJobName()
								+ "(" + offerHaveExperience1 + ")");
				skillList1.add(skillMap1);
			}
			if (!"".equals(offerUserJob2)) {
				skillMap1 = new HashMap<String, String>();
				skillMap1.put(
						"content",
						offerJobService
								.getOfferJob(Integer.valueOf(offerUserJob2))
								.get(0).getJobName()
								+ "(" + offerHaveExperience2 + ")");
				skillList1.add(skillMap1);
			}
	         
	         
	         for (int i = 0; i < offerUserWorkss.size(); i++) {
		         Map<String, String> ex = new HashMap<String, String>();
		         ex.put("companyName", offerUserWorkss.get(i).getOldFirmName());
		         ex.put("workTime", offerUserWorkss.get(i).getStartTime()+"-"+offerUserWorkss.get(i).getEndTime());
		         ex.put("jobName", offerUserWorkss.get(i).getJobName());
		         ex.put("jobDesc", offerUserWorkss.get(i).getJobDescript());
		         list5.add(ex);
			}

	         for (int i = 0; i < OfferUserEducations.size(); i++) {
		         Map<String, String> pj = new HashMap<String, String>();
		         pj.put("pjName", OfferUserEducations.get(i).getSchoolName());
		         pj.put("pjTime", OfferUserEducations.get(i).getStarTime()+"-"+OfferUserEducations.get(i).getEndTime());
		         pj.put("pjjob", OfferUserEducations.get(i).getUserMajor());
		         pj.put("pjdesc", OfferUserEducations.get(i).getOfferUserXueli());
		         list6.add(pj);
			}

	         Map<String, String> stex = new HashMap<String, String>();
//	         String str = "";
//				for (int i = 0; i < OfferUserEducations.size(); i++) {
//					str = str + OfferUserEducations.get(i).getSchoolName()+" "+OfferUserEducations.get(i).getStarTime()+"至"+OfferUserEducations.get(i).getEndTime()+"<br>";
//			}
//	   
//	         stex.put("content", str);
	         list7.add(stex);
	         
	         Map<String, String> personDesc = new HashMap<String, String>();
	         personDesc.put("content", offerUserInformations.getOfferDescription());
	         list8.add(personDesc);
	         
	         map.put("userId", list0);
	         map.put("name", list);
	         map.put("phone", list1);
	         map.put("emil", list2);
	         map.put("info", informationList2);
	         map.put("skillContent", skillList1);
	         map.put("exContent", list5);
	         map.put("pjContent", list6);
	         map.put("stexContent", list7);
	         map.put("personDesc", list8);
	         
	         generatePDF.downloadPDF(response, map);
	         return null;
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return null;
	   }
	   
	   @ResponseBody
	   @RequestMapping(value = "/user/downloadPdf2")
	   public Map<String, Object> download2(HttpServletRequest request, HttpServletResponse response) {
	      try {
	       String str = returnString(request.getParameter("str"));
	       String userId;
	       if (!"".equals(str)) {
	          userId = str;
	       }
	       else {
//	          userId = request.getSession().getAttribute("offerCandidateId").toString();
	          userId = request.getSession().getAttribute("userId").toString();
	       }
			 OfferUser offerUser = offerUserService.getOfferUser(Integer.parseInt(userId));
			 OfferUserInformation offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId)).get(0);
			 List<OfferUserWorks> offerUserWorkss  = offerUserInformationService.getOfferUserWorks4UserId(Integer.parseInt(userId));
			 List<OfferUserEducation>  OfferUserEducations = offerUserInformationService.getOfferUserEducation4UserId(Integer.parseInt(userId));
			 
	         Map<String, List<Map<String, String>>> map = new HashMap<String, List<Map<String,String>>>();
	         List<Map<String, String>> list0 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list1 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list2 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list3 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list4 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list5 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list6 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list7 = new ArrayList<Map<String,String>>();
	         List<Map<String, String>> list8 = new ArrayList<Map<String,String>>();
	         String sexString = offerUserInformations.getOfferUserSex().equals("1")?"男":"女";
	         Map<String, String> map0 = new HashMap<String, String>();
            map0.put("content", userId);
            list0.add(map0);
	         Map<String, String> map1 = new HashMap<String, String>();
	         map1.put("content", offerUser.getOfferUserName());
	         list.add(map1);
	         Map<String, String> phone = new HashMap<String, String>();
	         phone.put("content", offerUser.getOfferUserPhone());
	         list1.add(phone);
	         Map<String, String> emil = new HashMap<String, String>();
	         emil.put("content", offerUser.getOfferUserEmail());
	         list2.add(emil);
	         
			Map<String, Object> informationMap2 = new HashMap<String, Object>();
			informationMap2.put("userName", offerUser.getOfferUserName());
			List<Map<String, String>> informationList2 = new ArrayList<Map<String, String>>();
			List<String> infos = new ArrayList<String>();
			String offerUserLikeFirmStage = returnString(offerUserInformations
					.getOfferUserLikeFirmStage());
			String nowOfferUserLikeFirmStage = "";
			if (!"".equals(offerUserLikeFirmStage)) {
				List<Map<String, String>> listStage = baseService
						.getOfferStage();
				for (String string : offerUserLikeFirmStage.split(",")) {
					for (Map<String, String> map2 : listStage) {
						if (string.equals(String.valueOf(map2.get("id")))) {
							nowOfferUserLikeFirmStage += map2.get("offerStage")
									+ "公司，";
						}
					}
				}
				nowOfferUserLikeFirmStage = nowOfferUserLikeFirmStage
						.substring(0,
								nowOfferUserLikeFirmStage.lastIndexOf("，"))
						+ "工作";
			}
			String offerUserWhenWork = returnString(offerUserInformations
					.getOfferUserWhenWork());
			String offerJobStatus = returnString(offerUserInformations
					.getOfferJobStatus());
			Map<String, String> findMap = new HashMap<String, String>();
			findMap.put("offerUserId", userId);
			List<OfferUserPlanWorkPlace> offerUserPlanWorkPlaces = (List<OfferUserPlanWorkPlace>) baseDao
					.findField(OfferUserPlanWorkPlace.class, findMap);
			String allOfferUserPlanWorkPlace = "";
			if (offerUserPlanWorkPlaces.size() > 0) {
				String offerCityId = offerUserPlanWorkPlaces.get(0)
						.getOfferCityId();
				for (String string : offerCityId.split(",")) {
					allOfferUserPlanWorkPlace += baseService
							.getDiShiCityName(string).get(0).get("cityName")
							+ "，";
				}
				allOfferUserPlanWorkPlace = allOfferUserPlanWorkPlace
						.substring(0,
								allOfferUserPlanWorkPlace.lastIndexOf("，"))
						+ "工作";
			}
			String offerUserNowYearWages = returnString(offerUserInformations
					.getOfferUserNowYearWages());
			String offerNowGetMoneyType = returnString(offerUserInformations
					.getOfferNowGetMoneyType());
			String offerUserPlanYearWages = returnString(offerUserInformations
					.getOfferUserPlanYearWages());
			String offerPlanGetMoneyType = returnString(offerUserInformations
					.getOfferPlanGetMoneyType());
			infos.add("目前年薪" + offerUserNowYearWages + "万"
					+ offerNowGetMoneyType + "，期望年薪" + offerUserPlanYearWages
					+ "万" + offerPlanGetMoneyType);
			infos.add("期望在" + allOfferUserPlanWorkPlace);
			infos.add(offerJobStatus + "，" + offerUserWhenWork);
			infos.add("期望在" + nowOfferUserLikeFirmStage);
			infos.add("其他要求：" + offerUserInformations.getOfferRequestNextJob() == null ? "无"
					: returnString(offerUserInformations
							.getOfferRequestNextJob()));
			for (int i = 0; i < infos.size(); i++) {
				Map<String, String> informationListMap2 = new HashMap<String, String>();
				informationListMap2.put("content", infos.get(i));
				informationList2.add(informationListMap2);
			}

			Map<String, Object> skillMap = new HashMap<String, Object>();
			List<Map<String, String>> skillList1 = new ArrayList<Map<String, String>>();
			String offerUserWorkTime = returnString(offerUserInformations
					.getOfferUserWorktime());
			String offerUserJob1 = returnString(offerUserInformations
					.getOfferUserJob1());
			String offerUserJob2 = returnString(offerUserInformations
					.getOfferUserJob2());
			String offerHaveExperience1 = returnString(offerUserInformations
					.getOfferHaveExperience1());
			String offerHaveExperience2 = returnString(offerUserInformations
					.getOfferHaveExperience2());
			Map<String, String> skillMap1 = new HashMap<String, String>();
			if (!"".equals(offerUserWorkTime)) {
				skillMap1.put("content", offerUserWorkTime + "工作经验");
				skillList1.add(skillMap1);
			}
			if (!"".equals(offerUserJob1)) {
				skillMap1 = new HashMap<String, String>();
				skillMap1.put(
						"content",
						offerJobService
								.getOfferJob(Integer.valueOf(offerUserJob1))
								.get(0).getJobName()
								+ "(" + offerHaveExperience1 + ")");
				skillList1.add(skillMap1);
			}
			if (!"".equals(offerUserJob2)) {
				skillMap1 = new HashMap<String, String>();
				skillMap1.put(
						"content",
						offerJobService
								.getOfferJob(Integer.valueOf(offerUserJob2))
								.get(0).getJobName()
								+ "(" + offerHaveExperience2 + ")");
				skillList1.add(skillMap1);
			}
	         
	         for (int i = 0; i < offerUserWorkss.size(); i++) {
		         Map<String, String> ex = new HashMap<String, String>();
		         ex.put("companyName", offerUserWorkss.get(i).getOldFirmName());
		         ex.put("workTime", offerUserWorkss.get(i).getStartTime()+"-"+offerUserWorkss.get(i).getEndTime());
		         ex.put("jobName", offerUserWorkss.get(i).getJobName());
		         ex.put("jobDesc", offerUserWorkss.get(i).getJobDescript());
		         list5.add(ex);
			}

	         for (int i = 0; i < OfferUserEducations.size(); i++) {
		         Map<String, String> pj = new HashMap<String, String>();
		         pj.put("pjName", OfferUserEducations.get(i).getSchoolName());
		         pj.put("pjTime", OfferUserEducations.get(i).getStarTime()+"-"+OfferUserEducations.get(i).getEndTime());
		         pj.put("pjjob", OfferUserEducations.get(i).getUserMajor());
		         pj.put("pjdesc", OfferUserEducations.get(i).getOfferUserXueli());
		         list6.add(pj);
			}

	         Map<String, String> stex = new HashMap<String, String>();
	         list7.add(stex);
	         
	         Map<String, String> personDesc = new HashMap<String, String>();
	         personDesc.put("content", offerUserInformations.getOfferDescription());
	         list8.add(personDesc);
	         
	         map.put("userId", list0);
	         map.put("name", list);
	         map.put("phone", list1);
	         map.put("emil", list2);
	         map.put("info", informationList2);
	         map.put("skillContent", skillList1);
	         map.put("exContent", list5);
	         map.put("pjContent", list6);
	         map.put("stexContent", list7);
	         map.put("personDesc", list8);
	         
	         generatePDF.downloadPDF(response, map);
	         return null;
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return null;
	   }
	   
	     @ResponseBody
	      @RequestMapping(value = "/user/zhuanpdf")
	      public Map<String, Object> zhuanpd(HttpServletRequest request, HttpServletResponse response) {
	         try {
	          String userId = request.getParameter("userId");
	          String zhuanfaEmail = request.getParameter("zhuanfaEmail");
	          String banben = request.getParameter("banben");
	          String shapetion = request.getParameter("shapetion");
	          OfferUser offerUser = offerUserService.getOfferUser(Integer.parseInt(userId));
	          OfferUserInformation offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId)).get(0);
	          List<OfferUserWorks> offerUserWorkss  = offerUserInformationService.getOfferUserWorks4UserId(Integer.parseInt(userId));
	          List<OfferUserEducation>  OfferUserEducations = offerUserInformationService.getOfferUserEducation4UserId(Integer.parseInt(userId));
	          
	            Map<String, List<Map<String, String>>> map = new HashMap<String, List<Map<String,String>>>();
	            List<Map<String, String>> list0 = new ArrayList<Map<String,String>>();
	            List<Map<String, String>> list = new ArrayList<Map<String,String>>();
	            List<Map<String, String>> list1 = new ArrayList<Map<String,String>>();
	            List<Map<String, String>> list2 = new ArrayList<Map<String,String>>();
	            List<Map<String, String>> list3 = new ArrayList<Map<String,String>>();
	            List<Map<String, String>> list4 = new ArrayList<Map<String,String>>();
	            List<Map<String, String>> list5 = new ArrayList<Map<String,String>>();
	            List<Map<String, String>> list6 = new ArrayList<Map<String,String>>();
	            List<Map<String, String>> list7 = new ArrayList<Map<String,String>>();
	            List<Map<String, String>> list8 = new ArrayList<Map<String,String>>();
	            List<Map<String, String>> list9 = new ArrayList<Map<String,String>>();
	            Map<String, String> map0 = new HashMap<String, String>();
	            map0.put("content", userId);
	            list0.add(map0);
	            String sexString = offerUserInformations.getOfferUserSex().equals("1")?"男":"女";
	            Map<String, String> map1 = new HashMap<String, String>();
	            map1.put("content", offerUser.getOfferUserName());
	            list.add(map1);
	            Map<String, String> phone = new HashMap<String, String>();
	            phone.put("content", offerUser.getOfferUserPhone());
	            list1.add(phone);
	            Map<String, String> emil = new HashMap<String, String>();
	            emil.put("content", offerUser.getOfferUserEmail());
	            list2.add(emil);
				Map<String, Object> informationMap2 = new HashMap<String, Object>();
				informationMap2.put("userName", offerUser.getOfferUserName());
				List<Map<String, String>> informationList2 = new ArrayList<Map<String, String>>();
				List<String> infos = new ArrayList<String>();
				String offerUserLikeFirmStage = returnString(offerUserInformations
						.getOfferUserLikeFirmStage());
				String nowOfferUserLikeFirmStage = "";
				if (!"".equals(offerUserLikeFirmStage)) {
					List<Map<String, String>> listStage = baseService
							.getOfferStage();
					for (String string : offerUserLikeFirmStage.split(",")) {
						for (Map<String, String> map2 : listStage) {
							if (string.equals(String.valueOf(map2.get("id")))) {
								nowOfferUserLikeFirmStage += map2.get("offerStage")
										+ "公司，";
							}
						}
					}
					nowOfferUserLikeFirmStage = nowOfferUserLikeFirmStage
							.substring(0,
									nowOfferUserLikeFirmStage.lastIndexOf("，"))
							+ "工作";
				}
				String offerUserWhenWork = returnString(offerUserInformations
						.getOfferUserWhenWork());
				String offerJobStatus = returnString(offerUserInformations
						.getOfferJobStatus());
				Map<String, String> findMap = new HashMap<String, String>();
				findMap.put("offerUserId", userId);
				List<OfferUserPlanWorkPlace> offerUserPlanWorkPlaces = (List<OfferUserPlanWorkPlace>) baseDao
						.findField(OfferUserPlanWorkPlace.class, findMap);
				String allOfferUserPlanWorkPlace = "";
				if (offerUserPlanWorkPlaces.size() > 0) {
					String offerCityId = offerUserPlanWorkPlaces.get(0)
							.getOfferCityId();
					for (String string : offerCityId.split(",")) {
						allOfferUserPlanWorkPlace += baseService
								.getDiShiCityName(string).get(0).get("cityName")
								+ "，";
					}
					allOfferUserPlanWorkPlace = allOfferUserPlanWorkPlace
							.substring(0,
									allOfferUserPlanWorkPlace.lastIndexOf("，"))
							+ "工作";
				}
				String offerUserNowYearWages = returnString(offerUserInformations
						.getOfferUserNowYearWages());
				String offerNowGetMoneyType = returnString(offerUserInformations
						.getOfferNowGetMoneyType());
				String offerUserPlanYearWages = returnString(offerUserInformations
						.getOfferUserPlanYearWages());
				String offerPlanGetMoneyType = returnString(offerUserInformations
						.getOfferPlanGetMoneyType());
				infos.add("目前年薪" + offerUserNowYearWages + "万"
						+ offerNowGetMoneyType + "，期望年薪" + offerUserPlanYearWages
						+ "万" + offerPlanGetMoneyType);
				infos.add("期望在" + allOfferUserPlanWorkPlace);
				infos.add(offerJobStatus + "，" + offerUserWhenWork);
				infos.add("期望在" + nowOfferUserLikeFirmStage);
				infos.add("其他要求：" + offerUserInformations.getOfferRequestNextJob() == null ? "无"
						: returnString(offerUserInformations
								.getOfferRequestNextJob()));
				for (int i = 0; i < infos.size(); i++) {
					Map<String, String> informationListMap2 = new HashMap<String, String>();
					informationListMap2.put("content", infos.get(i));
					informationList2.add(informationListMap2);
				}

				Map<String, Object> skillMap = new HashMap<String, Object>();
				List<Map<String, String>> skillList1 = new ArrayList<Map<String, String>>();
				String offerUserWorkTime = returnString(offerUserInformations
						.getOfferUserWorktime());
				String offerUserJob1 = returnString(offerUserInformations
						.getOfferUserJob1());
				String offerUserJob2 = returnString(offerUserInformations
						.getOfferUserJob2());
				String offerHaveExperience1 = returnString(offerUserInformations
						.getOfferHaveExperience1());
				String offerHaveExperience2 = returnString(offerUserInformations
						.getOfferHaveExperience2());
				Map<String, String> skillMap1 = new HashMap<String, String>();
				if (!"".equals(offerUserWorkTime)) {
					skillMap1.put("content", offerUserWorkTime + "工作经验");
					skillList1.add(skillMap1);
				}
				if (!"".equals(offerUserJob1)) {
					skillMap1 = new HashMap<String, String>();
					skillMap1.put(
							"content",
							offerJobService
									.getOfferJob(Integer.valueOf(offerUserJob1))
									.get(0).getJobName()
									+ "(" + offerHaveExperience1 + ")");
					skillList1.add(skillMap1);
				}
				if (!"".equals(offerUserJob2)) {
					skillMap1 = new HashMap<String, String>();
					skillMap1.put(
							"content",
							offerJobService
									.getOfferJob(Integer.valueOf(offerUserJob2))
									.get(0).getJobName()
									+ "(" + offerHaveExperience2 + ")");
					skillList1.add(skillMap1);
				}
	            
	            for (int i = 0; i < offerUserWorkss.size(); i++) {
	               Map<String, String> ex = new HashMap<String, String>();
	               ex.put("companyName", offerUserWorkss.get(i).getOldFirmName());
	               ex.put("workTime", offerUserWorkss.get(i).getStartTime()+"-"+offerUserWorkss.get(i).getEndTime());
	               ex.put("jobName", offerUserWorkss.get(i).getJobName());
	               ex.put("jobDesc", offerUserWorkss.get(i).getJobDescript());
	               list5.add(ex);
	         }

	            for (int i = 0; i < OfferUserEducations.size(); i++) {
	               Map<String, String> pj = new HashMap<String, String>();
	               pj.put("pjName", OfferUserEducations.get(i).getSchoolName());
	               pj.put("pjTime", OfferUserEducations.get(i).getStarTime()+"-"+OfferUserEducations.get(i).getEndTime());
	               pj.put("pjjob", OfferUserEducations.get(i).getUserMajor());
	               pj.put("pjdesc", OfferUserEducations.get(i).getOfferUserXueli());
	               list6.add(pj);
	         }

	            Map<String, String> stex = new HashMap<String, String>();
//	          String str = "";
//	          for (int i = 0; i < OfferUserEducations.size(); i++) {
//	             str = str + OfferUserEducations.get(i).getSchoolName()+" "+OfferUserEducations.get(i).getStarTime()+"至"+OfferUserEducations.get(i).getEndTime()+"<br>";
//	       }
//	    
//	          stex.put("content", str);
	            list7.add(stex);
	            
	            Map<String, String> personDesc = new HashMap<String, String>();
	            personDesc.put("content", offerUserInformations.getOfferDescription());
	            list8.add(personDesc);
	            
	            if ("b1".equals(banben)) {
	               Map<String, String> map9 = new HashMap<String, String>();
	               map9.put("content", "1");
	               list9.add(map9);
               }else {
                  Map<String, String> map9 = new HashMap<String, String>();
                  map9.put("content", "0");
                  list9.add(map9);
               }
              
	            
			map.put("userId", list0);
			map.put("name", list);
			map.put("phone", list1);
			map.put("emil", list2);
			map.put("info", informationList2);
			map.put("skillContent", skillList1);
			map.put("exContent", list5);
			map.put("pjContent", list6);
			map.put("stexContent", list7);
			map.put("personDesc", list8);
			map.put("xinzi", list9);
	            
	            generatePDF.downloadPDF2(response, map);
	            
	            Map<String, String> emailMap = new HashMap<String, String>();
	              OfferEmail offerEmail = baseService.getEmailContent('7').get(0);
	              OfferUser offerUser1 = offerUserService.getOfferUser(userId);
	              String mailContent = offerEmail.getEmailContext().toString().replace("[0]", shapetion);
//	              emailMap.put("formMail", offerUser1.getOfferUserEmail());
	              emailMap.put("toMail", zhuanfaEmail+"@qq.com");
	              emailMap.put("mailtitle", offerEmail.getEmailTitle());
	              emailMap.put("mailContent", mailContent);
	              File f = new File(Code.systemPath+"\\pdf\\"+offerUser1.getOfferUserName()+".PDF");
	              sendEmail.sendEmail1(emailMap,f);
	              
	              f.delete();
	            return null;
	         } catch (Exception e) {
	            e.printStackTrace();
	         }
	         return null;
	      }
	   
	   
	   //个人简历-编辑
	 	@ResponseBody
	 	@RequestMapping(value = "/user/editcontentPage1", produces = "application/json")
	 	public Map<String, Object> editcontentPage1(HttpServletRequest request, @RequestBody String data) {
	 		try {
	 			Map<String, String> map = new HashMap<String, String>();
	 			if("description".equals(data)){
	 				String userId = request.getSession().getAttribute("id").toString();
	 				OfferUserInformation offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId)).get(0);
	 				map.put("editcontent", offerUserInformations.getOfferUserDescription());
	 			}else if ("protect".equals(data)){
	 			  String userId = request.getSession().getAttribute("id").toString();
              OfferUserInformation offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId)).get(0);
              map.put("editcontent", offerUserInformations.getEndless());
            }
	 			return toJson(map);
	 		} catch (Exception e) {
	 			e.printStackTrace();
	 		}
	 		return toJson(SUCCESS);
	 	}
	 	
	 	//个人简历保存
	 	@ResponseBody
	 	@RequestMapping(value = "/user/saveeditcontent1", produces = "application/json")
	 	public Map<String, Object> saveeditcontent1(HttpServletRequest request, @RequestBody String data) {
	 		try {
	 			putToForm(data);
	 			form.get("edittype");
	 			form.get("editcontent");
	 			String userId = request.getSession().getAttribute("id").toString();
	 			if ("description".endsWith(form.get("edittype"))) {
	 				 OfferUserInformation offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId)).get(0);
	 				offerUserInformations.setOfferUserDescription(form.get("editcontent"));
	 				offerUserInformationService.updateOfferUserInformation(offerUserInformations);
	 			}else if ("works".endsWith(form.get("edittype"))) {
					
				}else if ("protect".endsWith(form.get("edittype"))) {
				   
					List<OfferUserShield>  offerUserShields = offerUserInformationService.getOfferUserShield4UserId(Integer.parseInt(userId));
					offerUserShields.get(0).setShield(form.get("editcontent"));
					offerUserInformationService.updateOfferUserShield(offerUserShields.get(0));
				}
	 		} catch (Exception e) {
	 			e.printStackTrace();
	 		}
	 		return toJson(SUCCESS);
	 	}
	 	
      //个人隐私保存
      @ResponseBody
      @RequestMapping(value = "/user/getuserendless", produces = "application/json")
      public Map<String, Object> getuserendless(HttpServletRequest request, @RequestBody String data) {
         try {
               String userId = request.getSession().getAttribute("id").toString();
               List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId));
               if (offerUserInformations.size()>0) {
                  return toJson(returnString(offerUserInformations.get(0).getEndless()));
               }else {
                  return toJson("");
               }
         } catch (Exception e) {
            e.printStackTrace();
         }
         return toJson("");
      }
      
      //个人隐私保存
      @ResponseBody
      @RequestMapping(value = "/user/saveuserendless", produces = "application/json")
      public Map<String, Object> saveuserendless(HttpServletRequest request, @RequestBody String data) {
         try {
               String userId = request.getSession().getAttribute("id").toString();
               data = request.getParameter("endless");
               List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId));
//               List<OfferUserShield>  offerUserShields = offerUserInformationService.getOfferUserShield4UserId(Integer.parseInt(userId));
               if (offerUserInformations.size()>0) {
                  if (offerUserInformations.get(0).getEndless()==null || "".equals(offerUserInformations.get(0).getEndless())) {
                     offerUserInformations.get(0).setEndless(data);
                  }else {
                     offerUserInformations.get(0).setEndless(data);
                  }
                  offerUserInformationService.updateOfferUserInformation(offerUserInformations.get(0));
               }
         } catch (Exception e) {
            e.printStackTrace();
         }
         return toJson(SUCCESS);
      }
	 	
      //个人描述保存
      @ResponseBody
      @RequestMapping(value = "/user/getdescription", produces = "application/json")
      public String getdescription(HttpServletRequest request, @RequestBody String data) {
         try {
               String userId = request.getSession().getAttribute("id").toString();
               List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId));
               if (offerUserInformations.size()>0) {
                  return returnString(offerUserInformations.get(0).getOfferDescription() == null ? "" : offerUserInformations.get(0).getOfferDescription().toString());
               }else {
                  return "";
               }
         } catch (Exception e) {
            e.printStackTrace();
         }
         return "";
      }
      
      //个人描述保存
      @ResponseBody
      @RequestMapping(value = "/user/savedescription", produces = "application/json")
      public String savedescription(HttpServletRequest request, @RequestBody String data) {
         try {
               String userId = request.getSession().getAttribute("id").toString();
               data = request.getParameter("descript");
               List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId));
               if (offerUserInformations.size()>0) {
                  if (offerUserInformations.get(0).getOfferDescription()==null || "".equals(offerUserInformations.get(0).getOfferDescription())) {
                     offerUserInformations.get(0).setOfferDescription(data);
                  }else {
                     offerUserInformations.get(0).setOfferDescription(data);
                  }
                  offerUserInformationService.updateOfferUserInformation(offerUserInformations.get(0));
               }
         } catch (Exception e) {
            e.printStackTrace();
         }
         return "SUCCESS";
      }
      
      //个人描述保存
      @ResponseBody
      @RequestMapping(value = "/user/getresume7", produces = "application/json")
      public String getresume7(HttpServletRequest request, @RequestBody String data) {
         try {
               String userId = request.getSession().getAttribute("id").toString();
               List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId));
               if (offerUserInformations.size()>0) {
                  return returnString(offerUserInformations.get(0).getOfferUserOpus());
               }else {
                  return "";
               }
         } catch (Exception e) {
            e.printStackTrace();
         }
         return "SUCCES";
      }
      
      //个人描述保存
      @ResponseBody
      @RequestMapping(value = "/user/saveresume7", produces = "application/json")
      public String saveresume7(HttpServletRequest request, @RequestBody String data) {
         try {
               String userId = request.getSession().getAttribute("id").toString();
               data = request.getParameter("endless");
               List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(userId));
               if (offerUserInformations.size()>0) {
                  if (offerUserInformations.get(0).getOfferUserOpus()==null || "".equals(offerUserInformations.get(0).getOfferUserOpus())) {
                     offerUserInformations.get(0).setOfferUserOpus(data);
                  }else {
                     offerUserInformations.get(0).setOfferUserOpus(data);
                  }
                  offerUserInformationService.updateOfferUserInformation(offerUserInformations.get(0));
               }
         } catch (Exception e) {
            e.printStackTrace();
         }
         return "SUCCESS";
      }
      
      //用户-基本信息页面
      @ResponseBody
      @RequestMapping(value = "/user/resumeedit1", produces = "application/json")
      public Map<String, Object> resumeedit1(HttpServletRequest request) {
         try {
            Map<String, Object> map = new HashMap<String, Object>();
            String offerUserId = request.getSession().getAttribute("id") + "";
            Map<String, String> findMap = new HashMap<String, String>();
            findMap.put("offerUserId", offerUserId);
            List<Map<String, String>> list = offerUserInformationService.getOfferUserInformationByOfferUserId(findMap);
            OfferUser offerUser = offerUserService.getOfferUser(offerUserId);
            List<Map<String, String>> cityList = new ArrayList<Map<String, String>>();
   			List<Map<String, String>> citys = baseService.getDiShiCity("getAll");//所有的地市,getAll
   			//String offerUserNowPlace = returnString(list.get(0).get("offerUserNowPlace"));
   			String offerUserNowPlace = returnString(list.get(0).get("offerUserCity"));
   			String offerUserNowPlaceValue = "";
   			for (Map<String, String> map2 : citys) {
   				Map<String, String> m = new HashMap<String, String>();
   				m.put("id", String.valueOf(map2.get("id")));
   				m.put("value", map2.get("cityName"));
   				if (String.valueOf(map2.get("id")).equals(offerUserNowPlace)) {
   				   offerUserNowPlaceValue = map2.get("cityName");
               }
   				cityList.add(m);
   			}
   			map.put("citys", cityList);
			
            map.put("dataName", list.get(0).get("status").equals("4") ? "1" : "0");//.equals("1") ? "1" : "0"
            map.put("offerUserName", returnString(list.get(0).get("offerUserName")));
            map.put("offerUserSex", returnString(list.get(0).get("offerUserSex")));
            map.put("offerUserWorktime", returnString(list.get(0).get("offerUserWorktime")));
            map.put("offerUserZhihu", returnString(list.get(0).get("offerUserZhihu")));
            map.put("offerUserGithub", returnString(list.get(0).get("offerUserGithub")));
            map.put("offerUserBlog", returnString(list.get(0).get("offerUserBlog")));
            map.put("offerUserPersonWeb", returnString(list.get(0).get("offerUserPersonWeb")));
            map.put("offerUserEmail", returnString(offerUser.getOfferUserEmail()));
            map.put("offerUserPhone", returnString(offerUser.getOfferUserPhone()));
            map.put("offeruserzhihu", returnString(list.get(0).get("offerUserZhihu")));
            map.put("offerusergithub", returnString(list.get(0).get("offerUserGithub")));
            map.put("offeruserblog", returnString(list.get(0).get("offerUserBlog")));
            map.put("offeruserpersonweb", returnString(list.get(0).get("offerUserPersonWeb")));
//            map.put("offerUserNowPlace", returnString(offerUserNowPlace));
//            map.put("offerUserNowPlaceValue", returnString(offerUserNowPlaceValue));
            map.put("offerUserCity", returnString(offerUserNowPlace));
            map.put("offerUserCityValue", returnString(offerUserNowPlaceValue));
            map.put("offerUserBirthday", returnString(returnString(list.get(0).get("offerUserBirthday"))));
            
            List<OfferPhoto> iPhotos = offerPhotoService.findByCandidateId(offerUserId);
            if(iPhotos.size() == 1){
               map.put("logoId", iPhotos.get(0).getId().toString());
               map.put("logo", "../upload/photo/"+iPhotos.get(0).getPhotoSavename());
            }else{
            	
               map.put("logo", FileUtils.getGreenPhotoPath(returnString(list.get(0).get("offerUserName"))));
            }
            //查询出来
            return toJson(map);
         } catch (Exception e) {
            e.printStackTrace();
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
      //用户-基本信息页面
      @ResponseBody
      @RequestMapping(value = "/user/saveresumeedit1", produces = "application/json")
      public Map<String, Object> saveresumeedit1(HttpServletRequest request, @RequestBody String data) {
         try {
            putToForm(data);
            String offerUserId = request.getSession().getAttribute("id") + "";
            form.put("offerUserId", offerUserId);
            offerUserService.saveresumeedit1(form);
            return toJson(SUCCESS);
         }
         catch (Exception e) {
            e.printStackTrace();
            return toJson(ERROR);
         }
      }
      
      @ResponseBody
      @RequestMapping(value = "/user/uploadUserPhoto", produces = "application/json")
      public Map<String, Object> uploadUserPhoto(HttpServletRequest request, @RequestParam("fileLogo") MultipartFile[] fileLogo) {
         try {
            if (fileLogo != null && fileLogo.length > 0) {
               // 循环获取file数组中得文件
               for (int i = 0; i < fileLogo.length; i++) {
                  MultipartFile file = fileLogo[i];
                  if(file.getOriginalFilename() == null || "".equals(file.getOriginalFilename())){
                     continue;
                  }else{
                     List<OfferPhoto> offerPhotos = offerPhotoService.findByCandidateId(request.getSession().getAttribute("id").toString());
                     if (offerPhotos.size()>0) {
                        String path = Code.systemPath + "/upload/photo/" + offerPhotos.get(0).getPhotoSavename();
                        File photoFile = new File(path);
                        if(photoFile.exists() && photoFile.isFile()){
                           photoFile.delete();
                        }
                        offerPhotoService.deletePhoto(offerPhotos.get(0));
                     }
                  }
                  String cName = String.valueOf(System.currentTimeMillis());
                  String endless = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
                  String filePath = Code.systemPath + "upload" + File.separator + "photo"
                        + File.separator + cName+endless;
                  // 保存文件
                  FileUtils.saveFile(file, filePath);
                  OfferPhoto photo = new OfferPhoto();
                  photo.setPhotoSavename(cName+endless);
                  photo.setTableName("offer_candidate_photo");
                  photo.setStatus("1");
                  photo.setTableId(Integer.valueOf(request.getSession().getAttribute("id").toString()));
                  offerPhotoService.saveOfferPhoto(photo);
               }
            }
            return toJson(SUCCESS);
         }
         catch (Exception e) {
            e.printStackTrace();
            return toJson(ERROR);
         }
      }
      
      //用户-基本信息页面
      @ResponseBody
      @RequestMapping(value = "/user/resumeedit2", produces = "application/json")
      public Map<String, Object> resumeedit2(HttpServletRequest request) {
         try {
            Map<String, Object> map = new HashMap<String, Object>();
            String offerUserId = request.getSession().getAttribute("id") + "";
            Map<String, String> findMap = new HashMap<String, String>();
            findMap.put("offerUserId", offerUserId);
            List<Map<String, String>> list = offerUserInformationService.getOfferUserInformationByOfferUserId(findMap);
            String offerUserPlanYearWages = list.get(0).get("offerUserPlanYearWages") == null ? "" : String.valueOf(list.get(0).get("offerUserPlanYearWages"));
            String offerGetHowMonthWages = list.get(0).get("offerGetHowMonthWages") == null ? "" : String.valueOf(list.get(0).get("offerGetHowMonthWages")); 
            String offerEveryMonthWages = list.get(0).get("offerEveryMonthWages") == null ? "" : String.valueOf(list.get(0).get("offerEveryMonthWages")); 
            String offerNowGetMoneyType = list.get(0).get("offerNowGetMoneyType") == null ? "" : String.valueOf(list.get(0).get("offerNowGetMoneyType")); 
            String offerPlanGetMoneyType = list.get(0).get("offerPlanGetMoneyType") == null ? "" : String.valueOf(list.get(0).get("offerPlanGetMoneyType")); 
            String jobstatus = returnString(list.get(0).get("offerJobStatus"));
            String intime = returnString(list.get(0).get("offerUserWhenWork"));
            String cityIds = list.get(0).get("offerCityId");
            String firmIds = list.get(0).get("offerUserLikeFirmStage");
            map.put("offerUserPlanYearWages", offerUserPlanYearWages);
            map.put("offerGetHowMonthWages", offerGetHowMonthWages);
            map.put("offerEveryMonthWages", offerEveryMonthWages);
            map.put("offerNowGetMoneyType", offerNowGetMoneyType);
            map.put("offerPlanGetMoneyType", offerPlanGetMoneyType);
            map.put("cityIdList", cityIds);
            map.put("firmIdList", firmIds);
            List<Map<String, String>> moneytypeList = new ArrayList<Map<String,String>>();
   			List<Map<String, String>> listOfmoneyType = baseService.getOfferMoneyType();
   			for(Map<String, String> map2 : listOfmoneyType){
   				Map<String, String> moneytypeMap = new HashMap<String, String>();
   				moneytypeMap.put("id", String.valueOf(map2.get("id")));
   				moneytypeMap.put("value", map2.get("offerMoneyType"));
   				moneytypeList.add(moneytypeMap);
   			}
   			map.put("moneytypeList", moneytypeList);
   			
   			List<Map<String, String>> cityList = new ArrayList<Map<String, String>>();
   			List<Map<String, String>> citys = baseService.getDiShiCity("getAll");//所有的地市,getAll
   			for (Map<String, String> map2 : citys) {
   			            Map<String, String> m = new HashMap<String, String>();
   			            m.put("id", String.valueOf(map2.get("id")));
   			            m.put("value", map2.get("cityName"));
   			            cityList.add(m);
   			         }
   			map.put("citys", cityList);
   			if (!"".equals(jobstatus)) {
   				if ("不着急找工作，先看看机会".equals(jobstatus)) {
   					map.put("jobstatus", "j1");
   				} else if ("已经有offer了，想看更好的".equals(jobstatus)) {
   					map.put("jobstatus", "j2");
   				} else if ("正在找工作，还没有offer".equals(jobstatus)) {
   					map.put("jobstatus", "j3");
   				} else if ("暂时不考虑换工作".equals(jobstatus)) {
   					map.put("jobstatus", "j4");
   				}
   			}
   			if (!"".equals(intime)) {
   				if ("目前是离职状态，随时可以入职".equals(intime)) {
   					map.put("intime", "i1");
   				} else if ("一周".equals(intime)) {
   					map.put("intime", "i2");
   				} else if ("一个月".equals(intime)) {
   					map.put("intime", "i3");
   				} else if ("不确定".equals(intime)) {
   					map.put("intime", "i4");
   				}
   			}
   			String offerRequestNextJob = list.get(0).get("offerRequestNextJob");
   			map.put("offerRequestNextJob", offerRequestNextJob);
   			
   			List<Map<String, String>> firmList = new ArrayList<Map<String, String>>();
   			List<Map<String, String>> offerStages = baseService.getOfferStage("2");
   			for (Map<String, String> map2 : offerStages) {
   				Map<String, String> m = new HashMap<String, String>();
   				m.put("id", String.valueOf(map2.get("id")));
   				m.put("value", map2.get("offerStage"));
   				firmList.add(m);
   			}
   			map.put("firms", firmList);
			
            //查询出来
            return toJson(map);
         } catch (Exception e) {
            e.printStackTrace();
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
      @ResponseBody
      @RequestMapping(value = "/user/saveresumeedit2", produces = "application/json")
      public Map<String, Object> saveresumeedit2(HttpServletRequest request, @RequestBody String data) {
         try {
            putToForm(data);
            String offerUserId = request.getSession().getAttribute("id") + "";
            form.put("offerUserId", offerUserId);
            offerUserService.saveresumeedit2(form);
            return toJson(SUCCESS);
         }
         catch (Exception e) {
            e.printStackTrace();
            return toJson(ERROR);
         }
      }
      
      //用户-基本信息页面
      @ResponseBody
      @RequestMapping(value = "/user/resumeedit3", produces = "application/json")
      public Map<String, Object> resumeedit3(HttpServletRequest request) {
         try {
        	    String offerUserId = request.getSession().getAttribute("id") + "";
        	    OfferUser offerUser = offerUserService.getOfferUser(offerUserId);
             Map<String, String> findMap = new HashMap<String, String>();
             findMap.put("offerUserId", offerUserId);
           	 Map<String, Object> map = new HashMap<String, Object>();
           	 String[] houxuanrenzhiwei = Code.houxuanrenzhiwei;
           	 List<Map<String, String>> jobFList = new ArrayList<Map<String, String>>();
           	 String offerJobId = returnString(offerUser.getOfferJobId());
           	 for (int i = 0; i < houxuanrenzhiwei.length; i++) {
           		Map<String, String> m = new HashMap<String, String>();
                m.put("id", String.valueOf(i + 1));
                m.put("value", houxuanrenzhiwei[i]);
                jobFList.add(m);
                if (!offerJobId.equals((i + 1) + "")) {
                	List<OfferJob> allOfferJobs = offerJobService.getAllJob((i + 1) + "");
                	List<Map<String, String>> nowJobList = new ArrayList<Map<String, String>>();
					for (OfferJob offerJob : allOfferJobs) {
						Map<String, String> nowJobMap = new HashMap<String, String>();
						nowJobMap.put("id", String.valueOf(offerJob.getId()));
						nowJobMap.put("value", offerJob.getJobName());
						nowJobList.add(nowJobMap);
					}
					map.put("nowJobList" + (i + 1), nowJobList);
				}
			 }
             map.put("jobF", jobFList);
             
             List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.valueOf(offerUserId));
             map.put("offerJobId", returnString(offerUser.getOfferJobId()));
             map.put("offerJobValue", returnString(offerJobService.getOfferJob(Integer.valueOf(offerUser.getOfferJobId())).get(0).getJobName()));
             map.put("offerUserWorktime", returnString(offerUserInformations.get(0).getOfferUserWorktime()));
             String offerUserJob1Name, offerUserJob2Name;
             offerUserJob1Name = offerUserJob2Name = "";
             String offerUserJob1 = offerUserInformations.get(0).getOfferUserJob1() == null ? "" : String.valueOf(offerUserInformations.get(0).getOfferUserJob1());
             String offerUserJob2 = offerUserInformations.get(0).getOfferUserJob2() == null ? "" : String.valueOf(offerUserInformations.get(0).getOfferUserJob2());
             List<OfferJob> allOfferJobs = offerJobService.getAllJob(offerJobId);//parentId=空的,给出所有的职位
             if (!"".equals(offerUserJob1) && !"".equals(offerUserJob2)) {
                map.put("jobId1", offerUserJob1);
                map.put("jobId2", offerUserJob2);
                for (int i = 0; i < allOfferJobs.size(); i++) {
                   if (allOfferJobs.get(i).getId().toString().equals(offerUserJob1)) {
                      offerUserJob1Name = allOfferJobs.get(i).getJobName();
                   }
                   if (allOfferJobs.get(i).getId().toString().equals(offerUserJob2)) {
                      offerUserJob2Name = allOfferJobs.get(i).getJobName();
                   }
                   if (!"".equals(offerUserJob1Name) && !"".equals(offerUserJob2Name)) {
                      break;
                   }
                }
                map.put("jobId1", offerUserJob1);
                map.put("jobvalue1", offerUserJob1Name);
                map.put("jobId2", offerUserJob2);
                map.put("jobvalue2", offerUserJob2Name);
                map.put("jobs", offerUserJob1 + "," + offerUserJob2);
             }
             else if(!"".equals(offerUserJob1)) {
                for (int i = 0; i < allOfferJobs.size(); i++) {
                   if (allOfferJobs.get(i).getId().toString().equals(offerUserJob1)) {
                      offerUserJob1Name = allOfferJobs.get(i).getJobName();
                   }
                   if (!"".equals(offerUserJob1Name)) {
                      break;
                   }
                }
                map.put("jobId1", offerUserJob1);
                map.put("jobvalue1", offerUserJob1Name);
                map.put("jobs", offerUserJob1);
             }
             map.put("jobyear1", returnString(offerUserInformations.get(0).getOfferHaveExperience1()));//第一个岗位岗位上有多长时间的工作经验
             map.put("jobyear2", returnString(offerUserInformations.get(0).getOfferHaveExperience2()));//第二个岗位岗位上有多长时间的工作经验
             List<Map<String, String>> nowJobList = new ArrayList<Map<String, String>>();
    			for (int i = 0; i < allOfferJobs.size(); i++) {
    			   Map<String, String> nowJobMap = new HashMap<String, String>();
    			   nowJobMap.put("id", String.valueOf(allOfferJobs.get(i).getId()));
    			   nowJobMap.put("value", allOfferJobs.get(i).getJobName());
    			   nowJobList.add(nowJobMap);
    			}
    			
    			map.put("nowJobList" + offerJobId, nowJobList);
    			map.put("nowJobList", offerJobId);
    			map.put("offerUserDescription", returnString(offerUserInformations.get(0).getOfferUserDescription()));
 			
            //查询出来
            return toJson(map);
         } catch (Exception e) {
            e.printStackTrace();
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
      @ResponseBody
      @RequestMapping(value = "/user/saveresumeedit3", produces = "application/json")
      public Map<String, Object> saveresumeedit3(HttpServletRequest request, @RequestBody String data) {
         try {
            putToForm(data);
            String offerUserId = request.getSession().getAttribute("id") + "";
            form.put("offerUserId", offerUserId);
            offerUserService.saveresumeedit3(form);
            return toJson(SUCCESS);
         }
         catch (Exception e) {
            e.printStackTrace();
            return toJson(ERROR);
         }
      }
      
      //用户-基本信息页面(教育经历)
      @ResponseBody
      @RequestMapping(value = "/user/resumeedit4", produces = "application/json")
      public Map<String, Object> resumeedit4(HttpServletRequest request) {
         try {
            Map<String, Object> map = new HashMap<String, Object>();
            String offerUserId = request.getSession().getAttribute("id") + "";
            Map<String, String> findMap = new HashMap<String, String>();
            findMap.put("offerUserId", offerUserId);
            List<Map<String, String>> list1 = offerUserInformationService.getOfferUserInformationByOfferUserId(findMap);
            map.put("dataName", list1.get(0).get("status").equals("4") ? "1" : "0");//.equals("1") ? "1" : "0"
            List<OfferUserWorks> offerUserWorks = baseService.getOfferUserWorks(offerUserId);
            List<Map<String, String>> list = new ArrayList<Map<String,String>>();
//            if (offerUserWorks.size() > 0) {
//               OfferUserWorks offerUserWork = offerUserWorks.get(offerUserWorks.size() - 1);
//               map.put("firmName", returnString(offerUserWork.getOldFirmName()));
//               map.put("jobName", returnString(offerUserWork.getJobName()));
//               map.put("jobstart", returnString(offerUserWork.getStartTime()));
//               map.put("jobend", returnString(offerUserWork.getEndTime()));
//               map.put("workcontent", returnString(offerUserWork.getJobDescript()));
//               map.put("offerUserWorksId", offerUserWork.getId());
//               if (offerUserWorks.size() > 1) {
//                  for (int i = 0; i < offerUserWorks.size() - 1; i++) {
                  for (int i = 0; i < offerUserWorks.size(); i++) {
                     Map<String, String> newMap = new HashMap<String, String>();
                     newMap.put("firmName", returnString(offerUserWorks.get(i).getOldFirmName()));
                     newMap.put("jobName", returnString(offerUserWorks.get(i).getJobName()));
                     newMap.put("jobstart", returnString(offerUserWorks.get(i).getStartTime()));
                     if (offerUserWorks.get(i).getToNow().equals("1")) {
                        newMap.put("jobend", "至今");
                     }
                     else {
                        newMap.put("jobend", returnString(offerUserWorks.get(i).getEndTime()));
                     }
                     newMap.put("workcontent", returnString(offerUserWorks.get(i).getJobDescript()));
                     newMap.put("thisId", returnString(offerUserWorks.get(i).getId()));
                     list.add(newMap);
                  }
//               }
//            }
            map.put("otherWorks", list);
            return toJson(map);
         } catch (Exception e) {
            e.printStackTrace();
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
      @ResponseBody
      @RequestMapping(value = "/user/delWork", produces = "application/json")
      public Map<String, Object> delWork(HttpServletRequest request, @RequestBody String data) {
         try {
            putToForm(data);
            baseService.delWork(form.get("offerUserWorksId"));
         }
         catch (Exception e) {
            e.printStackTrace();
            return toJson(ERROR);
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
      @ResponseBody
      @RequestMapping(value = "/user/getNowWork", produces = "application/json")
      public Map<String, Object> getNowWork(HttpServletRequest request, @RequestBody String data) {
         try {
            putToForm(data);
            Map<String, Object> map = new HashMap<String, Object>();
            String offerUserId = request.getSession().getAttribute("id") + "";
            String workId = form.get("offerUserWorksId");
            Map<String, String> findMap = new HashMap<String, String>();
            findMap.put("offerUserId", offerUserId);
            List<Map<String, String>> list1 = offerUserInformationService.getOfferUserInformationByOfferUserId(findMap);
            map.put("dataName", list1.get(0).get("status").equals("4") ? "1" : "0");//.equals("1") ? "1" : "0"
            List<Map<String, String>> list = new ArrayList<Map<String,String>>();
            List<OfferUserWorks> nowOfferUserWorks = (List<OfferUserWorks>) baseDao.findField(OfferUserWorks.class, workId);
            map.put("toNow", "false");
            if (nowOfferUserWorks.size() > 0) {
               OfferUserWorks offerUserWork = nowOfferUserWorks.get(0);
               map.put("firmName", returnString(offerUserWork.getOldFirmName()));
               map.put("jobName", returnString(offerUserWork.getJobName()));
               map.put("jobstart", returnString(offerUserWork.getStartTime()));
               if (offerUserWork.getToNow().equals("0")) {
                  map.put("jobend", returnString(offerUserWork.getEndTime()));
               }
               else {
                  map.put("toNow", "true");
               }
               map.put("workcontent", returnString(offerUserWork.getJobDescript()));
               map.put("offerUserWorksId", offerUserWork.getId());
            }
            List<OfferUserWorks> offerUserWorks = baseService.getOfferUserWorks(offerUserId);
            for (int i = 0; i < offerUserWorks.size(); i++) {
               if (offerUserWorks.get(i).getId() == Integer.valueOf(workId)) continue;
               Map<String, String> newMap = new HashMap<String, String>();
               newMap.put("firmName", returnString(offerUserWorks.get(i).getOldFirmName()));
               newMap.put("jobName", returnString(offerUserWorks.get(i).getJobName()));
               newMap.put("jobstart", returnString(offerUserWorks.get(i).getStartTime()));
               if (offerUserWorks.get(i).getToNow().equals("1")) {
                  newMap.put("jobend", "至今");
               }
               else {
                  newMap.put("jobend", returnString(offerUserWorks.get(i).getEndTime()));
               }
               newMap.put("workcontent", returnString(offerUserWorks.get(i).getJobDescript()));
               newMap.put("thisId", returnString(offerUserWorks.get(i).getId()));
               list.add(newMap);
            }
            map.put("otherWorks", list);
            return toJson(map);
         }
         catch (Exception e) {
            e.printStackTrace();
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
      @ResponseBody
      @RequestMapping(value = "/user/getNewWork", produces = "application/json")
      public Map<String, Object> getNewWork(HttpServletRequest request, @RequestBody String data) {
         try {
            putToForm(data);
            Map<String, Object> map = new HashMap<String, Object>();
            String offerUserId = request.getSession().getAttribute("id") + "";
            List<OfferUserWorks> offerUserWorks = baseService.getOfferUserWorks(offerUserId);
            List<Map<String, String>> list = new ArrayList<Map<String,String>>();
            for (int i = 0; i < offerUserWorks.size(); i++) {
               Map<String, String> newMap = new HashMap<String, String>();
               newMap.put("firmName", returnString(offerUserWorks.get(i).getOldFirmName()));
               newMap.put("jobName", returnString(offerUserWorks.get(i).getJobName()));
               newMap.put("jobstart", returnString(offerUserWorks.get(i).getStartTime()));
               if (offerUserWorks.get(i).getToNow().equals("1")) {
                  newMap.put("jobend", "至今");
               }
               else {
                  newMap.put("jobend", returnString(offerUserWorks.get(i).getEndTime()));
               }
               newMap.put("workcontent", returnString(offerUserWorks.get(i).getJobDescript()));
               newMap.put("thisId", returnString(offerUserWorks.get(i).getId()));
               list.add(newMap);
            }
            map.put("otherWorks", list);
            return toJson(map);
         }
         catch (Exception e) {
            e.printStackTrace();
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
      //用户-基本信息页面(教育经历)
      @ResponseBody
      @RequestMapping(value = "/user/resumeedit5", produces = "application/json")
      public Map<String, Object> resumeedit5(HttpServletRequest request) {
         try {
            Map<String, Object> map = new HashMap<String, Object>();
            String offerUserId = request.getSession().getAttribute("id") + "";
            Map<String, String> findMap = new HashMap<String, String>();
            findMap.put("offerUserId", offerUserId);
            List<Map<String, String>> list1 = offerUserInformationService.getOfferUserInformationByOfferUserId(findMap);
            map.put("dataName", list1.get(0).get("status").equals("4") ? "1" : "0");//.equals("1") ? "1" : "0"
            List<OfferUserEducation> offerUserEducations = baseService.getOfferUserEducations(offerUserId);
            List<Map<String, String>> list = new ArrayList<Map<String,String>>();
//            if (offerUserEducations.size() > 0) {
//               OfferUserEducation offerUserEducation = offerUserEducations.get(offerUserEducations.size() - 1);
//               map.put("schoolName", returnString(offerUserEducation.getSchoolName()));
//               map.put("xueli", returnString(offerUserEducation.getOfferUserXueli()));
//               map.put("studstart", returnString(offerUserEducation.getStarTime()));
//               map.put("studend", returnString(offerUserEducation.getEndTime()));
//               map.put("zhuanye", returnString(offerUserEducation.getUserMajor()));
//               map.put("offerUserEducationId", offerUserEducation.getId());
//               if (offerUserEducations.size() > 1) {
//                  for (int i = 0; i < offerUserEducations.size() - 1; i++) {
               for (int i = 0; i < offerUserEducations.size(); i++) {
                     Map<String, String> newMap = new HashMap<String, String>();
                     newMap.put("schoolName", returnString(offerUserEducations.get(i).getSchoolName()));
                     newMap.put("xueli", returnString(offerUserEducations.get(i).getOfferUserXueli()));
                     newMap.put("zhuanye", returnString(offerUserEducations.get(i).getUserMajor()));
                     newMap.put("studstart", returnString(offerUserEducations.get(i).getStarTime()));
                     if (offerUserEducations.get(i).getToNow().equals("1")) {
                        newMap.put("studend", "至今");
                     }
                     else {
                        newMap.put("studend", returnString(offerUserEducations.get(i).getEndTime()));
                     }
                     newMap.put("thisId", returnString(offerUserEducations.get(i).getId()));
                     list.add(newMap);
                  }
//               }
//            }
            map.put("otherEducate", list);
            return toJson(map);
         } catch (Exception e) {
            e.printStackTrace();
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
      @ResponseBody
      @RequestMapping(value = "/user/getNowEducation", produces = "application/json")
      public Map<String, Object> getNowEducation(HttpServletRequest request, @RequestBody String data) {
         try {
            putToForm(data);
            String educationId = form.get("offerUserEducationId");
            List<OfferUserEducation> offerUserEducations = (List<OfferUserEducation>) baseDao.findField(OfferUserEducation.class, educationId);
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("toNow", "false");
            if (offerUserEducations.size() > 0) {
               OfferUserEducation offerUserEducation = offerUserEducations.get(0);
               map.put("schoolName", returnString(offerUserEducation.getSchoolName()));
               map.put("xueli", returnString(offerUserEducation.getOfferUserXueli()));
               map.put("studstart", returnString(offerUserEducation.getStarTime()));
               if (offerUserEducation.getToNow().equals("0")) {
                  map.put("studend", returnString(offerUserEducation.getEndTime()));
               }
               else {
                  map.put("toNow", "true");
               }
               map.put("zhuanye", returnString(offerUserEducation.getUserMajor()));
               map.put("offerUserEducationId", returnString(offerUserEducation.getId()));
            }
            String offerUserId = request.getSession().getAttribute("id") + "";
            List<OfferUserEducation> allOfferUserEducations = baseService.getOfferUserEducations(offerUserId);
            List<Map<String, String>> list = new ArrayList<Map<String,String>>();
            for (int i = 0; i < allOfferUserEducations.size(); i++) {
               if (allOfferUserEducations.get(i).getId() == Integer.valueOf(educationId)) continue;
               Map<String, String> newMap = new HashMap<String, String>();
               newMap.put("schoolName", returnString(allOfferUserEducations.get(i).getSchoolName()));
               newMap.put("xueli", returnString(allOfferUserEducations.get(i).getOfferUserXueli()));
               newMap.put("zhuanye", returnString(allOfferUserEducations.get(i).getUserMajor()));
               newMap.put("studstart", returnString(allOfferUserEducations.get(i).getStarTime()));
               if (allOfferUserEducations.get(i).getToNow().equals("1")) {
                  newMap.put("studend", "至今");
               }
               else {
                  newMap.put("studend", returnString(allOfferUserEducations.get(i).getEndTime()));
               }
               newMap.put("thisId", returnString(allOfferUserEducations.get(i).getId()));
               list.add(newMap);
            }
            map.put("otherEducate", list);
            return toJson(map);
         }
         catch (Exception e) {
            e.printStackTrace();
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
      @ResponseBody
      @RequestMapping(value = "/user/getNewEducation", produces = "application/json")
      public Map<String, Object> getNewEducation(HttpServletRequest request, @RequestBody String data) {
         try {
            putToForm(data);
            Map<String, Object> map = new HashMap<String, Object>();
            String offerUserId = request.getSession().getAttribute("id") + "";
            List<OfferUserEducation> allOfferUserEducations = baseService.getOfferUserEducations(offerUserId);
            List<Map<String, String>> list = new ArrayList<Map<String,String>>();
            for (int i = 0; i < allOfferUserEducations.size(); i++) {
               Map<String, String> newMap = new HashMap<String, String>();
               newMap.put("schoolName", returnString(allOfferUserEducations.get(i).getSchoolName()));
               newMap.put("xueli", returnString(allOfferUserEducations.get(i).getOfferUserXueli()));
               newMap.put("zhuanye", returnString(allOfferUserEducations.get(i).getUserMajor()));
               newMap.put("studstart", returnString(allOfferUserEducations.get(i).getStarTime()));
               if (allOfferUserEducations.get(i).getToNow().equals("1")) {
                  newMap.put("studend", "至今");
               }
               else {
                  newMap.put("studend", returnString(allOfferUserEducations.get(i).getEndTime()));
               }
               newMap.put("thisId", returnString(allOfferUserEducations.get(i).getId()));
               list.add(newMap);
            }
            map.put("otherEducate", list);
            return toJson(map);
         }
         catch (Exception e) {
            e.printStackTrace();
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
      @ResponseBody
      @RequestMapping(value = "/user/delEducation", produces = "application/json")
      public Map<String, Object> delEducation(HttpServletRequest request, @RequestBody String data) {
         try {
            putToForm(data);
            baseService.delEducation(form.get("offerUserEducationId"));
         }
         catch (Exception e) {
            e.printStackTrace();
            return toJson(ERROR);
         }
         return toJson(SUCCESS);//(session保存用户id)
      }
      
	 	//个人设置
	 	@ResponseBody
	 	@RequestMapping(value = "/user/personalSettingsEdit", produces = "application/json")
	 	public Map<String, Object> getpersonalSettingsEdit(HttpServletRequest request, @RequestBody String data) {
	 		try {
	 			String userId = request.getSession().getAttribute("id").toString();
	 			OfferUser offerUser = offerUserService.getOfferUser(userId);
	 			Map<String, Object> map = new HashMap<String, Object>();
	 			map.put("userId", userId);
	 			map.put("touxiang", FileUtils.getphotoPath(userId, offerUser.getOfferUserName()));
	 			putUserName(map, request);
	 			map.put("username", offerUser.getOfferUserName());
	 			map.put("name", offerUser.getOfferUserName());
	 		   map.put("JobName", offerJobService.getOfferJob(offerUser.getOfferJobId()).get(0).getJobName());
	 		   map.put("phone", offerUser.getOfferUserPhone());
	 		   map.put("CreatTime", zwsdff.format(offerUser.getCreateTime()));
	 		   List<Map<String, String>> nowJobList = new ArrayList<Map<String, String>>();
				List<OfferJob> allOfferJobs = offerJobService.getAllJob("-1");//parentId=空的,给出所有的职位
				for (int i = 0; i < allOfferJobs.size(); i++) {
				   Map<String, String> nowJobMap = new HashMap<String, String>();
				   nowJobMap.put("id", String.valueOf(allOfferJobs.get(i).getId()));
				   nowJobMap.put("value", allOfferJobs.get(i).getJobName());
				   nowJobList.add(nowJobMap);
				}
				map.put("nowJobList", nowJobList);
				
		        List<Map<String, String>> emadilstatus = new ArrayList<Map<String, String>>();
				List<OfferInvite> offerInvites = offerInviteService.getOfferInvitesforUserId(userId);//parentId=空的,给出所有的职位
				for (int i = 0; i < offerInvites.size(); i++) {
				   Map<String, String> Invites = new HashMap<String, String>();
				   Invites.put("id", String.valueOf(offerInvites.get(i).getId()));
				   Invites.put("email", offerFirmService.getOfferFirms(offerInvites.get(i).getFirmId()).get(0).getOfferEmail());
				   Invites.put("status", offerInvites.get(i).getEmailstatus());
				   Invites.put("statustext", "1".equals(offerInvites.get(i).getEmailstatus())?"开启":"未开启");
				   Invites.put("statusValue", "1".equals(offerInvites.get(i).getEmailstatus())?"icheckbox_square-green checked":"icheckbox_square-green hover");
				   emadilstatus.add(Invites);
				}
				map.put("emadilstatus", emadilstatus);
		        return toJson(map);
	 		} catch (Exception e) {
	 			e.printStackTrace();
	 		}
	 		 return null;
	 	}
	 	
	 	//个人设置改用户名
	 	@ResponseBody
	 	@RequestMapping(value = "/user/savepersonalSettingsEditName", produces = "application/json")
	 	public Map<String, Object> savepersonalSettingsEditName(HttpServletRequest request, @RequestBody String data) {
	 		try {
	 			putToForm(data);
	 			String userId = request.getSession().getAttribute("id").toString();
	 			OfferUser offerUser = offerUserService.getOfferUser(userId);
	 			offerUser.setOfferUserName(form.get("editName"));
	 			offerUserService.updateOfferUser(offerUser);
	 		} catch (Exception e) {
	 			e.printStackTrace();
	 		}
	 		return toJson(SUCCESS);
	 	}
	 	//个人设置改密码
	    @ResponseBody
	    @RequestMapping(value = "/user/updateOfferUserPassword", produces = "application/json")
	    public Map<String, Object> updateOfferUserPassword(HttpServletRequest request,@RequestBody String data) {//修改密码
	       try {
	          putToForm(data);
	          String userId = request.getSession().getAttribute("id").toString();
	          OfferUser offerUser = offerUserService.getOfferUser(userId);
	          if (offerUser.getOfferUserPassword().equals(encryption.encryption(form.get("oldPassword")))) {
	             offerUser.setOfferUserPassword(encryption.encryption(form.get("newPassword")));
	             offerUserService.updateOfferUser(offerUser);
	          }
	          else {
	             return toJson("当前密码不正确！");
	          }
	          return toJson(SUCCESS);
	       }
	       catch (Exception e) {
	          e.printStackTrace();
	          return toJson(ERROR);
	       }
	    }
	    
	 	//个人设置改密码
	    @ResponseBody
	    @RequestMapping(value = "/user/updateOfferUserPassword2", produces = "application/json")
	    public Map<String, Object> updateOfferUserPassword2(HttpServletRequest request,@RequestBody String data) {//修改密码
	       try {
	          putToForm(data);
	          String userId = request.getSession().getAttribute("id").toString();
	          OfferUser offerUser = offerUserService.getOfferUser(userId);
             offerUser.setOfferUserPassword(encryption.encryption(form.get("passwordconfirm")));
             offerUserService.updateOfferUser(offerUser);
             return toJson(SUCCESS);
	       }
	       catch (Exception e) {
	          e.printStackTrace();
	       }
	       return null;
	    }
	    
	    //个人设置改JOBID
	    @ResponseBody
	    @RequestMapping(value = "/user/updateOfferUserJobId", produces = "application/json")
	    public Map<String, Object> updateOfferUserJobId(HttpServletRequest request,@RequestBody String data) {//修改密码
	       try {
	          String userId = request.getSession().getAttribute("id").toString();
	          OfferUser offerUser = offerUserService.getOfferUser(userId);
	          offerUser.setOfferJobId(Integer.valueOf(data));
	          offerUserService.updateOfferUser(offerUser);
	       }
	       catch (Exception e) {
	          e.printStackTrace();
	       }
	       return toJson(SUCCESS);
	    }
	    
	    //个人设置改InviteEmail
	    @ResponseBody
	    @RequestMapping(value = "/user/updateOfferInviteEmail", produces = "application/json")
	    public Map<String, Object> updateOfferInviteEmail(HttpServletRequest request,@RequestBody String data) {//修改密码
	       try {
	    	  String[] a = data.split(",");
	    	  List<OfferInvite> offerInvites = offerInviteService.getOfferInvites(a[0]);
	    	  offerInvites.get(0).setEmailstatus(a[1]);
	    	  offerInviteService.updateOfferInvite(offerInvites.get(0));
	       }
	       catch (Exception e) {
	          e.printStackTrace();
	       }
	       return toJson(SUCCESS);
	    }
	    
	    //团队成员发邮件
	    @ResponseBody
	    @RequestMapping(value = "/user/teammemberSandEmail", produces = "application/json")
	    public Map<String, Object> teammemberSandEmail(HttpServletRequest request,@RequestBody String data) {//修改密码
	       try {
	    	   String userId = request.getSession().getAttribute("id").toString();
	    	   Map<String, String> emailMap = new HashMap<String, String>();
	           OfferEmail offerEmail = baseService.getEmailContent('3').get(0);
	           OfferUser offerUser = offerUserService.getOfferUser(userId);
	           emailMap.put("formMail", offerUser.getOfferUserEmail());
	           emailMap.put("toMail", data);
	           emailMap.put("mailtitle", offerEmail.getEmailTitle());
	           emailMap.put("mailContent", offerEmail.getEmailContext().toString().replace("[0]", data).replace("[1]", offerUser.getOfferUserName()));
	           sendEmail.sendEmail(emailMap);
	       }
	       catch (Exception e) {
	          e.printStackTrace();
	       }
	       return toJson(SUCCESS);
	    }
	    
	    //点击邮箱连接后跳转方法，保存状态完成后跳转到登录页面
	    @ResponseBody
	    @RequestMapping(value = "/user/jihuoyouxiang", produces = "application/json")
	    public Map<String, Object> jihuoyouxiang(HttpServletResponse response,HttpServletRequest request) {//修改密码
	       try {
	    	   
	    	   OfferUserEmail offerUserEmail = baseService.getOfferUserEmail(request.getParameter("offerUserEmailId")).get(0);
	    	   OfferUser offerUser = offerUserService.getOfferUser(request.getParameter("userIdString"));
	    	   request.getSession().setAttribute("id", request.getParameter("userIdString"));
	    	   if ("2".equals(offerUserEmail.getStatus())) {
	    		   if ("2".equals(offerUser.getIsoffer())) {
	    			   response.sendRedirect("../jsp/account_unexcited.jsp");
		    	   }else {
		    		   response.sendRedirect("../jsp/user_unexcited.jsp");
		    	   }
	    		   
			   }else if ("3".equals(offerUserEmail.getStatus())) {
			      response.sendRedirect("../jsp/login.jsp");
            }
	    	   else {
				   
				   offerUser.setStatus("1");
		    	   offerUser.setEmailmsg(request.getParameter("userStatus"));
		    	   
		    	   offerUserService.updateOfferUser(offerUser);
		    	   
		    	   if ("2".equals(offerUser.getIsoffer())) {
		    		   response.sendRedirect("../jsp/account_excited.jsp");
		    	   }else {
		    		   response.sendRedirect("../jsp/user_excited.jsp");
		    	   }
		    	  offerUserEmail.setStatus("3");
			   }
	    	   
	       }
	       catch (Exception e) {
	          e.printStackTrace();
	       }
	       return null;
	    }
	    
	    //点击邮箱连接后跳转方法，保存状态完成后跳转到登录页面
	    @ResponseBody
	    @RequestMapping(value = "/user/sendconfirmEmail", produces = "application/json")
	    public Map<String, Object> sendconfirmEmail(HttpServletResponse response,HttpServletRequest request) {//修改密码
            try {
            	String offerUserId = request.getSession().getAttribute("id").toString();
            	
                List<OfferUserEmail> offerUserEmails = baseService.getOfferUserEmail4senduser(offerUserId);
                if (offerUserEmails.size()>0) {
                	offerUserEmails.get(0).setStatus("1");
                	baseService.saveOfferUserEmail(offerUserEmails.get(0));
				   }
                
               OfferUser offerUser = offerUserService.getOfferUser(offerUserEmails.get(0).getSendUserId());
               Map<String, String> emailMap = new HashMap<String, String>();
               OfferEmail offerEmail = baseService.getEmailContent('4').get(0);
               emailMap.put("toMail", offerUser.getOfferUserEmail());
               emailMap.put("mailtitle", offerEmail.getEmailTitle());
               emailMap
                     .put("mailContent",
                           offerEmail
                                 .getEmailContext()
                                 .toString()
                                 .replace("[0]",
                                       "<a href='"+Code.fangwenPath + "/user/jihuoyouxiang.do?offerUserEmailId="+offerUserEmails.get(0).getId()+"&userIdString=" + offerUserId + "&userStatus=" + 1+"'>" + Code.fangwenPath + "/user/jihuoyouxiang.do?offerUserEmailId="+offerUserEmails.get(0).getId()+"&userIdString=" + offerUserId + "&userStatus=" + 1 + "</a>"));
               sendEmail.sendEmail(emailMap);

            }
            catch (Exception e) {
               e.printStackTrace();
            }
	       return null;
	    }
	    
	    
	 	//管理账户改密码
	    @ResponseBody
	    @RequestMapping(value = "/user/updateOfferUserPassword1", produces = "application/json")
	    public Map<String, Object> updateOfferUserPassword1(HttpServletRequest request,@RequestBody String data) {//修改密码
	       try {
	          putToForm(data);
	          OfferUser offerUser = offerUserService.getOfferUser(form.get("userId"));
	          offerUser.setOfferUserPassword(encryption.encryption(form.get("newpsw")));
	          offerUserService.updateOfferUser(offerUser);
	          return toJson(SUCCESS);
	       }
	       catch (Exception e) {
	          e.printStackTrace();
	          return toJson(ERROR);
	       }
	    }
	    
	 	//个人设置
	 	@ResponseBody
	 	@RequestMapping(value = "/user/getteammenber", produces = "application/json")
	 	public Map<String, Object> getteammenber(HttpServletRequest request, @RequestBody String data) {
	 		try {
	 			String offerUserId = request.getSession().getAttribute("id").toString();
	 			OfferUser offerUser = offerUserService.getOfferUser(offerUserId);
	 			Map<String, List<Map<String, String>>> map = new HashMap<String, List<Map<String,String>>>();
	 			Map<String, String> map1 = new HashMap<String, String>();
	 			map1.put("firmId", String.valueOf(offerUser.getFirmId()));
	 			List<OfferUser> offerUsers =  offerUserService.getOfferFirmTeam(map1);
	 			List<OfferFirm> offerFirms =  offerFirmService.getOfferFirms(Integer.valueOf(offerUser.getFirmId()));
		      List<Map<String, String>> offerUsers1 = new ArrayList<Map<String, String>>();
		      int status;
				for (int i = 0; i < offerUsers.size(); i++) {
				   Map<String, String> nowJobMap = new HashMap<String, String>();
				   nowJobMap.put("name", String.valueOf(offerUsers.get(i).getOfferUserName()));
				   nowJobMap.put("id", String.valueOf(offerUsers.get(i).getId()));
				   nowJobMap.put("job", offerJobService.getOfferJob(offerUsers.get(i).getOfferJobId()).get(0).getJobName());
				   nowJobMap.put("addree", offerUsers.get(i).getOfferUserEmail());
               String shenfen = "";
               boolean flag = offerFirms.get(0).getAdminId() == offerUsers.get(i).getId();
               if (flag) {
                  shenfen = "管理员";
               }
               else {
                  shenfen = "普通成员";
               }
				   nowJobMap.put("shenfen", shenfen);
				   nowJobMap.put("isAdmin", flag ? "1" : "0");
				   status = Integer.valueOf(offerUsers.get(i).getStatus());
				   nowJobMap.put("teamPeopleStatus", status + "");
//				   nowJobMap.put("startOrStop", status == 4 ? "禁用" : "启用");
				   nowJobMap.put("status", Code.status[status]);
				   offerUsers1.add(nowJobMap);
				}
				List<Map<String, String>> isAdmin = new ArrayList<Map<String, String>>();
				Map<String, String> nowJobMap = new HashMap<String, String>();
				nowJobMap.put("isAdmin", offerFirms.get(0).getAdminId().toString().equals(offerUserId) ? "1" : "0");
				isAdmin.add(nowJobMap);
				List<Map<String, String>> userName = new ArrayList<Map<String, String>>();
				Map<String, String> name = new HashMap<String, String>();
				name.put("userName", offerUser.getOfferUserName());
				userName.add(name);
				map.put("userName", userName);
				map.put("isAdmin", isAdmin);
            map.put("offerUsers1", offerUsers1);
            return toJson(map);
	 		} catch (Exception e) {
	 			e.printStackTrace();
	 		}
	 		 return null;
	 	}
	    
		//用户-基本信息页面
		@ResponseBody
		@RequestMapping(value = "/user/personalQuestionnaire", produces = "application/json")
		public Map<String, Object> personalQuestionnaire(HttpServletRequest request) {
			try {
				Map<String, Object> map = new HashMap<String, Object>();
				String offerUserId = request.getSession().getAttribute("id") + "";
//				Map<String, String> findMap = new HashMap<String, String>();
//				List<Map<String, String>> list = offerUserInformationService.getOfferUserInformationByOfferUserId(findMap);
//				map.put("dataName", list.get(0).get("status").equals("1") ? "1" : "0");
				List<Map<String, String>> cityList = baseService.getDiShiCity("2");
				List<Map<String, String>> nowJobList = new ArrayList<Map<String, String>>();
				List<Map<String, String>> worktimeList = new ArrayList<Map<String, String>>();
				List<Map<String, String>> nowJobList1 = new ArrayList<Map<String, String>>();
				List<Map<String, String>> nowJobList2 = new ArrayList<Map<String, String>>();
				List<OfferJob> allOfferJobs = offerJobService.getAllJob("1");//parentId=空的,给出所有的职位
				List<OfferJob> changOfferJobs = offerJobService.getAllJob("2");//parentId=空的,给出所有的职位
				List<OfferJob> job3 = offerJobService.getAllJob("3");//parentId=空的,给出所有的职位
				putUserName(map, request);
				for (int i = 0; i < allOfferJobs.size(); i++) {
				   Map<String, String> nowJobMap = new HashMap<String, String>();
				   nowJobMap.put("id", String.valueOf(allOfferJobs.get(i).getId()));
				   nowJobMap.put("value", allOfferJobs.get(i).getJobName());
				   nowJobList.add(nowJobMap);
				}
				for (int i = 0; i < changOfferJobs.size(); i++) {
					   Map<String, String> nowJobMap = new HashMap<String, String>();
					   nowJobMap.put("id", String.valueOf(changOfferJobs.get(i).getId()));
					   nowJobMap.put("value", changOfferJobs.get(i).getJobName());
					   nowJobList1.add(nowJobMap);
				}
				for (int i = 0; i < job3.size(); i++) {
					   Map<String, String> nowJobMap = new HashMap<String, String>();
					   nowJobMap.put("id", String.valueOf(job3.get(i).getId()));
					   nowJobMap.put("value", job3.get(i).getJobName());
					   nowJobList2.add(nowJobMap);
				}
				String[] a = Code.qiyexuqiuwenjuangongzuojingyan;//{"1年","一至三年","三至五年","五年以上"};
				for (int i = 0; i < 4; i++) {
					   Map<String, String> worktime = new HashMap<String, String>();
					   worktime.put("id", String.valueOf(i));
					   worktime.put("value", a[i]);
					   worktimeList.add(worktime);
				}
				map.put("nowJobList", nowJobList);
				map.put("changOfferJobs", nowJobList1);
				map.put("nowJobList2", nowJobList2);
				map.put("cityList", cityList);
				map.put("worktimeList", worktimeList);
				
				List<OfferFirmSelect> offerFirmSelect = offerFirmSelectService.getOfferSelect(offerUserId);
				List<Map<String, String>> offerFirmSelectList = new ArrayList<Map<String, String>>();
				if (offerFirmSelect.size() > 0) {
               Map<String, String> offerFirmSelects = new HashMap<String, String>();
               offerFirmSelects.put("getCityId", offerFirmSelect.get(0).getCityIds());
               offerFirmSelects.put("getJobId", offerFirmSelect.get(0).getJobIds());
               offerFirmSelects.put("YearId", offerFirmSelect.get(0).getYearIds());
               offerFirmSelectList.add(offerFirmSelects);
            }
				else {
               Map<String, String> offerFirmSelects = new HashMap<String, String>();
               offerFirmSelects.put("getCityId", "");
               offerFirmSelects.put("getJobId", "");
               offerFirmSelects.put("YearId", "");
               offerFirmSelectList.add(offerFirmSelects);
				}
				map.put("offerFirmSelectList", offerFirmSelectList);
				
				return toJson(map);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return toJson(SUCCESS);//(session保存用户id)
		}
	 	
	 	//招聘问卷
	    @ResponseBody
	    @RequestMapping(value = "/user/saveofferSelect", produces = "application/json")
	    public Map<String, Object> saveofferSelect(HttpServletRequest request,@RequestBody String data) {//修改密码
	       try {
	          putToForm(data);
	          String offerUserId = request.getSession().getAttribute("id") + "";
	          List<OfferFirmSelect> offerFirmSelects = offerFirmSelectService.getOfferSelect(offerUserId);
	          OfferFirmSelect offerFirmSelect;
	          if (offerFirmSelects.size() > 0) {
	             offerFirmSelect = offerFirmSelects.get(0);
	             Date date = offerFirmSelect.getCreateTime();
	             Date newDate = new Date();
	             long m = newDate.getTime() - date.getTime();
	             long num = 7 - m / (1000 * 60 * 60 * 24);
	             //if (num <= 7) return toJson("7天内只能修改一次，距离下次修改还有" + num + "天！");
	             if (offerFirmSelect.getStatus().equals("1")) return toJson("7天内只能修改一次，距离下次修改还有" + num + "天！");
	             offerFirmSelect.setCreateTime(new Date());
	          }
	          else {
	             offerFirmSelect = new OfferFirmSelect();
	             offerFirmSelect.setCreateTime(new Date());
	          }
	          offerFirmSelect.setCityIds(form.get("cityIds"));
	          offerFirmSelect.setUserId(Integer.parseInt(request.getSession().getAttribute("id").toString()));
	          offerFirmSelect.setFirmId(Integer.parseInt(request.getSession().getAttribute("firmId").toString()));
	          String CheckJobIds = returnString(form.get("CheckJobIds"));
	          String CheckJobId1s = returnString(form.get("CheckJobId1s"));
	          String CheckJobIds2 = returnString(form.get("CheckJobIds2"));
	          if (CheckJobIds.length() > 0 && CheckJobId1s.length() > 0 && CheckJobIds2.length() > 0)
	             offerFirmSelect.setJobIds(CheckJobIds + "," + CheckJobId1s + "," + CheckJobIds2);
	          else if (CheckJobIds.length() > 0 && CheckJobId1s.length() > 0)
	             offerFirmSelect.setJobIds(CheckJobIds + "," + CheckJobId1s);
	          else if (CheckJobIds.length() > 0 && CheckJobIds2.length() > 0)
	             offerFirmSelect.setJobIds(CheckJobIds + "," + CheckJobIds2);
	          else if (CheckJobId1s.length() > 0 && CheckJobIds2.length() > 0)
	             offerFirmSelect.setJobIds(CheckJobId1s + "," + CheckJobIds2);
	          else if (CheckJobIds.length() > 0)
	             offerFirmSelect.setJobIds(CheckJobIds);
	          else if (CheckJobId1s.length() > 0) 
	             offerFirmSelect.setJobIds(CheckJobId1s);
	          else if (CheckJobIds2.length() > 0) 
	             offerFirmSelect.setJobIds(CheckJobIds2);
	          offerFirmSelect.setYearIds(form.get("worktimeIds"));
	          offerFirmSelect.setStatus("1");
	          offerFirmSelectService.saveOfferFirmSelect(offerFirmSelect);
	          
	          return toJson(SUCCESS);
	       }
	       catch (Exception e) {
	          e.printStackTrace();
	          return toJson(ERROR);
	       }
	    }
	    
	    @ResponseBody
       @RequestMapping(value = "/user/examineUserPage", produces = "application/json")
       public Map<String, Object> examineUserPage(HttpServletRequest request,@RequestBody String data) {
          try {
             Map<String, Object> map = new HashMap<String, Object>();
             String offerUserId = request.getSession().getAttribute("id") + "";
             OfferUser offerUser = offerUserService.getOfferUser(offerUserId);
             String status = offerUser.getStatus();
             map.put("status", status);
             
             List<OfferUserInformation> offerUserInformation = offerUserInformationService.getOfferUserInformation4UserId(Integer.parseInt(offerUserId));
             OfferUserInformation offerUserInformations = offerUserInformation.get(0);
             List<OfferUserWorks> offerUserWorkss  = offerUserInformationService.getOfferUserWorks4UserId(Integer.parseInt(offerUserId));
             List<OfferUserEducation>  OfferUserEducations = offerUserInformationService.getOfferUserEducation4UserId(Integer.parseInt(offerUserId));
             List<OfferUserShield>  offerUserShields = offerUserInformationService.getOfferUserShield4UserId(Integer.parseInt(offerUserId));
             float index = 0;
             String information = offerUser!=null?"1":"0";
             String me = offerUser!=null?"1":"0";
             if ("1".equals(information))index++;
             if ("1".equals(me))index++;
             String skill = offerUserInformations.getOfferUserDescription()!=null?"1":"0";
             if ("1".equals(skill))index++;
             String work = offerUserWorkss.size()>0?"1":"0";
             if ("1".equals(work))index++;
             String education = OfferUserEducations.size()>0?"1":"0";
             if ("1".equals(education))index++;
//           String project = "0";//offerUserWorkss.size()>0?"1":"0";
//           if ("1".equals(project))index++;
             String description = offerUserInformations.getOfferDescription()!=null?"1":"0";
             if ("1".equals(description))index++;
             String works = offerUserInformations.getOfferUserOpus()!=null?"1":"0";
             if ("1".equals(works))index++;
             String protect = offerUserInformations.getEndless()!=null?"1":"0";
             if ("1".equals(protect))index++;
             String integrity = String.valueOf((int)(index/8*100))+"%";
             map.put("wanchengdu", integrity);
             return toJson(map);
          }
          catch (Exception e) {
             e.printStackTrace();
             return toJson(SUCCESS);
          }
       }
		
	    //用户信息填写完成后发送邮件通过审核
//	    @ResponseBody
//	    @RequestMapping(value = "/user/testsendemail")
//	    public Map<String, Object> testsendemail(HttpServletRequest request) {//修改密码
//	       try {
//	    	   Map<String, String> emailMap = new HashMap<String, String>();
//	    	   OfferEmail offerEmail = baseService.getEmailContent('4').get(0);
//	           emailMap.put("toMail", "690883594@qq.com");
//	           emailMap.put("mailtitle", offerEmail.getEmailTitle());
//	           emailMap.put("mailContent", offerEmail.getEmailContext().toString().replace("[0]", "<a>"+Code.systemPath+"/user/jihuoyouxiang.do?userIdString="+25+"&userStatus="+4+"</a>"));
//	           sendEmail.sendEmail(emailMap);
//	       }
//	       catch (Exception e) {
//	          e.printStackTrace();
//	       }
//	       return toJson(SUCCESS);
//	    }
}
