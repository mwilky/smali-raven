.class public final Lcom/android/systemui/assist/ui/EdgeLight;
.super Ljava/lang/Object;
.source "EdgeLight.java"


# instance fields
.field public mColor:I

.field public mLength:F

.field public mStart:F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iput v0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iget v0, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iput v0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget p1, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method

.method public static copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;
    .locals 4

    array-length v0, p0

    new-array v0, v0, [Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(Lcom/android/systemui/assist/ui/EdgeLight;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final setEndpoints(FF)V
    .locals 1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "Endpoint must be >= start (add 1 if necessary). Got [%f, %f]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLight"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method
