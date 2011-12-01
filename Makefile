JAVAC=javac
JAR=jar
CP=craftbukkit-0.0.1-1337.jar

PKG=org/codu/minecraft/multimapsfix
CLASSES=$(PKG)/MultiMapsFix.class

all: MultiMapsFix.jar

MultiMapsFix.jar: $(CLASSES) plugin.yml
	$(JAR) cf MultiMapsFix.jar $(PKG)/*.class plugin.yml

%.class: %.java
	$(JAVAC) -cp $(CP) $<

clean:
	rm -f $(PKG)/*.class MultiMapsFix.jar
