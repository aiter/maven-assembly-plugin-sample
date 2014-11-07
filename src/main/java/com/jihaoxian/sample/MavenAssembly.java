/**
 * 
 */
package com.jihaoxian.sample;

import java.util.Arrays;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @Description: 程序入口 (描述这个类的作用) 
 * 
 * @author jihaoxian jihaoxian@gmail.com
 * @date 2014-11-7 下午11:53:16
 */
public class MavenAssembly {
	private static final Logger logger = LoggerFactory.getLogger(MavenAssembly.class);

	public static void main(String[] args) {
		
		logger.info("maven-assembly-plugin 演示。输入参数为:"+Arrays.toString(args));
	}
}
