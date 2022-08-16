.class public final synthetic Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;I[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    iput p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    iget v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->f$2:[Z

    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier;

    iget-object v2, v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    iget-object v0, v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HistoryTracker;->falseConfidence()D

    invoke-virtual {p1, v1}, Lcom/android/systemui/classifier/FalsingClassifier;->calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p1

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    iget-boolean v2, p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    or-int/2addr v1, v2

    aput-boolean v1, p0, v0

    return-object p1
.end method
