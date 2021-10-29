.class Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;
.super Landroid/text/style/ReplacementSpan;
.source "TranscriptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/TranscriptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranscriptionSpan"
.end annotation


# instance fields
.field private mCurrentFraction:F

.field private mStartFraction:F

.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->mCurrentFraction:F

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->mStartFraction:F

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->mCurrentFraction:F

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->mStartFraction:F

    invoke-virtual {p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->getCurrentFraction()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->mStartFraction:F

    return-void
.end method

.method private getAlpha()F
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->mStartFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    sub-float v2, v1, v0

    div-float/2addr v2, v1

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->mCurrentFraction:F

    mul-float/2addr v2, p0

    add-float/2addr v2, v0

    const/4 p0, 0x0

    invoke-static {v2, p0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move-object/from16 v7, p9

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    move v0, p7

    int-to-float v6, v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method getCurrentFraction()F
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->mCurrentFraction:F

    return p0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method setCurrentFraction(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;->mCurrentFraction:F

    return-void
.end method
