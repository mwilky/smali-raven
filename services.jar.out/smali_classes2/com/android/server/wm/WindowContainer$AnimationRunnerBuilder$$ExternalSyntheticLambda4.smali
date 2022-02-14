.class public final synthetic Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$1:Lcom/android/server/wm/TaskDisplayArea;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/TaskDisplayArea;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->lambda$setTaskBackgroundColor$0(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method
