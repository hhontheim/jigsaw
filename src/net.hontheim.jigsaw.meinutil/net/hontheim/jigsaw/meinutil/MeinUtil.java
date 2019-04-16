package net.hontheim.jigsaw.meinutil;

public class MeinUtil {
   public static String getProcessInfos() {
      return "pid: "    + ProcessHandle.current().pid() +
             ", user: " + ProcessHandle.current().info().user() +
             ", cmd: "  + ProcessHandle.current().info().command();
   }
 }
