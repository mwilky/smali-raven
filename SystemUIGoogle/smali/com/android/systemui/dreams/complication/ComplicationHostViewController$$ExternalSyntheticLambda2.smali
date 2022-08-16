.class public final synthetic Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;

    check-cast p1, Lcom/android/systemui/dreams/complication/ComplicationId;

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mLayoutEngine:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->removeComplication(Lcom/android/systemui/dreams/complication/ComplicationId;)V

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mComplications:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    check-cast p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    iput p0, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->mCurrentFraction:F

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
