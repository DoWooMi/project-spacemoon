package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Host;
import xyz.itwill.dto.Pay;
import xyz.itwill.dto.SpacePayHost;

public interface AdminDAO {
	int selectnonpayCount();
	Host selectadminHostspace(int sNo);
	int updateadminPay(Pay pay);
	List<SpacePayHost> selectadminPayspaceList(Map<String, Object> map);
	List<SpacePayHost> selectstatusPayspaceList(Map<String, Object> map);
	List<SpacePayHost> selectSearchList(Map<String, Object> map);
}