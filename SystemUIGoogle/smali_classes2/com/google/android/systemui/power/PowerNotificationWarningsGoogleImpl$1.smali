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

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PowerNotificationWarningsGoogleImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-static {p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$000(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->notifyBatteryStatusChanged(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-static {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$100(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)Lcom/google/android/systemui/power/BatteryDefenderNotification;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->dispatchIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
