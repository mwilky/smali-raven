.class Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;
.super Ljava/lang/Object;
.source "TranscriptionView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/TranscriptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranscriptionAnimator"
.end annotation


# instance fields
.field private mDistance:F

.field private mSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mStartX:F

.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;


# direct methods
.method public static synthetic $r8$lambda$vYsezX2hFbW3lNnWDhJ_7x6WNDc(Landroid/animation/ValueAnimator;Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->lambda$onAnimationUpdate$0(Landroid/animation/ValueAnimator;Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mSpans:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationUpdate$0(Landroid/animation/ValueAnimator;Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->setCurrentFraction(F)V

    return-void
.end method


# virtual methods
.method addSpan(Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mSpans:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clearSpans()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mSpans:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method createAnimator()Landroid/animation/ValueAnimator;
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-static {v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->access$100(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getX()F

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mStartX:F

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-static {v1, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->access$200(Lcom/google/android/systemui/assist/uihints/TranscriptionView;F)F

    move-result v1

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mStartX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mDistance:F

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-static {v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->access$300(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mDistance:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-static {v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->access$400(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getAdaptiveDuration(FF)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-static {v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->access$400(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->access$500(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)J

    move-result-wide v3

    add-long/2addr v3, v1

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mDistance:F

    long-to-float v5, v3

    long-to-float v1, v1

    div-float/2addr v5, v1

    mul-float/2addr v0, v5

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v5, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mStartX:F

    aput v5, v1, v2

    const/4 v2, 0x1

    add-float/2addr v5, v0

    aput v5, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->access$600()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method getSpans()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mSpans:Ljava/util/List;

    return-object p0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mStartX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mDistance:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setX(F)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->access$300(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mSpans:Ljava/util/List;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
