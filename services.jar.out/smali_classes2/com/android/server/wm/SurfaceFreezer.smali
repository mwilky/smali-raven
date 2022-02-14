.class Lcom/android/server/wm/SurfaceFreezer;
.super Ljava/lang/Object;
.source "SurfaceFreezer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceFreezer$Freezable;,
        Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceFreezer"


# instance fields
.field private final mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

.field final mFreezeBounds:Landroid/graphics/Rect;

.field mLeash:Landroid/view/SurfaceControl;

.field mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceFreezer$Freezable;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    return-object v0
.end method

.method private static createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_0
    new-instance v1, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {v1, p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v1

    invoke-static {v1}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2

    return-object v2
.end method

.method private reset(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->destroy(Landroid/view/SurfaceControl$Transaction;)V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    :cond_1
    return-void
.end method

.method private unfreezeInner(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/wm/SurfaceAnimator;->removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_2
    return-void
.end method


# virtual methods
.method createFromHardwareBufferInner(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)Landroid/graphics/GraphicBuffer;
    .locals 1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method createSnapshotBufferInner(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;)V
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/wm/SurfaceFreezer;->reset(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p3, Landroid/graphics/Point;->x:I

    iget v8, p3, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    const/4 v4, 0x2

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v1, p1, v0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_0
    move-object p4, v0

    if-eqz p4, :cond_4

    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBufferInner(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    :goto_1
    nop

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    if-gt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    iget-object v3, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;-><init>(Lcom/android/server/wm/SurfaceFreezer;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/view/SurfaceControl;)V

    iput-object v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to capture screenshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceFreezer"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_4
    :goto_3
    return-void
.end method

.method hasLeash()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method takeLeashForAnimation()Landroid/view/SurfaceControl;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method takeSnapshotForAnimation()Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    return-object v0
.end method

.method unfreeze(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/SurfaceFreezer;->unfreezeInner(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->onUnfrozen()V

    return-void
.end method
