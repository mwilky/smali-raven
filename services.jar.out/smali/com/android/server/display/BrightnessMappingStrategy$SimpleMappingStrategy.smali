.class public Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleMappingStrategy"
.end annotation


# instance fields
.field public mAutoBrightnessAdjustment:F

.field public final mBrightness:[F

.field public final mLux:[F

.field public mMaxGamma:F

.field public mShortTermModelTimeout:J

.field public mSpline:Landroid/util/Spline;

.field public mUserBrightness:F

.field public mUserLux:F


# direct methods
.method public constructor <init>([F[IFJ)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Lux and brightness arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Lux and brightness arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    const-string v3, "lux"

    invoke-static {p1, v1, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    const v0, 0x7fffffff

    const-string v3, "brightness"

    invoke-static {p2, v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    array-length v0, p2

    new-array v3, v0, [F

    iput-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    new-array v3, v0, [F

    iput-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v4, p1, v2

    aput v4, v3, v2

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    aget v4, p2, v2

    invoke-static {v4}, Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    iget-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object p1

    const-string/jumbo p2, "simple mapping strategy"

    invoke-virtual {p1, p2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    iput-wide p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    return-void
.end method

.method public synthetic constructor <init>([F[IFJLcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IFJ)V

    return-void
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    const-string v2, "BrightnessMappingStrategy"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "add user data point"

    invoke-virtual {v1, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string/jumbo v3, "user data point"

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "current brightness"

    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    :cond_0
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    return-void
.end method

.method public clearUserDataPoints()V
    .locals 5

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserDataPoints: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v2, "clear user data points"

    invoke-virtual {v0, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    const-string/jumbo v4, "user data point"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    :cond_1
    return-void
.end method

.method public final computeSpline()V
    .locals 7

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    return-void
.end method

.method public convertToNits(F)F
    .locals 0

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;F)V
    .locals 1

    const-string p2, "SimpleMappingStrategy"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSpline="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mMaxGamma="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mAutoBrightnessAdjustment="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mUserLux="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mUserBrightness="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    return p0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortTermModelTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    return-wide v0
.end method

.method public final getUnadjustedBrightness(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    invoke-static {v0, p0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public hasUserDataPoints()Z
    .locals 1

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDefaultConfig()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isForIdleMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public recalculateSplines(Z[F)V
    .locals 0

    return-void
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    :cond_1
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    const/4 p0, 0x1

    return p0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
