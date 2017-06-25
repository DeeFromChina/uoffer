package com.offer.util;

import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;



public class Msgtest {
   public static void sendMsg(String phone,String code) {
      try {
         
//         TaobaoClient client = new DefaultTaobaoClient("http://gw.api.tbsandbox.com/router/rest", "23723591", "10bdfd52f4b6791c1a16ae17bdcc0c6a");
         TaobaoClient client = new DefaultTaobaoClient("http://gw.api.taobao.com/router/rest", "23723591", "10bdfd52f4b6791c1a16ae17bdcc0c6a");
         AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
         req.setExtend( "" );
         req.setSmsType( "normal" );
         req.setSmsFreeSignName( "赛盟仕" );
         req.setSmsParamString( "{code:'"+code+"'}" );
         req.setRecNum(phone);
         req.setSmsTemplateCode( "SMS_58480020" );
         AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
         System.out.println(rsp.getBody());
      }
      catch (Exception e) {
         e.printStackTrace();
      }

   }
}
