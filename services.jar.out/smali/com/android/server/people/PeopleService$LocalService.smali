.class final Lcom/android/server/people/PeopleService$LocalService;
.super Lcom/android/server/people/PeopleServiceInternal;
.source "PeopleService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/PeopleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public mSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Lcom/android/server/people/SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/people/PeopleService;


# direct methods
.method public static synthetic $r8$lambda$HQneSwit7rAxp-xdNcEMPvFKiqs(Lcom/android/server/people/PeopleService$LocalService;Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/PeopleService$LocalService;->lambda$onDestroyPredictionSession$7(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Soypu26D3N5cN6U93d7HKnnvSL8(Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/people/PeopleService$LocalService;->lambda$requestPredictionUpdate$6(Lcom/android/server/people/SessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bTa4W1IEomWi7CyVmIqicrn4BL4(Lcom/android/server/people/PeopleService$LocalService;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/PeopleService$LocalService;->lambda$sortAppTargets$3(Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eYQdqkixRWCMzE_4SN8ZNyDkFmU(Landroid/app/prediction/AppTargetEvent;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/people/PeopleService$LocalService;->lambda$notifyAppTargetEvent$0(Landroid/app/prediction/AppTargetEvent;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iu-MRQKF4hNJqU_uYSnVeZ9XB8g(Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/people/PeopleService$LocalService;->lambda$unregisterPredictionUpdates$5(Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rYhNF8LHAnZ7xyh5cFDbyg6t-6I(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/people/PeopleService$LocalService;->lambda$notifyLaunchLocationShown$1(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2JMVhiEbG6f9ZHmKJDwLfEhMAQ(Lcom/android/server/people/PeopleService$LocalService;Landroid/app/prediction/IPredictionCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/PeopleService$LocalService;->lambda$sortAppTargets$2(Landroid/app/prediction/IPredictionCallback;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$thslYAyf9g6VC3M1YkISkLC7ybE(Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/people/PeopleService$LocalService;->lambda$registerPredictionUpdates$4(Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/PeopleService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-direct {p0}, Lcom/android/server/people/PeopleServiceInternal;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    return-void
.end method

.method public static synthetic lambda$notifyAppTargetEvent$0(Landroid/app/prediction/AppTargetEvent;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/server/people/SessionInfo;->getPredictor()Lcom/android/server/people/prediction/AppTargetPredictor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->onAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method public static synthetic lambda$notifyLaunchLocationShown$1(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/server/people/SessionInfo;->getPredictor()Lcom/android/server/people/prediction/AppTargetPredictor;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/server/people/prediction/AppTargetPredictor;->onLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onDestroyPredictionSession$7(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/server/people/SessionInfo;->onDestroy()V

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$registerPredictionUpdates$4(Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/people/SessionInfo;->addCallback(Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public static synthetic lambda$requestPredictionUpdate$6(Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/people/SessionInfo;->getPredictor()Lcom/android/server/people/prediction/AppTargetPredictor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->onRequestPredictionUpdate()V

    return-void
.end method

.method private synthetic lambda$sortAppTargets$2(Landroid/app/prediction/IPredictionCallback;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/PeopleService$LocalService;->invokePredictionCallback(Landroid/app/prediction/IPredictionCallback;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$sortAppTargets$3(Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V
    .locals 1

    invoke-virtual {p3}, Lcom/android/server/people/SessionInfo;->getPredictor()Lcom/android/server/people/prediction/AppTargetPredictor;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p3, p1, v0}, Lcom/android/server/people/prediction/AppTargetPredictor;->onSortAppTargets(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$unregisterPredictionUpdates$5(Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/people/SessionInfo;->removeCallback(Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method


# virtual methods
.method public getBackupPayload(I)[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getBackupPayload(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getSessionInfo(Landroid/app/prediction/AppPredictionSessionId;)Lcom/android/server/people/SessionInfo;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/SessionInfo;

    return-object p0
.end method

.method public final invokePredictionCallback(Landroid/app/prediction/IPredictionCallback;Ljava/util/List;)V
    .locals 0
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
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p1, p0}, Landroid/app/prediction/IPredictionCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to calling callback"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PeopleService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda6;-><init>(Landroid/app/prediction/AppTargetEvent;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p3}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    new-instance v1, Lcom/android/server/people/SessionInfo;

    iget-object v2, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v2}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/prediction/AppPredictionSessionId;->getUserId()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/server/people/SessionInfo;-><init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public pruneDataForUser(ILandroid/os/CancellationSignal;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->pruneDataForUser(ILandroid/os/CancellationSignal;)V

    return-void
.end method

.method public registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public restore(I[B)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->restore(I[B)V

    return-void
.end method

.method public final runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/SessionInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/SessionInfo;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find the session: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PeopleService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method
