.class Lcom/google/android/systemui/gamedashboard/FpsController$1;
.super Landroid/view/SurfaceControlFpsListener;
.source "FpsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/FpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/FpsController;


# direct methods
.method public static synthetic $r8$lambda$GgxXnIJg1UxDbPg9sBrt_dHDnFE(Lcom/google/android/systemui/gamedashboard/FpsController$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/FpsController$1;->lambda$onFpsReported$0(F)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/gamedashboard/FpsController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FpsController$1;->this$0:Lcom/google/android/systemui/gamedashboard/FpsController;

    invoke-direct {p0}, Landroid/view/SurfaceControlFpsListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFpsReported$0(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FpsController$1;->this$0:Lcom/google/android/systemui/gamedashboard/FpsController;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/FpsController;->access$100(Lcom/google/android/systemui/gamedashboard/FpsController;)Lcom/google/android/systemui/gamedashboard/FpsController$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FpsController$1;->this$0:Lcom/google/android/systemui/gamedashboard/FpsController;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/FpsController;->access$100(Lcom/google/android/systemui/gamedashboard/FpsController;)Lcom/google/android/systemui/gamedashboard/FpsController$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/systemui/gamedashboard/FpsController$Callback;->onFpsUpdated(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFpsReported(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FpsController$1;->this$0:Lcom/google/android/systemui/gamedashboard/FpsController;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/FpsController;->access$000(Lcom/google/android/systemui/gamedashboard/FpsController;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/gamedashboard/FpsController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/gamedashboard/FpsController$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/FpsController$1;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
