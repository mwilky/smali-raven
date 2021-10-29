.class public final synthetic Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/GlowController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/GlowController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->$r8$lambda$pKOkmTN0qxrnsW_Jx-22-FTTDUI(Lcom/google/android/systemui/assist/uihints/GlowController;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
