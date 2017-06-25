package com.offer.job;

import org.springframework.stereotype.Service;

@Service
public class DoJob {
	public void doJob2() {
		System.out.println("不继承QuartzJobBean方式-调度进行中...");
	}
}
