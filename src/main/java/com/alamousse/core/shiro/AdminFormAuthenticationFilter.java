package com.alamousse.core.shiro;

import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;

/**
 * @author alamousse
 */
public class AdminFormAuthenticationFilter extends FormAuthenticationFilter {

    @Override
    public void setLoginUrl(String loginUrl) {
        super.setLoginUrl("/console/login");
    }

    @Override
    public void setSuccessUrl(String successUrl) {
        super.setSuccessUrl("/console/index");
    }

}
