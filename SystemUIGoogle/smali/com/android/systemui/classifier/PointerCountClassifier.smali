.class Lcom/android/systemui/classifier/PointerCountClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "PointerCountClassifier.java"


# instance fields
.field private mMaxPointerCount:I


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    return-void
.end method

.method private getReason(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/4 p0, 0x0

    const-string/jumbo p1, "{pointersObserved=%d, threshold=%d}"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method calculateFalsingResult(IDD)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 0

    const/4 p2, 0x2

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    if-le p1, p2, :cond_2

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p2}, Lcom/android/systemui/classifier/PointerCountClassifier;->getReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p4, p1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    :goto_0
    iget p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    if-eq v0, p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pointers observed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
