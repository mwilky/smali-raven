.class final enum Lcom/android/server/vibrator/Vibration$Status;
.super Ljava/lang/Enum;
.source "Vibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/Vibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/vibrator/Vibration$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FINISHED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_ALARM:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_RINGTONE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_UNKNOWN_VIBRATION:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum RUNNING:Lcom/android/server/vibrator/Vibration$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v1, Lcom/android/server/vibrator/Vibration$Status;

    const-string v3, "FINISHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v3, Lcom/android/server/vibrator/Vibration$Status;

    const-string v5, "FINISHED_UNEXPECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/vibrator/Vibration$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v5, Lcom/android/server/vibrator/Vibration$Status;

    const-string v7, "FORWARDED_TO_INPUT_DEVICES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/vibrator/Vibration$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v7, Lcom/android/server/vibrator/Vibration$Status;

    const-string v9, "CANCELLED_BINDER_DIED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v9, Lcom/android/server/vibrator/Vibration$Status;

    const-string v11, "CANCELLED_BY_SCREEN_OFF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v11, Lcom/android/server/vibrator/Vibration$Status;

    const-string v13, "CANCELLED_BY_SETTINGS_UPDATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v13, Lcom/android/server/vibrator/Vibration$Status;

    const-string v15, "CANCELLED_BY_USER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v15, Lcom/android/server/vibrator/Vibration$Status;

    const-string v14, "CANCELLED_BY_UNKNOWN_REASON"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    const-string v12, "CANCELLED_SUPERSEDED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v12, Lcom/android/server/vibrator/Vibration$Status;

    const-string v10, "IGNORED_ERROR_APP_OPS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v10, Lcom/android/server/vibrator/Vibration$Status;

    const-string v8, "IGNORED_ERROR_CANCELLING"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v8, Lcom/android/server/vibrator/Vibration$Status;

    const-string v6, "IGNORED_ERROR_SCHEDULING"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v6, Lcom/android/server/vibrator/Vibration$Status;

    const-string v4, "IGNORED_ERROR_TOKEN"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v4, Lcom/android/server/vibrator/Vibration$Status;

    const-string v2, "IGNORED_APP_OPS"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v2, Lcom/android/server/vibrator/Vibration$Status;

    const-string v6, "IGNORED_BACKGROUND"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v6, Lcom/android/server/vibrator/Vibration$Status;

    const-string v4, "IGNORED_UNKNOWN_VIBRATION"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNKNOWN_VIBRATION:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v4, Lcom/android/server/vibrator/Vibration$Status;

    const-string v2, "IGNORED_UNSUPPORTED"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v2, Lcom/android/server/vibrator/Vibration$Status;

    const-string v6, "IGNORED_FOR_ALARM"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ALARM:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v6, Lcom/android/server/vibrator/Vibration$Status;

    const-string v4, "IGNORED_FOR_EXTERNAL"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v4, Lcom/android/server/vibrator/Vibration$Status;

    const-string v2, "IGNORED_FOR_ONGOING"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v2, Lcom/android/server/vibrator/Vibration$Status;

    const-string v6, "IGNORED_FOR_POWER"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v6, Lcom/android/server/vibrator/Vibration$Status;

    const-string v4, "IGNORED_FOR_RINGER_MODE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v2, Lcom/android/server/vibrator/Vibration$Status;

    const-string v4, "IGNORED_FOR_RINGTONE"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_RINGTONE:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v4, Lcom/android/server/vibrator/Vibration$Status;

    const-string v6, "IGNORED_FOR_SETTINGS"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    new-instance v2, Lcom/android/server/vibrator/Vibration$Status;

    const-string v6, "IGNORED_SUPERSEDED"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    const/16 v4, 0x1a

    new-array v4, v4, [Lcom/android/server/vibrator/Vibration$Status;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v2, v4, v0

    sput-object v4, Lcom/android/server/vibrator/Vibration$Status;->$VALUES:[Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 1

    const-class v0, Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/Vibration$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/server/vibrator/Vibration$Status;
    .locals 1

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->$VALUES:[Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v0}, [Lcom/android/server/vibrator/Vibration$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/vibrator/Vibration$Status;

    return-object v0
.end method
