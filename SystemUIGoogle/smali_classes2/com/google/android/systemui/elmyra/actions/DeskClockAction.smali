.class abstract Lcom/google/android/systemui/elmyra/actions/DeskClockAction;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source "DeskClockAction.java"


# instance fields
.field private mAlertFiring:Z

.field private final mAlertReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private final mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;


# direct methods
.method public static synthetic $r8$lambda$XwHnv5Zfo02OrpRS-T-dY4_MUss(Lcom/google/android/systemui/elmyra/actions/DeskClockAction;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;-><init>(Lcom/google/android/systemui/elmyra/actions/DeskClockAction;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->updateBroadcastReceiver()V

    new-instance p1, Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "assist_gesture_silence_alerts_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/actions/DeskClockAction;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/elmyra/actions/DeskClockAction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertFiring:Z

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->updateBroadcastReceiver()V

    return-void
.end method

.method private updateBroadcastReceiver()V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertFiring:Z

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mReceiverRegistered:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mReceiverRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "assist_gesture_silence_alerts_enabled"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    :cond_1
    if-eqz v0, :cond_2

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->getAlertAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->getDoneAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const-string v9, "com.android.systemui.permission.SEND_ALERT_BROADCASTS"

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mReceiverRegistered:Z

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    return-void
.end method


# virtual methods
.method protected abstract createDismissIntent()Landroid/content/Intent;
.end method

.method protected abstract getAlertAction()Ljava/lang/String;
.end method

.method protected abstract getDoneAction()Ljava/lang/String;
.end method

.method public isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertFiring:Z

    return p0
.end method

.method public onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->createDismissIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REFERRER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android-app://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Elmyra/DeskClockAction"

    const-string v1, "Failed to dismiss alert"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertFiring:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mReceiverRegistered -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mReceiverRegistered:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
