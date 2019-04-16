package net.hontheim.jigsaw.meineapp;

import java.lang.ModuleLayer;
import net.hontheim.jigsaw.meinutil.MeinUtil;

public class MeineApp
{
   public static void main( String[] args ) {
      System.out.println("CLASSPATH:");
      System.out.println("\"" + System.getProperty("java.class.path") + "\"");
      System.out.println("\nClass / Module:");
      System.out.println("From \"" + MeineApp.class.getModule() + "\": \"" + MeineApp.class.getSimpleName() + "\"");
      System.out.println("From \"" + MeinUtil.class.getModule() + "\": \"" + MeinUtil.class.getSimpleName() + "\"");
      ModuleLayer lr = MeinUtil.class.getModule().getLayer();
      if( lr != null ) {
        System.out.println("\nLayer.Configuration: \n\"" + lr.configuration() + "\"");
        System.out.println("\nLayer.Modules: \n\"" + lr.modules() + "\"");
      } else {
        System.out.println("\n");
        System.out.println("Fehler: ModuleLayer ist null");
      }
      System.out.println("\nProcessHandle-Infos:\n\"" + MeinUtil.getProcessInfos() + "\"");
   }
}
