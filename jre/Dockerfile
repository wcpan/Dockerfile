FROM eclipse-temurin:17 as builder
RUN $JAVA_HOME/bin/jlink \
         --add-modules java.base,java.desktop,java.management,java.security.sasl,jdk.unsupported \
         --strip-debug \
         --no-man-pages \
         --no-header-files \
         --compress=2 \
         --output /javaruntime

FROM debian:buster-slim
ENV JAVA_HOME=/opt/java/openjdk
ENV PATH "${JAVA_HOME}/bin:${PATH}"
COPY --from=builder /javaruntime $JAVA_HOME
