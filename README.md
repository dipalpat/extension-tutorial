# Steps
* ```shell 
    pack builder create TAG \
    --config $PWD/builders/base-lite/builder.toml \
    --publish
* ```shell
    pack build test-extension  \
  --env BP_JVM_VERSION=17 \
  --builder custom-extended-builde \
  --env BP_EXT_DEMO=1 \
  --env BP_REQUIRES=curl \
  --path ../spring-petclinic \
  --pull-policy always \
  --verbose