#!/bin/sh

uaac token client get admin -s adminsecret
uaac client add dataflow \
  --name dataflow \
  --scope cloud_controller.read,cloud_controller.write,openid,password.write,scim.userids,foo.create,foo.view \
  --authorized_grant_types password,authorization_code,client_credentials,refresh_token \
  --authorities uaa.resource,dataflow.create,dataflow.deploy,dataflow.destroy,dataflow.manage,dataflow.modify,dataflow.schedule,dataflow.view\
  --redirect_uri http://localhost:9393/login \
  --autoapprove openid \
  --secret dataflow \
  
uaac group add "foo.view"
uaac group add "foo.create"

uaac user add cartman -p mysecret --emails cartman@someplace.com
uaac user add mrviewer -p mysecret --emails mrviewer@someplace.com

uaac member add "foo.view" cartman
uaac member add "foo.create" cartman

uaac member add "foo.view" mrviewer