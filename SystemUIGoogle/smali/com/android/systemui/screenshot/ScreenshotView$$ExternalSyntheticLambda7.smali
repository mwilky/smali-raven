.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotView;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;FFLandroid/graphics/Rect;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;->f$1:F

    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;->f$2:F

    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;->f$3:Landroid/graphics/Rect;

    iput p5, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;->f$4:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;->f$1:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;->f$2:F

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;->f$3:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;->f$4:F

    sget v4, Lcom/android/systemui/screenshot/ScreenshotView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-static {v2, v4, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-static {p0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
