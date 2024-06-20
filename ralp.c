#include "ralp.h"

void vm_main(void) {

    vm_pmng_set_bg();
    run();
}

void run(void) {

    VMWCHAR f_wname[100];
//-------------Nokia 225 single sim:
    VMCHAR MyApp[100] = "\\271123656.rom"; // Facebook messanger
    //VMCHAR MyApp[100] = "\\271139084.rom"; // Facebook
    //VMCHAR MyApp[100] = "\\271305228.rom"; // Twitter
    //VMCHAR MyApp[100] = "\\271543384.rom"; // Opera
    //VMCHAR MyApp[100] = "\\273716508.rom"; // Games
    //VMCHAR MyApp[100] = "\\272222672.rom"; // Asphalt 6 adrenaline
    //VMCHAR MyApp[100] = "\\272643436.rom"; // Block breaker unlimited
    //VMCHAR MyApp[100] = "\\272966676.rom"; // Modern combat 2 black pegasus
    //VMCHAR MyApp[100] = "\\273336536.rom"; // Real football 2015
    //VMCHAR MyApp[100] = "\\274013860.rom"; // The amazing spider-man
//-------------Nokia 225 double sim:
    //VMCHAR MyApp[100] = "\\271307840.rom"; // Facebook messanger
    //VMCHAR MyApp[100] = "\\271323268.rom"; // Facebook
    //VMCHAR MyApp[100] = "\\271489412.rom"; // Twitter
    //VMCHAR MyApp[100] = "\\271727568.rom"; // Opera
    //VMCHAR MyApp[100] = "\\273900692.rom"; // Games
    //VMCHAR MyApp[100] = "\\272827620.rom"; // Block breaker unlimited
    //VMCHAR MyApp[100] = "\\273150860.rom"; // Modern combat 2 black pegasus
    //VMCHAR MyApp[100] = "\\272406856.rom"; // Asphalt 6 adrenaline
    //VMCHAR MyApp[100] = "\\271498044.rom"; // The amazing spider-man
    //VMCHAR MyApp[100] = "\\273520720.rom"; // Real football 2015

    vm_ascii_to_ucs2(f_wname, (strlen(MyApp) + 1) * 2, MyApp);
    vm_start_app(f_wname, 0, 0);
    vm_create_timer_ex(10,timer);

}

void timer(int a) {
     vm_delete_timer_ex(a);
     vm_exit_app();
}
