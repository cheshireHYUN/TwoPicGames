package config;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;


/*
 	SqlMapClient 객체를 제공하는 팩토리 클래스
 */

public class SqlMapClientFactory {
	
	private static SqlMapClient smc; // SqlMapClient 객체변수 선언
	
	private SqlMapClientFactory() {
		
		
	}
	
	/*
	 	SqlMapClient 객체를 제공하는 팩토리 메소드
	 	return SqlMapClient 객체
	 */
	public static SqlMapClient getInstance() {
		if(smc == null) {
			try {
				Charset charset = Charset.forName("UTF-8"); // 설정파일 인코딩 정보 설정
				Resources.setCharset(charset);
				Reader rd = Resources.getResourceAsReader("config/SqlMapConfig.xml");
				smc = SqlMapClientBuilder.buildSqlMapClient(rd);
				rd.close(); // Reader 객체 닫기
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return smc;
	}
}
