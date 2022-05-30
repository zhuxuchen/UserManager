package com.ly.um.mapper;

import com.ly.um.entity.SysUser;

import java.util.List;

public interface SysUserMapper {
    //输入user_code和密码检查数据库中是否存在
    public SysUser checkUserPassword(SysUser user);

    public List<SysUser> getAllUsers();

    public int addSysUser(SysUser user);

    public int delUser(int user_id);

    public SysUser getSysUserByID(int user_id);

    public int updateSysUser(SysUser user);
}
