# Steps
* Create bulder with extensions
  ```shell 
    pack builder create TAG \
    --config $PWD/builders/base-lite/builder.toml \
    --publish
* Create build for `spring-petclinic` project
  ```shell
    pack build test-extension  \
  --env BP_JVM_VERSION=17 \
  --builder custom-extended-builde \
  --env BP_EXT_DEMO=1 \
  --env BP_REQUIRES=curl \
  --path ../spring-petclinic \
  --pull-policy always \
  --verbose
* Use `dive test-extension` to view the layers and verify curl is added to the end image. Alternatively, you can use `docker run --rm --entrypoint curl test-extension https://www.google.com` to verify curl is present