package com.alamousse.controller.console;

import com.alamousse.model.member.Member;
import com.alamousse.service.member.MemberService;
import com.alamousse.util.DateUtil;
import com.alamousse.util.ReturnUtil;
import com.alamousse.util.UuidUtil;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import org.springframework.context.MessageSource;

import com.alamousse.util.I18nUtil;

import javax.validation.Valid;


/**
 * @author alamousse
 */
@Controller
@RequestMapping("/console/member")
public class UserController {
    @Autowired
    private MessageSource messageSource;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MemberService memberService;

    @RequiresPermissions("member:index")
    @RequestMapping(value = "/index", method = {RequestMethod.GET})
    public String index(Model model) {
//        Locale locale = LocaleContextHolder.getLocale();
//        model.addAttribute("user.firstname", messageSource.getMessage("user.firstname", null, locale));

        return "console/member/index";
    }

    @RequiresPermissions("member:index")
    @RequestMapping(value = "/list", method = {RequestMethod.GET})
    @ResponseBody
    public ModelMap list(Member member) {
        ModelMap map = new ModelMap();
        List<Member> lists = memberService.getPageList(member);
        map.put("pageInfo", new PageInfo<Member>(lists));
        map.put("queryParam", member);
        return ReturnUtil.success("加载成功", map, null);
    }

    @RequiresPermissions("member:edit")
    @RequestMapping(value = "/from", method = {RequestMethod.GET})
    public String from(Member member, Model model) {
        if (!StringUtils.isEmpty(member.getAccount())) {
            member = memberService.findByAccount(member.getAccount());
        }
        model.addAttribute("member", member);
        return "console/member/from";
    }

//    @RequiresPermissions("member:save")
//    @RequestMapping(value = "/save", method = {RequestMethod.POST})
//    @ResponseBody
//    public ModelMap save(@Valid Member member, BindingResult result) {
//        if (result.hasErrors()) {
//            for (ObjectError er : result.getAllErrors()) {
//                return ReturnUtil.error(er.getDefaultMessage(), null, null);
//            }
//        }
//
//        try {
//            if (StringUtils.isEmpty(member.getUid())) {
//                member.setUid(UuidUtil.getUUID());
//                member.setCreatedAt(DateUtil.getCurrentTime());
//                member.setUpdatedAt(DateUtil.getCurrentTime());
//                memberService.insert(member);
//            } else {
//                member.setUpdatedAt(DateUtil.getCurrentTime());
//                memberService.save(member);
//            }
//            // 更新所有用户权限，更严谨的做法是更新与当前角色有关的用户权限
//            //adminShiroRealm.kickOutAllUser(false);
//            return ReturnUtil.success("操作成功", null, "/console/member/index");
//        } catch (Exception e) {
//            e.printStackTrace();
//            return ReturnUtil.error("操作失败", null, null);
//        }
//    }

}
