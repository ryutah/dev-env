#!/bin/sh

java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044 \
  -Declipse.application=org.eclipse.jdt.ls.core.id1 \
  -Dosgi.bundles.defaultStartLevel=4 \
  -Declipse.product=org.eclipse.jdt.ls.core.product \
  -Dlog.protocol=true \
  -Dlog.level=ALL \
  -noverify \
  -Xmx1G \
  -jar /usr/local/lib/jlsp/plugins/org.eclipse.equinox.launcher_${JAR_VERSION}.jar \
  -configuration /usr/local/lib/jlsp/config_linux \
  -data /home/data
