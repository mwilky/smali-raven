.class Lcom/android/server/companion/CompanionDeviceServiceConnector;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "CompanionDeviceServiceConnector.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/companion/ICompanionDeviceService;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile sServiceThread:Lcom/android/server/ServiceThread;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private mListener:Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$XDBz48xhupV3Rp362pShmd6DfcQ(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->lambda$postOnDeviceAppeared$0(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sNeZKiIS_fO2zUJIY6SZj_-G5xI(Lcom/android/server/companion/CompanionDeviceServiceConnector;Landroid/companion/ICompanionDeviceService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->lambda$postUnbind$2(Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7y2R5rlIaWn16ZdEJpPlgNxGio(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->lambda$postOnDeviceDisappeared$1(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/ComponentName;I)V
    .locals 6

    invoke-static {p3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput p2, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mUserId:I

    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getServiceThread()Lcom/android/server/ServiceThread;
    .locals 4

    sget-object v0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "companion-device-service-connector"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    sget-object v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    return-object v0
.end method

.method public static synthetic lambda$postOnDeviceAppeared$0(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static synthetic lambda$postOnDeviceDisappeared$1(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method private synthetic lambda$postUnbind$2(Landroid/companion/ICompanionDeviceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;ILandroid/content/ComponentName;Z)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .locals 1

    if-eqz p3, :cond_0

    const/high16 p3, 0x10000000

    goto :goto_0

    :cond_0
    const/high16 p3, 0x10000

    :goto_0
    new-instance v0, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;I)V

    return-object v0
.end method


# virtual methods
.method public binderAsInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;
    .locals 0

    invoke-static {p1}, Landroid/companion/ICompanionDeviceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->binderAsInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object p0

    return-object p0
.end method

.method public binderDied()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mListener:Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mUserId:I

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;->onBindingDied(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getJobHandler()Landroid/os/Handler;
    .locals 0

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->onBindingDied(Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/companion/ICompanionDeviceService;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    check-cast p1, Landroid/companion/ICompanionDeviceService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->onServiceConnectionStatusChanged(Landroid/companion/ICompanionDeviceService;Z)V

    return-void
.end method

.method public postOnDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .locals 1

    new-instance v0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda1;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public postOnDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .locals 1

    new-instance v0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda2;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public postUnbind()V
    .locals 1

    new-instance v0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceServiceConnector;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public setListener(Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mListener:Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;

    return-void
.end method
