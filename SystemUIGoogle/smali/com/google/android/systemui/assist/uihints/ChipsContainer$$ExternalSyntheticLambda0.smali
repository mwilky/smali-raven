.class public final synthetic Lcom/google/android/systemui/assist/uihints/ChipsContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/ChipsContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/ChipsContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ChipsContainer$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/ChipsContainer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/ChipsContainer$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/ChipsContainer;

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/ChipsContainer;->START_DELTA:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method
