.class final Lcom/android/server/people/PeopleService$LocalService;
.super Lcom/android/server/people/PeopleServiceInternal;
.source "PeopleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/PeopleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field private mSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Lcom/android/server/people/SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/people/PeopleService;


# direct methods
.method constructor <init>(Lcom/android/server/people/PeopleService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-direct {p0}, Lcom/android/server/people/PeopleServiceInternal;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    return-void
.end method

.method private invokePredictionCallback(Landroid/app/prediction/IPredictionCallback;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/IPredictionCallback;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Landroid/app/prediction/IPredictionCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to calling callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PeopleService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$notifyAppTargetEvent$0(Landroid/app/prediction/AppTargetEvent;Lcom/android/server/people/SessionInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/people/SessionInfo;->getPredictor()Lcom/android/server/people/prediction/AppTargetPredictor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->onAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method static synthetic lambda$notifyLaunchLocationShown$1(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/people/SessionInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/server/people/SessionInfo;->getPredictor()Lcom/android/server/people/prediction/AppTargetPredictor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/people/prediction/AppTargetPredictor;->onLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$registerPredictionUpdates$4(Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/people/SessionInfo;->addCallback(Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$requestPredictionUpdate$6(Lcom/android/server/people/SessionInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/people/SessionInfo;->getPredictor()Lcom/android/server/people/prediction/AppTargetPredictor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/people/prediction/AppTargetPredictor;->onRequestPredictionUpdate()V

    return-void
.end method

.method static synthetic lambda$unregisterPredictionUpdates$5(Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/people/SessionInfo;->removeCallback(Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method private runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/SessionInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/SessionInfo;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find the session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PeopleService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBackupPayload(I)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/DataManager;->getBackupPayload(I)[B

    move-result-object v0

    return-object v0
.end method

.method getSessionInfo(Landroid/app/prediction/AppPredictionSessionId;)Lcom/android/server/people/SessionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/SessionInfo;

    return-object v0
.end method

.method public synthetic lambda$onDestroyPredictionSession$7$PeopleService$LocalService(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/people/SessionInfo;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/people/SessionInfo;->onDestroy()V

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$sortAppTargets$2$PeopleService$LocalService(Landroid/app/prediction/IPredictionCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/PeopleService$LocalService;->invokePredictionCallback(Landroid/app/prediction/IPredictionCallback;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$sortAppTargets$3$PeopleService$LocalService(Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V
    .locals 3

    invoke-virtual {p3}, Lcom/android/server/people/SessionInfo;->getPredictor()Lcom/android/server/people/prediction/AppTargetPredictor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/prediction/AppTargetPredictor;->onSortAppTargets(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppTargetEvent;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2, p3}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    new-instance v1, Lcom/android/server/people/SessionInfo;

    iget-object v2, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v2}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/prediction/AppPredictionSessionId;->getUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v4}, Lcom/android/server/people/PeopleService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/server/people/SessionInfo;-><init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public pruneDataForUser(ILandroid/os/CancellationSignal;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/people/data/DataManager;->pruneDataForUser(ILandroid/os/CancellationSignal;)V

    return-void
.end method

.method public registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/IPredictionCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1

    sget-object v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda7;

    invoke-direct {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public restore(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/people/data/DataManager;->restore(I[B)V

    return-void
.end method

.method public sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda2;-><init>(Landroid/app/prediction/IPredictionCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method
