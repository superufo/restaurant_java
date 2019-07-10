package com.alamousse.mapper.member;

import com.alamousse.model.member.Member;
import com.alamousse.core.CustomerMapper;
import org.springframework.stereotype.Service;

/**
 * @author alamousse
 */
@Service
public interface MemberMapper extends CustomerMapper<Member> {
    /**
     * 根据用户名获取用户
     * @param username
     * @return
     */
    Member selectByUsername(String username);

    Member selectByAccount(String account);

    Member selectByGoogle(String google);

    Member selectByFacebook(String facebook);


}
