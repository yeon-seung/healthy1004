package org.kosta.healthy;

import java.util.List;

//import java.util.HashMap;

import org.junit.jupiter.api.Test;
import org.kosta.healthy.model.mapper.CrewMapper;
import org.kosta.healthy.model.vo.CrewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class HealthyPracticeApplicationTests {
	@Autowired
	 CrewMapper crewMapper;
	 
		@Test
		void contextLoads() {
//			List<CrewVO> list = crewMapper.getMyCrewList("dongooree");
//			System.out.println(list);
//			for (int i = 0; i < list.size(); i++) {
//				crewMapper.removeCrewMember(list.get(i).getCrewId());
//			}
//			System.out.println(crewMapper.getMyCrewList("dongooree"));
		}
}
