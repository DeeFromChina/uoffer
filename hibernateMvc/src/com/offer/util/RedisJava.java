package com.offer.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;


import redis.clients.jedis.Jedis;
import redis.clients.jedis.Pipeline;
import redis.clients.jedis.Transaction;

public class RedisJava {
	
	public static boolean openRedis(Map<String, Object> redisMap) {
		try{
			Jedis jedis = new Jedis("localhost");
			System.out.println("服务正在运行: "+jedis.ping());
			redisMap.put("jedis", jedis);
			return true;
		}catch(Exception e){
			System.err.println("连接失败");
			e.printStackTrace();
		}
		return false;
	}

	public static void main(String[] args) {
//		openRedis();
        //连接本地的 Redis 服务
//        Jedis jedis = new Jedis("localhost");
        //分布式存储redis缓存数据
//        Jedis jedis1 = new Jedis("127.0.0.1");
//        Jedis jedis2 = new Jedis("127.0.0.2");
//        Jedis jedis3 = new Jedis("127.0.0.3");
//        System.out.println("连接成功");
        //查看服务是否运行
//        System.out.println("服务正在运行: "+jedis.ping());
        //清除所有数据
//        jedis.flushAll();
//        System.out.println(jedis.get("myKey"));
        
//        Set<String> keys = jedis.keys("myL*"); 
//        Iterator<String> it=keys.iterator() ;   
//        while(it.hasNext()){   
//            String key = it.next();   
//            System.out.println(key);   
//        }
        
//        pipline(jedis);
	}
	private static void common(Jedis jedis){
        //增加key
        jedis.set("myKey", "123");
        System.out.println(jedis.get("myKey"));
        //删除key
//        jedis.del("myKey");
//        System.out.println(jedis.get("myKey"));
        //增加List
        jedis.lpush("myList", "1");
        jedis.lpush("myList", "2");
        jedis.lpush("myList", "3");
        
        List<String> list = jedis.lrange("myList", 0, 2);
        for(String l : list){
        	//输出是倒序
        	System.out.println(l);
        }
        Map<String, Object> map = new HashMap<>();
        map.put("id", "1");
//        jedis..lpush("myList2", map);
        //获取所有key值
        Set<String> keys = jedis.keys("myL*"); 
        Iterator<String> it=keys.iterator() ;   
        while(it.hasNext()){   
            String key = it.next();   
            System.out.println(key);   
        }
        //关闭redis连接
        jedis.disconnect();
        //这样取会抛错
//        System.out.println(jedis.get("myList"));
    }
	
	//Redis的事务还能保证一个事务内的命令依次执行而不被其他命令插入
	//Redis保证一个事务中的所有命令要么都执行，要么都不执行
	private static void trans(Jedis jedis){
		//multi(),作为最小的单位执行，保证完全执行
		Transaction tx = jedis.multi();
		int i = 0;
		while (i<10) {
			tx.set("t"+String.valueOf(i), String.valueOf(i));
			i++;
		}
		//watch(),因为事务是一次性执行，在执行过程中我们可以使用watch来查看其中的参数值
		tx.watch("t1");
		System.out.println();
		//提交事务
//		List<Object> results = tx.exec();
//		for(Object o : results){
//			System.out.println(o.toString());
//		}
		//取消事务
//		tx.discard();
		jedis.disconnect();
	}
	
	//管道、处理并发事件
	private static void pipline(Jedis jedis){
		Pipeline pipelined = jedis.pipelined();
		try {
			long start2 = System.currentTimeMillis();  
			for(int i = 0; i < 10000; i++){
				jedis.lpush("pipKey2", String.valueOf(i));
			}
			System.out.println(System.currentTimeMillis()-start2);
			//管道要放下面执行，不知道
			long start1 = System.currentTimeMillis();  
			for(int i = 0; i < 10000; i++){
				pipelined.lpush("pipKey", String.valueOf(i));
			}
			System.out.println(System.currentTimeMillis()-start1);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private static void test(Jedis jedis){
		jedis.watch("");// watchkeys

        String val = jedis.get("");
        int valint = Integer.valueOf(val);
        String userifo = "";
        if (valint < 10) {
            Transaction tx = jedis.multi();// 开启事务
            //incr,把值加一
            tx.incr("watchkeys");

            List<Object> list = tx.exec();// 提交事务，如果此时watchkeys被改动了，则返回null
            if (list != null) {
                System.out.println("用户：" + userifo + "抢购成功，当前抢购成功人数:"
                        + (valint + 1));
                /* 抢购成功业务逻辑 */
                jedis.sadd("setsucc", userifo);
            } else {
                System.out.println("用户：" + userifo + "抢购失败");
                /* 抢购失败业务逻辑 */
                jedis.sadd("setfail", userifo);
            }

        } else {
            System.out.println("用户：" + userifo + "抢购失败");
            jedis.sadd("setfail", userifo);
            // Thread.sleep(500);
            return;
        }
	}
}
