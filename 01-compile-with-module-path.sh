echo -n "Setting JDK version..."
export JAVA_HOME='/c/JDK/jdk-9.0.4+11'
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
