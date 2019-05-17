export PATH_TO_JDK='' # Insert JDK Path here (e.g. /c/JDK/jdk-9.0.4+11).

if test -z "$PATH_TO_JDK"
then
  echo -e "\033[0;31m[ERROR]: Could not load JDK. \nPlease make sure to set your JDK path in this script!\033[0m"
  exit 1
fi

echo -n "Setting JDK version..."
export JAVA_HOME=$PATH_TO_JDK
export PATH=$JAVA_HOME/bin:$PATH
echo " Done!"

echo -n "Start compiling..."
javac -d classes --module-source-path src $(find src -name "*.java")

echo " Finished compiling!"

echo -n "Try creating modules directory..."
rm -rf modules
mkdir ./modules
echo " Done!"

echo -n "Start building JARs..."

jar --create --file modules/net.hontheim.jigsaw.meineapp-1.0.jar --module-version 1.0 --main-class net.hontheim.jigsaw.meineapp.MeineApp -C classes/net.hontheim.jigsaw.meineapp .

jar --create --file modules/net.hontheim.jigsaw.meinutil-1.0.jar --module-version 1.0 -C classes/net.hontheim.jigsaw.meinutil .

echo " Done!"

read -rsp $'Press enter to start run...'
echo ""
echo ""

java -p modules -m net.hontheim.jigsaw.meineapp/net.hontheim.jigsaw.meineapp.MeineApp

echo ""
echo ""
echo "Finished!"
read -rsp $'\nPress enter to close...\n'
