.class public final Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteInlineSuggestionRenderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$InlineSuggestionRenderCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
        "Landroid/service/autofill/IInlineSuggestionRenderService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteInlineSuggestionRenderService"


# instance fields
.field private final mIdleUnbindTimeoutMs:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/autofill/RemoteInlineSuggestionRenderService$InlineSuggestionRenderCallbacks;ZZ)V
    .locals 10

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz p6, :cond_0

    const/high16 v0, 0x400000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    const/4 v9, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    const-wide/16 v0, 0x0

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->mIdleUnbindTimeoutMs:J

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->ensureBound()V

    return-void
.end method

.method public static getServiceComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 4

    invoke-static {p0, p1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getServiceInfo(Landroid/content/Context;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceComponentName(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteInlineSuggestionRenderService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method private static getServiceInfo(Landroid/content/Context;I)Landroid/content/pm/ServiceInfo;
    .locals 9

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInlineSuggestionRenderService"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v3, "no external services package!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.autofill.InlineSuggestionRenderService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x84

    invoke-virtual {v4, v3, v5, p1}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v5, v2

    goto :goto_0

    :cond_1
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_0
    if-eqz v4, :cond_4

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_INLINE_SUGGESTION_RENDER_SERVICE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not require permission "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    return-object v5

    :cond_4
    :goto_1
    const-string v6, "No valid components found."

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method static synthetic lambda$destroySuggestionViews$2(IILandroid/service/autofill/IInlineSuggestionRenderService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/service/autofill/IInlineSuggestionRenderService;->destroySuggestionViews(II)V

    return-void
.end method

.method static synthetic lambda$getInlineSuggestionsRendererInfo$1(Landroid/os/RemoteCallback;Landroid/service/autofill/IInlineSuggestionRenderService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/service/autofill/IInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic lambda$renderSuggestion$0(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;IIILandroid/service/autofill/IInlineSuggestionRenderService;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/service/autofill/IInlineSuggestionRenderService;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    return-void
.end method


# virtual methods
.method public destroySuggestionViews(II)V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public ensureBound()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->scheduleBind()V

    return-void
.end method

.method public getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionRenderService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionRenderService;
    .locals 1

    invoke-static {p1}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionRenderService;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutIdleBindMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getTimeoutIdleBindMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->scheduleUnbind()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->handleOnConnectedStateChanged(Z)V

    return-void
.end method

.method public renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 10

    new-instance v9, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method
