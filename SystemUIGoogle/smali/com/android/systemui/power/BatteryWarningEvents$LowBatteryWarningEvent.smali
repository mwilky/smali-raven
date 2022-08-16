.class public final enum Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;
.super Ljava/lang/Enum;
.source "BatteryWarningEvents.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum LOW_BATTERY_NOTIFICATION:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum LOW_BATTERY_NOTIFICATION_CANCEL:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum LOW_BATTERY_NOTIFICATION_SETTINGS:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum LOW_BATTERY_NOTIFICATION_TURN_ON:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum SAVER_CONFIRM_CANCEL:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum SAVER_CONFIRM_DIALOG:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum SAVER_CONFIRM_DISMISS:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum SAVER_CONFIRM_OK:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    const-string v1, "LOW_BATTERY_NOTIFICATION"

    const/4 v2, 0x0

    const/16 v3, 0x418

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    new-instance v1, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    const-string v3, "LOW_BATTERY_NOTIFICATION_TURN_ON"

    const/4 v4, 0x1

    const/16 v5, 0x419

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION_TURN_ON:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    new-instance v3, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    const-string v5, "LOW_BATTERY_NOTIFICATION_CANCEL"

    const/4 v6, 0x2

    const/16 v7, 0x41a

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION_CANCEL:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    new-instance v5, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    const-string v7, "LOW_BATTERY_NOTIFICATION_SETTINGS"

    const/4 v8, 0x3

    const/16 v9, 0x41b

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION_SETTINGS:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    new-instance v7, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    const-string v9, "SAVER_CONFIRM_DIALOG"

    const/4 v10, 0x4

    const/16 v11, 0x41c

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_DIALOG:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    new-instance v9, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    const-string v11, "SAVER_CONFIRM_OK"

    const/4 v12, 0x5

    const/16 v13, 0x41d

    invoke-direct {v9, v11, v12, v13}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_OK:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    new-instance v11, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    const-string v13, "SAVER_CONFIRM_CANCEL"

    const/4 v14, 0x6

    const/16 v15, 0x41e

    invoke-direct {v11, v13, v14, v15}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_CANCEL:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    new-instance v13, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    const-string v15, "SAVER_CONFIRM_DISMISS"

    const/4 v14, 0x7

    const/16 v12, 0x41f

    invoke-direct {v13, v15, v14, v12}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_DISMISS:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->$VALUES:[Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->$VALUES:[Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->mId:I

    return p0
.end method
