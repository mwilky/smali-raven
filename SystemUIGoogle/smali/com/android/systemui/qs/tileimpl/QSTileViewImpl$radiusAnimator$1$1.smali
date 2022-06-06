.class final Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$radiusAnimator$1$1;
.super Ljava/lang/Object;
.source "QSTileViewImpl$radiusAnimator$1$1.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V
    .registers 2
    .param p1, "qSTileViewImpl"    # Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$radiusAnimator$1$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$radiusAnimator$1$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 16
    .local v0, "qSTileViewImpl":Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 17
    .local v1, "animatedValue":Ljava/lang/Object;
    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->access$setCornerRadius(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;F)V

    .line 19
    return-void
.end method
