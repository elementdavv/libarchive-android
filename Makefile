# This is a very simple Makefile that calls 'gradlew' to do the heavy lifting.

default: debug

debug:
	./gradlew --warning-mode=all externalNativeBuildDebug
r:
	./gradlew --warning-mode=all externalNativeBuildRelease

tasks:
	./gradlew tasks
c:
	./gradlew clean
