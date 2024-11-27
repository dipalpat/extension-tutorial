# Steps
* ```shell 
    pack builder create TAG \                        --config $PWD/builders/base-lite/builder.toml \  --publish
* ```shell
    pack build test-extension  --env BP_JVM_VERSION=17 \                                               1m 3s ▼ 14:12:04
  --builder custom-extended-builder \
  --env BP_EXT_DEMO=1 \
  --env BP_REQUIRES=curl \
  --path ../spring-petclinic \
  --pull-policy always \
  --verbose