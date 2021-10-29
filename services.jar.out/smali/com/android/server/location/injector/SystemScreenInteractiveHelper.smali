.class public Lcom/android/server/location/injector/SystemScreenInteractiveHelper;
.super Lcom/android/server/location/injector/ScreenInteractiveHelper;
.source "SystemScreenInteractiveHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mIsInteractive:Z

.field private mReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/injector/ScreenInteractiveHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isInteractive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    return v0
.end method

.method onScreenInteractiveChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->notifyScreenInteractiveChanged(Z)V

    return-void
.end method

.method public onSystemReady()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;-><init>(Lcom/android/server/location/injector/SystemScreenInteractiveHelper;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    return-void
.end method
