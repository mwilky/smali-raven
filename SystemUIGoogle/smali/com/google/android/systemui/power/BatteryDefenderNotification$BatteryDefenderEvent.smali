.class final enum Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;
.super Ljava/lang/Enum;
.source "BatteryDefenderNotification.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/power/BatteryDefenderNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BatteryDefenderEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

.field public static final enum BATTERY_DEFENDER_BYPASS_LIMIT:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

.field public static final enum BATTERY_DEFENDER_BYPASS_LIMIT_FOR_TIPS:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

.field public static final enum BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmId(Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->mId:I

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    const-string v1, "BATTERY_DEFENDER_NOTIFICATION"

    const/4 v2, 0x0

    const/16 v3, 0x36c

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    new-instance v1, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    const-string v3, "BATTERY_DEFENDER_BYPASS_LIMIT"

    const/4 v4, 0x1

    const/16 v5, 0x36d

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->BATTERY_DEFENDER_BYPASS_LIMIT:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    new-instance v3, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    const-string v5, "BATTERY_DEFENDER_BYPASS_LIMIT_FOR_TIPS"

    const/4 v6, 0x2

    const/16 v7, 0x36e

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->BATTERY_DEFENDER_BYPASS_LIMIT_FOR_TIPS:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->$VALUES:[Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

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

    iput p3, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->$VALUES:[Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    invoke-virtual {v0}, [Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->mId:I

    return p0
.end method
