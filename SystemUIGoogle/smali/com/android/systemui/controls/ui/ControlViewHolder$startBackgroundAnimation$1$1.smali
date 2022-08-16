.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;
.super Ljava/lang/Object;
.source "ControlViewHolder.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $clipDrawable:Landroid/graphics/drawable/Drawable;

.field public final synthetic $newBaseColor:I

.field public final synthetic $newClipColor:I

.field public final synthetic $oldAlpha:F

.field public final synthetic $oldBaseColor:I

.field public final synthetic $oldClipColor:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method public constructor <init>(IIIIFLcom/android/systemui/controls/ui/ControlViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$oldClipColor:I

    iput p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$newClipColor:I

    iput p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$oldBaseColor:I

    iput p4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$newBaseColor:I

    iput p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$oldAlpha:F

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p7, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$clipDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$oldClipColor:I

    iget v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$newClipColor:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$oldBaseColor:I

    iget v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$newBaseColor:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$oldAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v3, v4, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;->$clipDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    iget-object p0, v3, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p0, v3, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
