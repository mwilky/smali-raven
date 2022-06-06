.class final Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$outlineAnimator$1$1;
.super Ljava/lang/Object;
.source "QSTileViewImpl$outlineAnimator$1$1.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V
    .registers 2
    .param p1, "qSTileViewImpl"    # Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$outlineAnimator$1$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 13
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$outlineAnimator$1$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 17
    .local v0, "qSTileViewImpl":Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 18
    .local v1, "animatedValue":Ljava/lang/Object;
    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mState:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getOutlineColorForState(I)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->access$setOutline(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;II)V

    .line 20
    return-void
.end method
