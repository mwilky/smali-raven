.class public Lcom/android/settingslib/mobile/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field public static final CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FLIGHT_MODE_ICON:I

.field public static final FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ICON_1X:I

.field public static final ICON_3G:I

.field public static final ICON_4G:I

.field public static final ICON_4G_PLUS:I

.field public static final ICON_5G:I

.field public static final ICON_5G_E:I

.field public static final ICON_5G_PLUS:I

.field public static final ICON_CWF:I

.field public static final ICON_E:I

.field public static final ICON_G:I

.field public static final ICON_H:I

.field public static final ICON_H_PLUS:I

.field public static final ICON_LTE:I

.field public static final ICON_LTE_PLUS:I

.field public static final ICON_NAME_TO_ICON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final MOBILE_CALL_STRENGTH_ICONS:[I

.field public static final NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final WIFI_CALL_STRENGTH_ICONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 169

    sget v0, Lcom/android/settingslib/R$drawable;->stat_sys_airplane_mode:I

    sput v0, Lcom/android/settingslib/mobile/TelephonyIcons;->FLIGHT_MODE_ICON:I

    sget v12, Lcom/android/settingslib/R$drawable;->ic_lte_mobiledata:I

    sput v12, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_LTE:I

    sget v13, Lcom/android/settingslib/R$drawable;->ic_lte_plus_mobiledata:I

    sput v13, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_LTE_PLUS:I

    sget v11, Lcom/android/settingslib/R$drawable;->ic_g_mobiledata:I

    sput v11, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_G:I

    sget v25, Lcom/android/settingslib/R$drawable;->ic_e_mobiledata:I

    sput v25, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_E:I

    sget v37, Lcom/android/settingslib/R$drawable;->ic_h_mobiledata:I

    sput v37, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_H:I

    sget v49, Lcom/android/settingslib/R$drawable;->ic_h_plus_mobiledata:I

    sput v49, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_H_PLUS:I

    sget v61, Lcom/android/settingslib/R$drawable;->ic_3g_mobiledata:I

    sput v61, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_3G:I

    sget v73, Lcom/android/settingslib/R$drawable;->ic_4g_mobiledata:I

    sput v73, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G:I

    sget v85, Lcom/android/settingslib/R$drawable;->ic_4g_plus_mobiledata:I

    sput v85, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G_PLUS:I

    sget v97, Lcom/android/settingslib/R$drawable;->ic_5g_e_mobiledata:I

    sput v97, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_E:I

    sget v109, Lcom/android/settingslib/R$drawable;->ic_1x_mobiledata:I

    sput v109, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_1X:I

    sget v121, Lcom/android/settingslib/R$drawable;->ic_5g_mobiledata:I

    sput v121, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G:I

    sget v133, Lcom/android/settingslib/R$drawable;->ic_5g_plus_mobiledata:I

    sput v133, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_PLUS:I

    sget v145, Lcom/android/settingslib/R$drawable;->ic_carrier_wifi:I

    sput v145, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_CWF:I

    new-instance v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget-object v138, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/16 v158, 0x0

    aget v155, v138, v158

    sget v156, Lcom/android/settingslib/R$string;->carrier_network_change_mode:I

    const-string v147, "CARRIER_NETWORK_CHANGE"

    const/16 v148, 0x0

    const/16 v149, 0x0

    const/16 v151, 0x0

    const/16 v152, 0x0

    const/16 v153, 0x0

    const/16 v154, 0x0

    const/16 v157, 0x0

    move-object/from16 v146, v10

    move-object/from16 v150, v138

    invoke-direct/range {v146 .. v157}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v59, v138, v158

    sget v60, Lcom/android/settingslib/R$string;->data_connection_3g:I

    const-string v51, "3G"

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v50, v9

    move-object/from16 v54, v138

    invoke-direct/range {v50 .. v61}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v8, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v155, v138, v158

    const-string v147, "WFC"

    const/16 v156, 0x0

    move-object/from16 v146, v8

    invoke-direct/range {v146 .. v157}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v7, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v155, v138, v158

    const-string v147, "Unknown"

    move-object/from16 v146, v7

    invoke-direct/range {v146 .. v157}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v23, v138, v158

    sget v24, Lcom/android/settingslib/R$string;->data_connection_edge:I

    const-string v15, "E"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v14, v6

    move-object/from16 v18, v138

    invoke-direct/range {v14 .. v25}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v14, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v107, v138, v158

    sget v108, Lcom/android/settingslib/R$string;->data_connection_cdma:I

    const-string v99, "1X"

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    move-object/from16 v98, v14

    move-object/from16 v102, v138

    invoke-direct/range {v98 .. v109}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v14, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v15, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v16, v138, v158

    sget v17, Lcom/android/settingslib/R$string;->data_connection_gprs:I

    const-string v1, "G"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    move-object v0, v15

    move-object/from16 v4, v138

    move-object/from16 v159, v6

    move/from16 v6, v18

    move-object/from16 v160, v7

    move/from16 v7, v19

    move-object/from16 v161, v8

    move/from16 v8, v20

    move-object/from16 v162, v9

    move/from16 v9, v16

    move-object/from16 v163, v10

    move/from16 v10, v17

    invoke-direct/range {v0 .. v11}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v35, v138, v158

    sget v36, Lcom/android/settingslib/R$string;->data_connection_3_5g:I

    const-string v27, "H"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v26, v0

    move-object/from16 v30, v138

    invoke-direct/range {v26 .. v37}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v47, v138, v158

    sget v48, Lcom/android/settingslib/R$string;->data_connection_3_5g_plus:I

    const-string v39, "H+"

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v38, v11

    move-object/from16 v42, v138

    invoke-direct/range {v38 .. v49}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v71, v138, v158

    sget v72, Lcom/android/settingslib/R$string;->data_connection_4g:I

    const-string v63, "4G"

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    move-object/from16 v62, v10

    move-object/from16 v66, v138

    invoke-direct/range {v62 .. v73}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v83, v138, v158

    sget v84, Lcom/android/settingslib/R$string;->data_connection_4g_plus:I

    const-string v75, "4G+"

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    move-object/from16 v74, v9

    move-object/from16 v78, v138

    invoke-direct/range {v74 .. v85}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v8, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v16, v138, v158

    sget v17, Lcom/android/settingslib/R$string;->data_connection_lte:I

    const-string v2, "LTE"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object/from16 v5, v138

    move-object/from16 v164, v8

    move/from16 v8, v18

    move-object/from16 v165, v9

    move/from16 v9, v19

    move-object/from16 v166, v10

    move/from16 v10, v16

    move-object/from16 v167, v11

    move/from16 v11, v17

    invoke-direct/range {v1 .. v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    move-object/from16 v12, v164

    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v9, v138, v158

    sget v10, Lcom/android/settingslib/R$string;->data_connection_lte_plus:I

    const-string v1, "LTE+"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    move-object v0, v11

    move-object/from16 v168, v4

    move-object/from16 v4, v138

    move-object v12, v11

    move v11, v13

    invoke-direct/range {v0 .. v11}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v95, v138, v158

    sget v96, Lcom/android/settingslib/R$string;->data_connection_5ge_html:I

    const-string v87, "5Ge"

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    move-object/from16 v86, v0

    move-object/from16 v90, v138

    invoke-direct/range {v86 .. v97}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v119, v138, v158

    sget v120, Lcom/android/settingslib/R$string;->data_connection_5g:I

    const-string v111, "5G"

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    move-object/from16 v110, v1

    move-object/from16 v114, v138

    invoke-direct/range {v110 .. v121}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v131, v138, v158

    sget v132, Lcom/android/settingslib/R$string;->data_connection_5g_plus:I

    const-string v123, "5G_PLUS"

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    move-object/from16 v122, v2

    move-object/from16 v126, v138

    invoke-direct/range {v122 .. v133}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v3, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v155, v138, v158

    sget v156, Lcom/android/settingslib/R$string;->cell_data_off_content_description:I

    const-string v147, "DataDisabled"

    move-object/from16 v146, v3

    invoke-direct/range {v146 .. v157}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v4, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v155, v138, v158

    sget v156, Lcom/android/settingslib/R$string;->not_default_data_content_description:I

    const-string v147, "NotDefaultData"

    move-object/from16 v146, v4

    invoke-direct/range {v146 .. v157}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v143, v138, v158

    sget v144, Lcom/android/settingslib/R$string;->data_connection_carrier_wifi:I

    const-string v135, "CWF"

    const/16 v136, 0x0

    const/16 v137, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const/16 v142, 0x0

    move-object/from16 v134, v5

    invoke-direct/range {v134 .. v145}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIII)V

    sput-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    const-string v6, "carrier_network_change"

    move-object/from16 v7, v163

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "3g"

    move-object/from16 v7, v162

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "wfc"

    move-object/from16 v7, v161

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "unknown"

    move-object/from16 v7, v160

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "e"

    move-object/from16 v7, v159

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "1x"

    invoke-interface {v5, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "g"

    invoke-interface {v5, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "h"

    move-object/from16 v7, v168

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "h+"

    move-object/from16 v7, v167

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "4g"

    move-object/from16 v7, v166

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "4g+"

    move-object/from16 v7, v165

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "5ge"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lte"

    move-object/from16 v6, v164

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lte+"

    invoke-interface {v5, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5g"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5g_plus"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datadisable"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notdefaultdata"

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$drawable;->ic_wifi_call_strength_0:I

    aput v2, v1, v158

    sget v2, Lcom/android/settingslib/R$drawable;->ic_wifi_call_strength_1:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$drawable;->ic_wifi_call_strength_2:I

    const/4 v4, 0x2

    aput v2, v1, v4

    sget v2, Lcom/android/settingslib/R$drawable;->ic_wifi_call_strength_3:I

    const/4 v5, 0x3

    aput v2, v1, v5

    sget v2, Lcom/android/settingslib/R$drawable;->ic_wifi_call_strength_4:I

    const/4 v6, 0x4

    aput v2, v1, v6

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->WIFI_CALL_STRENGTH_ICONS:[I

    new-array v0, v0, [I

    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_0:I

    aput v1, v0, v158

    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_1:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_2:I

    aput v1, v0, v4

    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_3:I

    aput v1, v0, v5

    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_4:I

    aput v1, v0, v6

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    return-void
.end method
