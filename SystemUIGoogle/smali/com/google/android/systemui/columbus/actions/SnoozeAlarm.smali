.class public final Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;
.super Lcom/google/android/systemui/columbus/actions/DeskClockAction;
.source "SnoozeAlarm.kt"


# instance fields
.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Landroid/app/IActivityManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Landroid/app/IActivityManager;)V

    const-string p1, "Columbus/SnoozeAlarm"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createDismissIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.SNOOZE_ALARM"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAlertAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.deskclock.action.ALARM_ALERT"

    return-object p0
.end method

.method public final getDoneAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.deskclock.action.ALARM_DONE"

    return-object p0
.end method

.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;->tag:Ljava/lang/String;

    return-object p0
.end method
