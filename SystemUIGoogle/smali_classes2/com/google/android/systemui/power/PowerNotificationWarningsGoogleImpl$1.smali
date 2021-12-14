.class Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotificationWarningsGoogleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-static {p0, p2}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$000(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p2, "PNW.defenderResumeCharging"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    sget-object p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;->BATTERY_DEFENDER_BYPASS_LIMIT:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;

    invoke-static {p0, p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$100(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;)V

    goto :goto_0

    :cond_1
    const-string p2, "PNW.defenderResumeCharging.settings"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    sget-object p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;->BATTERY_DEFENDER_BYPASS_LIMIT_FOR_TIPS:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;

    invoke-static {p0, p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$100(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;)V

    :cond_2
    :goto_0
    return-void
.end method
