.class Lcom/android/server/wm/SurfaceFreezer$Snapshot;
.super Ljava/lang/Object;
.source "SurfaceFreezer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceFreezer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Snapshot"
.end annotation


# instance fields
.field private mAnimation:Lcom/android/server/wm/AnimationAdapter;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/SurfaceFreezer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceFreezer;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/view/SurfaceControl;)V
    .locals 7

    iput-object p1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->this$0:Lcom/android/server/wm/SurfaceFreezer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p3}, Lcom/android/server/wm/SurfaceFreezer;->createFromHardwareBufferInner(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/SurfaceFreezer;->access$000(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snapshot anim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/SurfaceFreezer;->access$000(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "SurfaceFreezer.Snapshot"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x27df7779

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method static synthetic lambda$startAnimation$0(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    return-void
.end method


# virtual methods
.method cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/server/wm/AnimationAdapter;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->destroy(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    return-void
.end method

.method destroy(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    iput-object p2, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void

    :cond_0
    sget-object v1, Lcom/android/server/wm/SurfaceFreezer$Snapshot$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/SurfaceFreezer$Snapshot$$ExternalSyntheticLambda0;

    invoke-interface {p2, v0, p1, p3, v1}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-void
.end method
