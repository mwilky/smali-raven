.class public abstract Lcom/google/android/systemui/columbus/actions/DeskClockAction;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "DeskClockAction.kt"


# instance fields
.field public alertFiring:Z

.field public final alertReceiver:Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;

.field public receiverRegistered:Z

.field public final silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Landroid/app/IActivityManager;)V
    .locals 2

    const-string v0, "Columbus/DeskClockAct"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    new-instance p1, Lcom/google/android/systemui/columbus/actions/DeskClockAction$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V

    new-instance v1, Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;-><init>(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertReceiver:Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;

    new-instance v1, Lcom/google/android/systemui/columbus/actions/DeskClockAction$userSwitchCallback$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction$userSwitchCallback$1;-><init>(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    :try_start_0
    invoke-interface {p3, v1, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to register user switch observer"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->updateBroadcastReceiver()V

    return-void
.end method


# virtual methods
.method public abstract createDismissIntent()Landroid/content/Intent;
.end method

.method public abstract getAlertAction()Ljava/lang/String;
.end method

.method public abstract getDoneAction()Ljava/lang/String;
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->createDismissIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android-app://"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Columbus/DeskClockAct"

    const-string v1, "Failed to dismiss alert"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertFiring:Z

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [receiverRegistered -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->receiverRegistered:Z

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateBroadcastReceiver()V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertFiring:Z

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->receiverRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertReceiver:Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->receiverRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->getAlertAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->getDoneAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertReceiver:Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v5, "com.android.systemui.permission.SEND_ALERT_BROADCASTS"

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->receiverRegistered:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertFiring:Z

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method
