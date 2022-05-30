package com.ly.um.service;

import com.ly.um.entity.SysUser;

import java.util.List;

public interface SysUserService {
    public SysUser checkUserPassword(String user_code, String user_password);
    public List<SysUser> getAllUsers();
    public int addSysUser(SysUser user);

    public int delUser(int user_id);

    public SysUser getSysUserByID(int user_id);

    public int updateSysUser(SysUser user);

}
