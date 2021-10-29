.class public Lcom/google/android/systemui/gamedashboard/FpsController;
.super Ljava/lang/Object;
.source "FpsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/gamedashboard/FpsController$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/google/android/systemui/gamedashboard/FpsController$Callback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Landroid/view/SurfaceControlFpsListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/gamedashboard/FpsController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/FpsController$1;-><init>(Lcom/google/android/systemui/gamedashboard/FpsController;)V

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/FpsController;->mListener:Landroid/view/SurfaceControlFpsListener;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FpsController;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/FpsController;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FpsController;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/FpsController;)Lcom/google/android/systemui/gamedashboard/FpsController$Callback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FpsController;->mCallback:Lcom/google/android/systemui/gamedashboard/FpsController$Callback;

    return-object p0
.end method


# virtual methods
.method public register(ILcom/google/android/systemui/gamedashboard/FpsController$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FpsController;->mListener:Landroid/view/SurfaceControlFpsListener;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControlFpsListener;->register(I)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/FpsController;->mCallback:Lcom/google/android/systemui/gamedashboard/FpsController$Callback;

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FpsController;->mCallback:Lcom/google/android/systemui/gamedashboard/FpsController$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FpsController;->mListener:Landroid/view/SurfaceControlFpsListener;

    invoke-virtual {v0}, Landroid/view/SurfaceControlFpsListener;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/FpsController;->mCallback:Lcom/google/android/systemui/gamedashboard/FpsController$Callback;

    :cond_0
    return-void
.end method
