package com.alamousse.mapper.console;

import com.alamousse.model.console.Admin;
import com.alamousse.core.CustomerMapper;
import org.springframework.stereotype.Service;

/**
 * @author alamousse
 */
@Service
public interface AdminMapper extends CustomerMapper<Admin> {
    /**
     * 根据用户名获取用户
     * @param userName
     * @return
     */
    Admin selectByUsername(String userName);

    /**
     * 根据ID删除
     * @param id
     */
    void deleteById(String id);
}
