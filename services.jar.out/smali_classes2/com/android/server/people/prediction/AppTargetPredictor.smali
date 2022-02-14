.class public Lcom/android/server/people/prediction/AppTargetPredictor;
.super Ljava/lang/Object;
.source "AppTargetPredictor.java"


# static fields
.field private static final UI_SURFACE_SHARE:Ljava/lang/String; = "share"


# instance fields
.field private final mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field final mCallingUserId:I

.field private final mDataManager:Lcom/android/server/people/data/DataManager;

.field private final mPredictionContext:Landroid/app/prediction/AppPredictionContext;

.field private final mUpdatePredictionsMethod:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionContext;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    iput-object p2, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    iput p4, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static create(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)Lcom/android/server/people/prediction/AppTargetPredictor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionContext;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/server/people/prediction/AppTargetPredictor;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/prediction/AppPredictionContext;->getUiSurface()Ljava/lang/String;

    move-result-object v0

    const-string v1, "share"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/people/prediction/ShareTargetPredictor;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/people/prediction/ShareTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/people/prediction/AppTargetPredictor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V

    return-object v0
.end method


# virtual methods
.method destroy()V
    .locals 0

    return-void
.end method

.method getDataManager()Lcom/android/server/people/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    return-object v0
.end method

.method getPredictionContext()Landroid/app/prediction/AppPredictionContext;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    return-object v0
.end method

.method public getUpdatePredictionsMethod()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public synthetic lambda$onAppTargetEvent$0$AppTargetPredictor(Landroid/app/prediction/AppTargetEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/people/prediction/AppTargetPredictor;->reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method public synthetic lambda$onSortAppTargets$1$AppTargetPredictor(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/prediction/AppTargetPredictor;->sortTargets(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;Landroid/app/prediction/AppTargetEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTargetId;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestPredictionUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSortAppTargets(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;Ljava/util/List;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method predictTargets()V
    .locals 0

    return-void
.end method

.method reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 0

    return-void
.end method

.method sortTargets(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method updatePredictions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
