package com.offer.job;

import java.util.Iterator;
import java.util.Map;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class GeneralControl implements ApplicationContextAware {
   
   private ApplicationContext  appContext;
   
   private Map<String, String> popObjects;

   /**
    * 扫描任务计划，时间到点就执行插入拍卖数据
    * 
    * @throws Exception
    */
   public void scanExecuteJob() throws Exception {
      Iterator<String> it = popObjects.keySet().iterator();
      while (it.hasNext()) {
         String key = it.next();
         CheckArtAuction checkTask = (CheckArtAuction) getBean(popObjects.get(key));
         checkTask.executeCheck();
      }
   }

   public Map<String, String> getPopObjects() {
      return popObjects;
   }

   public void setPopObjects(Map<String, String> popObjects) {
      this.popObjects = popObjects;
   }

   public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
      this.appContext = applicationContext;
   }

   public Object getBean(String beanName) {
      return appContext.getBean(beanName);
   }

}
