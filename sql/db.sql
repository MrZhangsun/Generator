drop table if exists lease_company;
create table lease_company
(

    id                     varchar(36)             not null comment '主键' primary key,
    name                   varchar(255)            not null comment '公司名称',
    credit_code            varchar(18)             not null comment '统一社会信用代码',
    ele_seal               varchar(255)            null comment '电子公章',
    represent              varchar(36)             null comment '企业法人',
    company_type           enum('1','2','3','4','5','6','7','8') comment '单位性质，1：合资、2：独资、3：国有、4：私营、5：全民所有制、6：集体所有制、7：股份制、8：有限责任',
    registered_capital     bigint unsigned         null comment '注册资金',
    establish_date         date                    null comment '注册成立时间',
    scale                  int(8)                  null comment '企业规模：多少人数',
    registration_status    enum('1', '0')          not null default '1' null comment '工商局登记状态，1：开业，0：停业',
    description            text                    null comment '企业简介',
    province               varchar(36)             not null comment '省编码',
    city                   varchar(36)             not null comment '市编码',
    district               varchar(36)             not null comment '区/县编码',
    address                varchar(300)            not null comment '社会化租赁公司详细登记地址',
    post_code              varchar(30)             null comment '邮编',
    mail                   varchar(100)            null comment '企业邮箱',
    telephone              varchar(12)             null comment '企业联系电话',

    service_start_time     date                    null comment '社会化租赁服务开始时间',
    service_due_time       double                  null comment '社会化租赁服务期限，单位/年',
    service_comment        varchar(200)            null comment '社会化租赁服务公司备注',
    attach_address         tinytext                null comment '社会化租赁服务公司附件地址',

    vehicle_manager_name   varchar(60)             null comment '车辆管理负责人姓名',
    vehicle_manager_mobile varchar(11)             null comment '车辆管理负责人电话',
    contact_name           varchar(255)            not null comment '单位联系人姓名',
    contact_mobile         varchar(11)             not null comment '单位联系人电话',

    remark                 varchar(60)             null comment '平台管理备注信息',
    crt_user_name          varchar(255)            null comment '创建人',
    crt_user_id            varchar(36)             null comment '创建人ID',
    crt_time               datetime                null comment '创建时间',
    upd_user_name          varchar(255)            null comment '最后更新人',
    upd_user_id            varchar(36)             null comment '最后更新人ID',
    upd_time               datetime                null comment '最后更新时间',
    is_deleted             enum('1','0')        default '0' comment '是否删除,0正常，1逻辑删除',
    is_disabled            enum('1','0')        default '0' comment '是否作废，0正常，1作废'
)
    comment '社会化租赁公司信息';