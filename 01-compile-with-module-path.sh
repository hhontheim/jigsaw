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

read -rsp $'Press enter to start run...'
echo ""
echo ""

java -p classes -m net.hontheim.jigsaw.meineapp/net.hontheim.jigsaw.meineapp.MeineApp

echo ""
echo ""
echo "Finished!"
read -rsp $'\nPress enter to close...\n'
