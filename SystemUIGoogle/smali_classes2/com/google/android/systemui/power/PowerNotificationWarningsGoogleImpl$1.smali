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
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "plugged"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-string v2, "health"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    move v0, v1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlugged: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | isOverheated: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | defenderEnabled: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-boolean v2, v2, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "PowerNotificationWarningsGoogleImpl"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-boolean p2, p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    if-nez p2, :cond_2

    iput-boolean v1, p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    invoke-static {p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$000(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-boolean p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$100(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-boolean p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$100(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V

    goto :goto_1

    :cond_4
    const-string p2, "PNW.defenderResumeCharging"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-static {p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$200(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-static {p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$200(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object p2, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;->BATTERY_DEFENDER_BYPASS_LIMIT:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-static {p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->access$300(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->NOTIFICATION_ID:I

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v0, "battery_defender"

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_6
    :goto_1
    return-void
.end method
