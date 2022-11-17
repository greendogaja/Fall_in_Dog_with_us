package com.fallindog.fid;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapperInterface.NcommentMapper;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//Java Config
//
@Log4j
public class NcommentMapperTest {
	@Setter(onMethod_ = @Autowired)
	private NcommentMapper mapper;
	
	@Test
	public void testMapper() {
		log.info(mapper);
	}
}
