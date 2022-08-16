.class public final Lcom/google/android/systemui/elmyra/actions/DismissTimer;
.super Lcom/google/android/systemui/elmyra/actions/DeskClockAction;
.source "DismissTimer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final createDismissIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.DISMISS_TIMER"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAlertAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.deskclock.action.TIMER_ALERT"

    return-object p0
.end method

.method public final getDoneAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.deskclock.action.TIMER_DONE"

    return-object p0
.end method
