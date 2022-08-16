.class public final Lcom/google/android/systemui/assist/uihints/RollingAverage;
.super Ljava/lang/Object;
.source "RollingAverage.java"


# instance fields
.field public mIndex:I

.field public mSamples:[F

.field public mTotal:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mIndex:I

    const/4 v2, 0x3

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mSamples:[F

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mSamples:[F

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final add(F)V
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mSamples:[F

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mIndex:I

    aget v3, v1, v2

    sub-float/2addr v0, v3

    aput p1, v1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mIndex:I

    const/4 p1, 0x3

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mIndex:I

    :cond_0
    return-void
.end method
