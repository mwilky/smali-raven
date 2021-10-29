.class Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mLastT:F

.field final synthetic this$0:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;->mLastT:F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-static {v1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->access$100(Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-static {v3}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->access$100(Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    instance-of v4, v3, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    invoke-interface {v3, p1}, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;->setHeightOverride(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->access$200(Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;)Lcom/android/systemui/qs/TouchAnimator$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationAtStart()V

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->access$200(Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;)Lcom/android/systemui/qs/TouchAnimator$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationAtEnd()V

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;->mLastT:F

    cmpg-float p1, v2, p1

    if-lez p1, :cond_4

    cmpl-float p1, v2, v1

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->access$200(Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;)Lcom/android/systemui/qs/TouchAnimator$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationStarted()V

    :cond_5
    :goto_1
    iput v0, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;->mLastT:F

    return-void
.end method
