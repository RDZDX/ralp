#include "ralp.h"

void vm_main(void) {

    vm_pmng_set_bg();
    run();
}

void run(void) {

    VMWCHAR f_wname[100];
    VMCHAR MyApp[100] = "\\271123656.rom"; // Facebook messanger

    vm_ascii_to_ucs2(f_wname, (strlen(MyApp) + 1) * 2, MyApp);
    vm_start_app(f_wname, 0, 0);
    vm_create_timer_ex(10,timer);

}

void timer(int a) {
     vm_delete_timer_ex(a);
     vm_exit_app();
}

/*---------------------------------------
Nokia 225 single sim RM-1012, V30.06.11, 21-07-15 :
"\\271123656.rom" - Facebook messanger
"\\271139084.rom" - Facebook
"\\271305228.rom" - Twitter
"\\271543384.rom" - Opera
"\\273716508.rom" - Games
"\\272222672.rom" - Asphalt 6 adrenaline
"\\272643436.rom" - Block breaker unlimited
"\\272966676.rom" - Modern combat 2 black pegasus
"\\273336536.rom" - Real football 2015
"\\274013860.rom" - The amazing spider-man

Nokia 225 double sim RM-1011, V30.06.11, 21-07-15 :
"\\271307840.rom" - Facebook messanger
"\\271323268.rom" - Facebook
"\\271489412.rom" - Twitter
"\\271727568.rom" - Opera
"\\273900692.rom" - Games
"\\272827620.rom" - Block breaker unlimited
"\\273150860.rom" - Modern combat 2 black pegasus
"\\272406856.rom" - Asphalt 6 adrenaline
"\\271498044.rom" - The amazing spider-man
"\\273520720.rom" - Real football 2015

Nokia 225 single sim RM-1012, V21.00.11, 18-08-14 :
"//271297640.rom" - Yahoo messanger
"//273990116.rom" - Games
"//274351780.rom" - Facebook
"//271131496.rom" - Facebook messanger
"//271116068.rom" - Nokia xpress
"//271529340.rom" - Twitter
"//272242400.rom" - Asphalt 6 adrenaline
"//272620288.rom" - Block breaker unlimited
"//273033712.rom" - Avengers
"//273356952.rom" - Assasins creeed 3
"//273703208.rom" - Real football 2012
----------------------------------------*/
