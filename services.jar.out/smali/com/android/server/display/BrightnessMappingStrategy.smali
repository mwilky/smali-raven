.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
    }
.end annotation


# static fields
.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final MIN_PERMISSABLE_INCREASE:F = 0.004f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final SHORT_TERM_MODEL_THRESHOLD_RATIO:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"


# instance fields
.field protected mLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/display/utils/Plog;
    .locals 1

    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-object v0
.end method

.method public static create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x1070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v1

    const v2, 0x1070014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    const v2, 0x1070012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v10

    const/high16 v2, 0x1130000

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v11

    const v2, 0x10e0016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v12, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightness()[F

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v10}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v2, v1, v10}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    invoke-virtual {v2, v12, v13}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-virtual {v2, v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    new-instance v3, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v4

    invoke-direct {v3, v4, v14, v15, v11}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[FF)V

    return-object v3

    :cond_0
    invoke-static {v1, v9}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v16, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    const/4 v8, 0x0

    move-object/from16 v2, v16

    move-object v3, v1

    move-object v4, v9

    move v5, v11

    move-wide v6, v12

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IFJLcom/android/server/display/BrightnessMappingStrategy$1;)V

    return-object v16

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private findInsertionPoint([FF)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    return v0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .locals 4

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private insertControlPoint([F[FFF)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    aput p3, v1, v0

    aput p4, v2, v0

    goto :goto_0

    :cond_0
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    aput p4, v2, v0

    goto :goto_0

    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p3, v1, v0

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p4, v2, v0

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static isValidMapping([F[F)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v1, p0

    if-eqz v1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    array-length v1, p0

    aget v2, p0, v0

    aget v3, p1, v0

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_8

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_8

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    :goto_0
    if-ge v4, v1, :cond_7

    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_6

    aget v5, p1, v4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_5

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    aget v2, p0, v4

    aget v3, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v0

    :cond_7
    const/4 v0, 0x1

    return v0

    :cond_8
    :goto_3
    return v0

    :cond_9
    :goto_4
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    array-length v1, p0

    if-eqz v1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    array-length v1, p0

    aget v2, p0, v0

    aget v3, p1, v0

    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_7

    if-ltz v3, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    :goto_0
    if-ge v4, v1, :cond_6

    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_5

    aget v5, p1, v4

    if-le v3, v5, :cond_3

    goto :goto_1

    :cond_3
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4

    return v0

    :cond_4
    aget v2, p0, v4

    aget v3, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_7
    :goto_2
    return v0

    :cond_8
    :goto_3
    return v0
.end method

.method protected static normalizeAbsoluteBrightness(I)F
    .locals 1

    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    return v0
.end method

.method private permissibleRatio(FF)F
    .locals 2

    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p1, v0

    add-float/2addr v0, p2

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    return v0
.end method

.method private smoothCurve([F[FI)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v1, "unsmoothed curve"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_0
    aget v0, p1, p3

    aget v1, p2, p3

    add-int/lit8 v2, p3, 0x1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget v3, p1, v2

    aget v4, p2, v2

    nop

    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    const v6, 0x3b83126f    # 0.004f

    add-float/2addr v6, v1

    invoke-static {v5, v6}, Landroid/util/MathUtils;->max(FF)F

    move-result v5

    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    cmpl-float v7, v6, v4

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    move v1, v6

    aput v6, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    aget v0, p1, p3

    aget v1, p2, p3

    add-int/lit8 v2, p3, -0x1

    :goto_2
    if-ltz v2, :cond_4

    aget v3, p1, v2

    aget v4, p2, v2

    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    cmpl-float v7, v6, v4

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    move v1, v6

    aput v6, p2, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "smoothed curve"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_5
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToNits(F)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method protected getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    move-object v0, p1

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "unadjusted curve"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p5, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p5

    neg-float v4, p5

    invoke-static {p6, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdjustedCurve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, p5

    invoke-static {p6, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BrightnessMappingStrategy"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    cmpl-float v3, v4, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_2

    aget v5, v1, v3

    invoke-static {v5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v5

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v5, "gamma adjusted curve"

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_3
    cmpl-float v2, p3, v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v5, "gamma and user adjusted curve"

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    const-string/jumbo v7, "user adjusted curve"

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_4
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public getBrightness(F)F
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public abstract getBrightness(FLjava/lang/String;I)F
.end method

.method public abstract getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getShortTermModelTimeout()J
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method protected inferAutoBrightnessAdjustment(FFF)F
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_3

    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    cmpl-float v2, p2, v3

    if-nez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v1, v2, v4

    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v0, v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    sub-float v0, p2, p3

    :goto_1
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inferAutoBrightnessAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, v0

    invoke-static {p1, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " == "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "BrightnessMappingStrategy"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract recalculateSplines(Z[F)V
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    const/4 v0, 0x1

    return v0
.end method

.method public shouldResetShortTermModel(FF)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v2

    :cond_1
    mul-float v3, p2, v1

    sub-float v3, p2, v3

    mul-float v4, p2, v2

    add-float/2addr v4, p2

    cmpg-float v5, v3, p1

    const-string v6, "BrightnessMappingStrategy"

    if-gez v5, :cond_3

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " < "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v5, 0x0

    return v5

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5
.end method
