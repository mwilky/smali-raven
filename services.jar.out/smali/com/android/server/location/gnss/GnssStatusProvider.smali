.class public Lcom/android/server/location/gnss/GnssStatusProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "GnssStatusProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssStatusListener;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;"
    }
.end annotation


# instance fields
.field private final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field private mIsNavigating:Z

.field private final mLogger:Lcom/android/server/location/injector/LocationUsageLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;)V

    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V

    return-void
.end method

.method static synthetic lambda$onReportFirstFix$0(ILandroid/location/IGnssStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/location/IGnssStatusListener;->onFirstFix(I)V

    return-void
.end method

.method static synthetic lambda$onReportSvStatus$1(Landroid/location/GnssStatus;Landroid/location/IGnssStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(Landroid/location/GnssStatus;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssStatusListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method public bridge synthetic addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .locals 0

    check-cast p2, Landroid/location/IGnssStatusListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssStatusListener;)V

    return-void
.end method

.method public synthetic lambda$onReportSvStatus$2$GnssStatusProvider(Landroid/location/GnssStatus;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;-><init>(Landroid/location/GnssStatus;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHalRestarted()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssStatusProvider;->resetService()V

    return-void
.end method

.method protected onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method protected bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0

    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method protected onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method protected bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0

    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onReportFirstFix(I)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusProvider;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public onReportStatus(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    nop

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssStatusProvider;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssStatusProvider;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReportSvStatus(Landroid/location/GnssStatus;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssStatusProvider;Landroid/location/GnssStatus;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusProvider;->deliverToListeners(Ljava/util/function/Function;)V

    return-void
.end method

.method protected bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ">;)Z"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssManager"

    const-string/jumbo v1, "starting gnss status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected unregisterWithService()V
    .locals 2

    sget-boolean v0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssManager"

    const-string/jumbo v1, "stopping gnss status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
