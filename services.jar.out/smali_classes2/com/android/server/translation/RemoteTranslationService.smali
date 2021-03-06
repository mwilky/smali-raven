.class final Lcom/android/server/translation/RemoteTranslationService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteTranslationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/translation/ITranslationService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_IDLE_UNBIND_MS:J = 0x0L

.field private static final TIMEOUT_REQUEST_MS:I = 0x1388


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIdleUnbindTimeoutMs:J

.field private final mRemoteCallback:Landroid/os/IBinder;

.field private final mRequestTimeoutMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/translation/RemoteTranslationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IZLandroid/os/IBinder;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.translation.TranslationService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    if-eqz p4, :cond_0

    const/high16 v0, 0x400000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    sget-object v7, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mIdleUnbindTimeoutMs:J

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mRequestTimeoutMs:I

    iput-object p2, p0, Lcom/android/server/translation/RemoteTranslationService;->mComponentName:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/server/translation/RemoteTranslationService;->mRemoteCallback:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/translation/RemoteTranslationService;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method static synthetic lambda$onSessionCreated$0(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;Landroid/service/translation/ITranslationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Landroid/service/translation/ITranslationService;->onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static synthetic lambda$onTranslationCapabilitiesRequest$1(IILandroid/os/ResultReceiver;Landroid/service/translation/ITranslationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Landroid/service/translation/ITranslationService;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method protected getAutoDisconnectTimeoutMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mIdleUnbindTimeoutMs:J

    return-wide v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    check-cast p1, Landroid/service/translation/ITranslationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/translation/RemoteTranslationService;->onServiceConnectionStatusChanged(Landroid/service/translation/ITranslationService;Z)V

    return-void
.end method

.method protected onServiceConnectionStatusChanged(Landroid/service/translation/ITranslationService;Z)V
    .locals 4

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mRemoteCallback:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Landroid/service/translation/ITranslationService;->onConnected(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/service/translation/ITranslationService;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/translation/RemoteTranslationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling onServiceConnectionStatusChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .locals 1

    new-instance v0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, v0}, Lcom/android/server/translation/RemoteTranslationService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V
    .locals 1

    new-instance v0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda0;-><init>(IILandroid/os/ResultReceiver;)V

    invoke-virtual {p0, v0}, Lcom/android/server/translation/RemoteTranslationService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method
