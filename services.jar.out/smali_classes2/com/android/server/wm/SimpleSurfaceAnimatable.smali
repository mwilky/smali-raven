.class public Lcom/android/server/wm/SimpleSurfaceAnimatable;
.super Ljava/lang/Object;
.source "SimpleSurfaceAnimatable.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    }
.end annotation


# instance fields
.field public final mAnimationLeashFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final mAnimationLeashParent:Landroid/view/SurfaceControl;

.field public final mCommitTransactionRunnable:Ljava/lang/Runnable;

.field public final mHeight:I

.field public final mOnAnimationFinished:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnAnimationLeashLost:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final mParentSurfaceControl:Landroid/view/SurfaceControl;

.field public final mPendingTransaction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final mShouldDeferAnimationFinish:Z

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mSyncTransaction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmWidth(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mWidth:I

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmHeight(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mHeight:I

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmShouldDeferAnimationFinish(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mShouldDeferAnimationFinish:Z

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmAnimationLeashParent(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmSurfaceControl(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmParentSurfaceControl(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmCommitTransactionRunnable(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmAnimationLeashFactory(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmOnAnimationLeashCreated(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmOnAnimationLeashLost(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmSyncTransactionSupplier(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSyncTransaction:Ljava/util/function/Supplier;

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmPendingTransactionSupplier(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mPendingTransaction:Ljava/util/function/Supplier;

    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmOnAnimationFinished(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;Lcom/android/server/wm/SimpleSurfaceAnimatable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable;-><init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)V

    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSurfaceHeight()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mHeight:I

    return p0
.end method

.method public getSurfaceWidth()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mWidth:I

    return p0
.end method

.method public getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSyncTransaction:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Builder;

    return-object p0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationFinished:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mShouldDeferAnimationFinish:Z

    return p0
.end method
