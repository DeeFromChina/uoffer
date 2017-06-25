package com.offer.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferInvite;
import com.offer.model.OfferInviteChat;
import com.offer.service.OfferInviteChatService;
import com.offer.service.OfferInviteService;
import com.offer.util.ConUtil;

@Service("offerInviteChatService")
public class OfferInviteChatServiceImpl extends BaseServiceImpl implements OfferInviteChatService {

   @Override
   public void saveOfferInviteChat(Map<String, String> map) throws Exception {
      map.put("interviewtime", map.get("interviewtimeValue"));
      map.put("interviewtime2", map.get("interviewtimeValue2"));
      OfferInviteChat offerInviteChat = new OfferInviteChat();
      conUtil.mapToObject(offerInviteChat, map);
      offerInviteChat.setChatCreateTime(new Date());
      String chatMessage = "";
      if (map.get("status").equals("3")) {
         String[] time = map.get("interviewtimeValue").split("-");
         String hour = map.get("interviewtimeValue2");
         chatMessage = "请在" + time[0] + "年" + time[1] + "月" + time[2] + "日" + hour + "到" + map.get("interviewworkspace") + "面试；联系人：" + map.get("interviewWay") + "；电话：" + map.get("interviewman");
         offerInviteChat.setChatMessage(chatMessage);
      }
      baseDao.save(offerInviteChat);
      List<OfferInvite> offerInvites = offerInviteService.getOfferInvites(map.get("inviteId"));
      String status = offerInvites.get(0).getStatus().toString();
      if (!status.equals(map.get("status"))) {
         if ("0".equals(status)) {
            offerInvites.get(0).setStatus(Integer.valueOf(map.get("status")));
            offerInviteService.updateOfferInvite(offerInvites.get(0));//修改当前的状态
         }
         else if (!"1".equals(map.get("status"))) {
            offerInvites.get(0).setStatus(Integer.valueOf(map.get("status")));
            offerInviteService.updateOfferInvite(offerInvites.get(0));//修改当前的状态
         }
      }
   }
   
   @Override
   public List<OfferInviteChat> getOfferInviteChats(Map<String, String> map) throws Exception {
      Map<String, String> nowMap = new HashMap<String, String>();
      String str = returnString(map.get("inviteId"));
      if (!"".equals(str)) {
         nowMap.put("inviteId", str);
      }
      str = returnString(map.get("offerUserId"));
      if (!"".equals(str)) {
         nowMap.put("offerUserId", str);
      }
      str = returnString(map.get("offerFirmId"));
      if (!"".equals(str)) {
         nowMap.put("offerFirmId", str);
      }
      str = returnString(map.get("status"));
      if (!"".equals(str)) {
         nowMap.put("status", str);
      }
      return (List<OfferInviteChat>) baseDao.findField(OfferInviteChat.class, nowMap);
   }

   @Override
   public OfferInviteChat getOfferInviteChat(int id) throws Exception {
      return (OfferInviteChat) baseDao.findField(OfferInviteChat.class, id);
   }

   @Override
   public void updateOfferInviteChat(OfferInviteChat offerInviteChat) throws Exception {
      baseDao.update(offerInviteChat);
   }

   @Override
   public void deleteOfferInviteChat(String ids) throws Exception {
      String[] id = ids.split(",");
      Integer[] del_ids = new Integer[id.length];
      for (int i = 0; i < id.length; i++) {
         del_ids[i] = Integer.parseInt(id[i]);
      }
      baseDao.deleteByIds(del_ids, OfferInviteChat.class);
   }
   
   @Autowired
   private BaseDao baseDao;
   
   @Autowired
   private ConUtil conUtil;

   @Autowired
   private OfferInviteService offerInviteService;
}
