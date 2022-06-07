.class Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;
.super Ljava/lang/Object;
.source "WindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationRunnerBuilder"
.end annotation


# instance fields
.field private final mOnAnimationCancelled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnAnimationFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationCancelled:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;-><init>(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->setTaskBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->hideInsetSourceViewOverflows(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)Lcom/android/server/wm/WindowContainer$IAnimationStarter;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->build()Lcom/android/server/wm/WindowContainer$IAnimationStarter;

    move-result-object v0

    return-object v0
.end method

.method private build()Lcom/android/server/wm/WindowContainer$IAnimationStarter;
    .locals 1

    new-instance v0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)V

    return-object v0
.end method

.method private hideInsetSourceViewOverflows(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InsetsSourceProvider;->setCropToProvidingInsetsBounds(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    new-instance v5, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;Lcom/android/server/wm/InsetsSourceProvider;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$setTaskBackgroundColor$0(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->clearBackgroundColor()V

    :cond_0
    return-void
.end method

.method private setTaskBackgroundColor(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->setBackgroundColor(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/TaskDisplayArea;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationCancelled:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$build$2$WindowContainer$AnimationRunnerBuilder(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    sget-object v1, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$build$3$WindowContainer$AnimationRunnerBuilder()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationCancelled:Ljava/util/List;

    sget-object v1, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$build$4$WindowContainer$AnimationRunnerBuilder(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/AnimationAdapter;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    new-instance v5, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)V

    new-instance v6, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)V

    move-object v2, p2

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public synthetic lambda$hideInsetSourceViewOverflows$1$WindowContainer$AnimationRunnerBuilder(Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InsetsSourceProvider;->removeCropToProvidingInsetsBounds(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
