.class public Lcom/android/server/display/color/ReduceBrightColorsTintController;
.super Lcom/android/server/display/color/TintController;
.source "ReduceBrightColorsTintController.java"


# instance fields
.field private final mCoefficients:[F

.field private final mMatrix:[F

.field private mStrength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mMatrix:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    return-void
.end method

.method private clamp(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private computeComponentValue(I)F
    .locals 5

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    iget-object v2, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    mul-float/2addr v3, v1

    const/4 v4, 0x1

    aget v4, v2, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v2, v2, v4

    add-float/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->clamp(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public bridge synthetic cancelAnimator()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStrength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic endAnimator()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/display/color/TintController;->endAnimator()V

    return-void
.end method

.method public getAdjustedBrightness(F)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mStrength:I

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->computeComponentValue(I)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public bridge synthetic getAnimator()Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    .locals 1

    invoke-super {p0}, Lcom/android/server/display/color/TintController;->getAnimator()Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public getMatrix()[F
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mMatrix:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    :goto_0
    return-object v0
.end method

.method public getOffsetFactor()F
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    add-float/2addr v1, v2

    const/4 v2, 0x2

    aget v0, v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public getStrength()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mStrength:I

    return v0
.end method

.method public bridge synthetic isActivated()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isActivatedStateNotSet()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result v0

    return v0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setActivated(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic setAnimator(Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/display/color/TintController;->setAnimator(Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;)V

    return-void
.end method

.method public setMatrix(I)V
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting bright color reduction level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mStrength:I

    iget-object v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-direct {p0, p1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->computeComponentValue(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mMatrix:[F

    aput v0, v2, v1

    const/4 v1, 0x5

    aput v0, v2, v1

    const/16 v1, 0xa

    aput v0, v2, v1

    return-void
.end method

.method public setUp(Landroid/content/Context;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x107006e

    goto :goto_0

    :cond_0
    const v1, 0x107006f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
