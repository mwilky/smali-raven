.class public final synthetic Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator$$ExternalSyntheticLambda0;->f$0:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator$$ExternalSyntheticLambda0;->f$0:Landroid/animation/ValueAnimator;

    check-cast p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->$r8$lambda$vYsezX2hFbW3lNnWDhJ_7x6WNDc(Landroid/animation/ValueAnimator;Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V

    return-void
.end method
