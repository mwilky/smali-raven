.class public final Lcom/android/settingslib/mobile/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field public static final CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ICON_NAME_TO_ICON:Ljava/util/HashMap;

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
.method public static constructor <clinit>()V
    .locals 29

    new-instance v6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget-object v7, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v0, 0x0

    aget v8, v7, v0

    const-string v1, "CARRIER_NETWORK_CHANGE"

    const v4, 0x7f1301dd

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v7

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "3G"

    const v4, 0x7f13026d

    const v5, 0x7f080452

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "WFC"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "Unknown"

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "E"

    const v4, 0x7f130277

    const v5, 0x7f08052a

    move-object v0, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v13, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "1X"

    const v4, 0x7f130276

    const v5, 0x7f080451

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v14, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "G"

    const v4, 0x7f130278

    const v5, 0x7f080538

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v14, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v15, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "H"

    const v4, 0x7f13026b

    const v5, 0x7f08055b

    move-object v0, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "H+"

    const v4, 0x7f13026c

    const v16, 0x7f08055c

    move-object v0, v5

    move-object/from16 v17, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "4G"

    const v4, 0x7f13026e

    const v16, 0x7f080455

    move-object v0, v5

    move-object/from16 v18, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "4G+"

    const v4, 0x7f130271

    const v16, 0x7f080456

    move-object v0, v5

    move-object/from16 v19, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "LTE"

    const v4, 0x7f130279

    const v16, 0x7f08057b

    move-object v0, v5

    move-object/from16 v20, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "LTE+"

    const v4, 0x7f13027a

    const v16, 0x7f08057c

    move-object v0, v5

    move-object/from16 v21, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "4G LTE"

    const v4, 0x7f13026f

    const v16, 0x7f080453

    move-object v0, v5

    move-object/from16 v22, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "4G LTE+"

    const v4, 0x7f130270

    const v16, 0x7f080454

    move-object v0, v5

    move-object/from16 v23, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "5Ge"

    const v4, 0x7f130274

    const v16, 0x7f080457

    move-object v0, v5

    move-object/from16 v24, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "5G"

    const v4, 0x7f130272

    const v16, 0x7f080458

    move-object v0, v5

    move-object/from16 v25, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "5G_PLUS"

    const v4, 0x7f130273

    const v16, 0x7f080459

    move-object v0, v5

    move-object/from16 v26, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "DataDisabled"

    const v4, 0x7f1301e1

    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v27, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "NotDefaultData"

    const v4, 0x7f1304f4

    move-object v0, v5

    move-object/from16 v28, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v16, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "CWF"

    const v4, 0x7f130275

    const v5, 0x7f080483

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIII)V

    sput-object v16, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/HashMap;

    const-string v1, "carrier_network_change"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "3g"

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "wfc"

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "e"

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1x"

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "g"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h"

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h+"

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "4g"

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "4g+"

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "4glte"

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "4glte+"

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5ge"

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lte"

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lte+"

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5g"

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5g_plus"

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "datadisable"

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "notdefaultdata"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->WIFI_CALL_STRENGTH_ICONS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0806af
        0x7f0806b0
        0x7f0806b1
        0x7f0806b2
        0x7f0806b3
    .end array-data

    :array_1
    .array-data 4
        0x7f080598
        0x7f080599
        0x7f08059a
        0x7f08059b
        0x7f08059c
    .end array-data
.end method
