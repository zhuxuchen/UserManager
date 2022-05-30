package com.ly.um.service.impl;

import com.ly.um.entity.SysUser;
import com.ly.um.mapper.SysUserMapper;
import com.ly.um.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysUserServiceImpl implements SysUserService {

    @Autowired
    SysUserMapper sysUserMapper;

    @Override
    public SysUser checkUserPassword(String user_code, String user_password) {
        SysUser user = new SysUser();
        user.setUser_code(user_code);
        user.setUser_password(user_password);
        return sysUserMapper.checkUserPassword(user);
    }

    @Override
    public List<SysUser> getAllUsers() {
        return sysUserMapper.getAllUsers();
    }

    @Override
    public int addSysUser(SysUser user) {
        return sysUserMapper.addSysUser(user);
    }

    @Override
    public int delUser(int user_id) {
        return sysUserMapper.delUser(user_id);
    }

    @Override
    public SysUser getSysUserByID(int user_id) {
        return sysUserMapper.getSysUserByID(user_id);
    }

    @Override
    public int updateSysUser(SysUser user) {
        return sysUserMapper.updateSysUser(user);
    }
}
