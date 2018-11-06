/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : PostgreSQL
 Source Server Version : 100005
 Source Host           : localhost:5432
 Source Catalog        : wso2eidb
 Source Schema         : activitidb

 Target Server Type    : PostgreSQL
 Target Server Version : 100005
 File Encoding         : 65001

 Date: 06/11/2018 23:47:09
*/


-- ----------------------------
-- Table structure for act_re_deployment
-- ----------------------------
DROP TABLE IF EXISTS "activitidb"."act_re_deployment";
CREATE TABLE "activitidb"."act_re_deployment" (
  "id_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "name_" varchar(255) COLLATE "pg_catalog"."default",
  "category_" varchar(255) COLLATE "pg_catalog"."default",
  "tenant_id_" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "deploy_time_" timestamp(6),
  "activiti_process_definition_id_" varchar(255) COLLATE "pg_catalog"."default",
  "deployment_id_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_re_deployment
-- ----------------------------
INSERT INTO "activitidb"."act_re_deployment" VALUES ('2505', 'newtest', NULL, '-1234', '2018-11-05 18:17:02.547', NULL, NULL);

-- ----------------------------
-- Primary Key structure for table act_re_deployment
-- ----------------------------
ALTER TABLE "activitidb"."act_re_deployment" ADD CONSTRAINT "act_re_deployment_pkey" PRIMARY KEY ("id_");

-- ----------------------------
-- Foreign Keys structure for table act_re_deployment
-- ----------------------------
ALTER TABLE "activitidb"."act_re_deployment" ADD CONSTRAINT "fkncd6y75ghcv8oycndodm0af4n" FOREIGN KEY ("activiti_process_definition_id_") REFERENCES "activitidb"."act_re_procdef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "activitidb"."act_re_deployment" ADD CONSTRAINT "fkpy15xdp4ob74ppxfxb76qwfp4" FOREIGN KEY ("deployment_id_") REFERENCES "activitidb"."act_re_procdef" ("id_") ON DELETE NO ACTION ON UPDATE NO ACTION;
