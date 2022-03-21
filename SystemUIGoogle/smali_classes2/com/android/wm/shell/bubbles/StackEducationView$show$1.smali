.class final Lcom/android/wm/shell/bubbles/StackEducationView$show$1;
.super Ljava/lang/Object;
.source "StackEducationView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/StackEducationView;->show(Landroid/graphics/PointF;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $stackPosition:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/android/wm/shell/bubbles/StackEducationView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/bubbles/StackEducationView;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->$stackPosition:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/StackEducationView;->access$getView(Lcom/android/wm/shell/bubbles/StackEducationView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->$stackPosition:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/StackEducationView;->access$getPositioner$p(Lcom/android/wm/shell/bubbles/StackEducationView;)Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/StackEducationView;->access$getPositioner$p(Lcom/android/wm/shell/bubbles/StackEducationView;)Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/StackEducationView;->access$getPositioner$p(Lcom/android/wm/shell/bubbles/StackEducationView;)Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->access$getANIMATE_DURATION$p(Lcom/android/wm/shell/bubbles/StackEducationView;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
