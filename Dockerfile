FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGY4bC1hcGIKZGVzY3JpcHRpb246IEZhYnJpYzggTGF1bmNoZXIK\
YmluZGFibGU6IFRydWUKYXN5bmM6IG9wdGlvbmFsCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBG\
YWJyaWM4IExhdW5jaGVyCiAgY29uc29sZS5vcGVuc2hpZnQuaW8vaWNvbkNsYXNzOiBmYSBmYS1y\
b2NrZXQKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogRGVwbG95IEZh\
YnJpYzggTGF1bmNoZXIgdG8gdGhlIEFuc2libGUgU2VydmljZSBCcm9rZXIKICAgIGZyZWU6IFRy\
dWUKICAgIG1ldGFkYXRhOiB7fQogICAgcGFyYW1ldGVyczogCiAgICAtIG5hbWU6IEdJVEhVQl9V\
U0VSCiAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAgIHR5cGU6IHN0cmluZwogICAgICB0aXRsZTog\
R2l0aHViIHVzZXJuYW1lCiAgICAtIG5hbWU6IEdJVEhVQl9UT0tFTgogICAgICByZXF1aXJlZDog\
VHJ1ZQogICAgICB0eXBlOiBzdHJpbmcKICAgICAgdGl0bGU6IEdpdGh1YiBhdXRoIHRva2VuCg=="










COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
