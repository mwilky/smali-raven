.class Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
.super Ljava/lang/Object;
.source "SimpleSurfaceAnimatable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SimpleSurfaceAnimatable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mAnimationLeashFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationLeashParent:Landroid/view/SurfaceControl;

.field private mCommitTransactionRunnable:Ljava/lang/Runnable;

.field private mHeight:I

.field private mOnAnimationFinished:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAnimationLeashLost:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mParentSurfaceControl:Landroid/view/SurfaceControl;

.field private mPendingTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldDeferAnimationFinish:Z

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/BiConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/SimpleSurfaceAnimatable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable;-><init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;Lcom/android/server/wm/SimpleSurfaceAnimatable$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mSurfaceControl cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mCommitTransactionRunnable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mAnimationLeashFactory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mPendingTransactionSupplier cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public setAnimationLeashSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public setCommitTransactionRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    return-object p0
.end method

.method public setOnAnimationLeashCreated(Ljava/util/function/BiConsumer;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    return-object p0
.end method

.method public setOnAnimationLeashLost(Ljava/util/function/Consumer;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public setParentSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public setPendingTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public setShouldDeferAnimationFinish(ZLjava/util/function/Consumer;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    iput-object p2, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    return-object p0
.end method
