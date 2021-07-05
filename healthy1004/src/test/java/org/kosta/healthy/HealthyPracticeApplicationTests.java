package org.kosta.healthy;

import org.junit.jupiter.api.Test;
import org.kosta.healthy.model.mapper.CrewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class HealthyPracticeApplicationTests {
	@Autowired
	 CrewMapper crewMapper;
	 
		@Test
		void contextLoads() {
			System.out.println(crewMapper.findCrewListByName("송파"));
		}
}
