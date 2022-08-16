.class public final Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;
.super Ljava/lang/Object;
.source "WiredChargingRippleController.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->startRipple()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-static {v1, v0}, Ljava/lang/Integer;->max(II)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v2, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    iput v3, v4, Lcom/android/systemui/statusbar/charging/RippleShader;->radius:F

    const-string v5, "in_maxRadius"

    invoke-virtual {v4, v5, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iput v3, v2, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->radius:F

    iget-object v2, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    iget-object v3, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    invoke-static {v3}, Lkotlin/jdk7/AutoCloseableKt;->getExactRotation(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    new-instance v3, Landroid/graphics/PointF;

    int-to-float v1, v1

    iget v4, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    mul-float/2addr v1, v4

    int-to-float v0, v0

    iget p1, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    mul-float/2addr v0, p1

    invoke-direct {v3, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v1, v1

    int-to-float v4, v4

    iget v5, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    int-to-float v0, v0

    iget p1, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    mul-float/2addr v0, p1

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v1, v1

    int-to-float v4, v4

    iget v5, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    sub-float v5, v4, v5

    mul-float/2addr v5, v1

    int-to-float v0, v0

    iget p1, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    sub-float/2addr v4, p1

    mul-float/2addr v4, v0

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v1, v1

    iget v5, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosY:F

    mul-float/2addr v1, v5

    int-to-float v0, v0

    int-to-float v4, v4

    iget p1, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->normalizedPortPosX:F

    sub-float/2addr v4, p1

    mul-float/2addr v4, v0

    invoke-direct {v3, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    iget-object p1, v2, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v1, v3, Landroid/graphics/PointF;->y:F

    const-string v4, "in_origin"

    invoke-virtual {p1, v4, v0, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    iput-object v3, v2, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->origin:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    new-instance v1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;-><init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->startRipple(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
