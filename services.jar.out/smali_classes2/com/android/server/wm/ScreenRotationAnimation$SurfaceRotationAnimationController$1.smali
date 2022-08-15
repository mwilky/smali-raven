.class public Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startColorAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

.field public final synthetic val$colorTransitionMs:I

.field public final synthetic val$duration:J

.field public final synthetic val$endColor:I

.field public final synthetic val$rgbTmpFloat:[F

.field public final synthetic val$startColor:I

.field public final synthetic val$va:Landroid/animation/ArgbEvaluator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;JLandroid/animation/ArgbEvaluator;II[FI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    iput-wide p2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$duration:J

    iput-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$va:Landroid/animation/ArgbEvaluator;

    iput p5, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$startColor:I

    iput p6, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$endColor:I

    iput-object p7, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    iput p8, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$colorTransitionMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    long-to-float p3, p3

    invoke-interface {p0, p3}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getFraction(F)F

    move-result p3

    iget-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$va:Landroid/animation/ArgbEvaluator;

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$startColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$endColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p3, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    invoke-virtual {p3}, Landroid/graphics/Color;->red()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p4, v1

    iget-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    invoke-virtual {p3}, Landroid/graphics/Color;->green()F

    move-result v0

    const/4 v1, 0x1

    aput v0, p4, v1

    iget-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    invoke-virtual {p3}, Landroid/graphics/Color;->blue()F

    move-result p3

    const/4 v0, 0x2

    aput p3, p4, v0

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "startLuma="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    iget-object p2, p2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {p2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmStartLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " endLuma="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    iget-object p2, p2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {p2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmEndLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " durationMs="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$colorTransitionMs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    const-wide v0, 0x10b00000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    iget-object v2, v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmStartLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v2

    const-wide v3, 0x10200000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    iget-object v2, v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->-$$Nest$fgetmEndLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v2

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$colorTransitionMs:I

    const-wide v2, 0x10300000003L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$duration:J

    return-wide v0
.end method
