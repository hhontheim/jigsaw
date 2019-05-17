module org.example.app {

    // Abhaengigkeiten zu anderen Modulen
    requires org.example.util;
    requires transitive com.company.service; // Transitive Abhaengigkeit

    // Exportieren eigener Pakete
    exports org.example.app;
    exports org.example.secure to com.company.access; // Exklusive Freigabe

}
