.class public abstract Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    }
.end annotation


# instance fields
.field public mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

.field public mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

.field public mType:Ljava/lang/String;

.field public mVariesBy:I

.field public mWavePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;",
            ">;"
        }
    .end annotation
.end field

.field public mWaveShape:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final get(F)F
    .locals 6

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    float-to-double v3, p1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aget v3, v3, v2

    float-to-double v3, v3

    aput-wide v3, v0, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aget v3, v3, v2

    float-to-double v3, v3

    aput-wide v3, v0, v1

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v2, v0, v2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v4, p1

    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/motion/utils/Oscillator;->getValue(D)D

    move-result-wide v4

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide p0, p0, v1

    mul-double/2addr v4, p0

    add-double/2addr v4, v2

    double-to-float p0, v4

    return p0
.end method

.method public final getSlope(F)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_0

    float-to-double v7, v1

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    invoke-virtual {v2, v7, v8, v9}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v2, v7, v8, v9}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aput-wide v5, v2, v3

    aput-wide v5, v2, v4

    :goto_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v7, v1

    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getValue(D)D

    move-result-wide v1

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget v10, v9, Landroidx/constraintlayout/motion/utils/Oscillator;->mType:I

    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const-wide/high16 v15, 0x4010000000000000L    # 4.0

    packed-switch v10, :pswitch_data_0

    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v5

    mul-double/2addr v5, v11

    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v7

    mul-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    goto :goto_2

    :pswitch_0
    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v5

    mul-double/2addr v5, v15

    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v7

    mul-double/2addr v7, v15

    add-double/2addr v7, v13

    rem-double/2addr v7, v15

    sub-double/2addr v7, v13

    goto :goto_2

    :pswitch_1
    const-wide v5, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v13

    mul-double/2addr v13, v5

    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v5

    mul-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    goto :goto_1

    :pswitch_2
    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v5

    neg-double v5, v5

    goto :goto_1

    :pswitch_3
    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v5

    :goto_1
    mul-double/2addr v5, v13

    goto :goto_3

    :pswitch_4
    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v5

    mul-double/2addr v5, v15

    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v7

    mul-double/2addr v7, v15

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    add-double/2addr v7, v9

    rem-double/2addr v7, v15

    sub-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->signum(D)D

    move-result-wide v7

    :goto_2
    mul-double/2addr v5, v7

    :goto_3
    :pswitch_5
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aget-wide v8, v7, v3

    aget-wide v10, v7, v4

    mul-double/2addr v1, v10

    add-double/2addr v1, v8

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v3, v0, v4

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    double-to-float v0, v5

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public final setup()V
    .locals 21
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    move-object/from16 v0, p0

    const-class v1, D

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v4, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;

    invoke-direct {v4}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-array v3, v2, [D

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v7, 0x0

    aput v2, v5, v7

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    new-instance v8, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    invoke-direct {v8, v9, v2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;-><init>(II)V

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v8, v7

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    iget v10, v9, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPeriod:F

    float-to-double v11, v10

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v11, v13

    aput-wide v11, v3, v8

    aget-object v11, v5, v8

    iget v12, v9, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v13, v12

    aput-wide v13, v11, v7

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mOffset:F

    float-to-double v14, v13

    aput-wide v14, v11, v6

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    iget v9, v9, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    iget-object v14, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    move-object/from16 v16, v5

    int-to-double v4, v9

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v4, v4, v17

    aput-wide v4, v14, v8

    iget-object v4, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aput v10, v4, v8

    iget-object v4, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aput v13, v4, v8

    iget-object v4, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aput v12, v4, v8

    add-int/2addr v8, v6

    move-object/from16 v5, v16

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    move-object/from16 v16, v5

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v2, v2

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v4, v5, v6

    aput v2, v5, v7

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    array-length v4, v2

    add-int/2addr v4, v6

    new-array v4, v4, [D

    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    array-length v2, v2

    add-int/2addr v2, v6

    new-array v2, v2, [D

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    aget-wide v4, v2, v7

    const-wide/16 v8, 0x0

    cmpl-double v2, v4, v8

    if-lez v2, :cond_2

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v4, v4, v7

    invoke-virtual {v2, v8, v9, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    :cond_2
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v4, v2

    sub-int/2addr v4, v6

    aget-wide v10, v2, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v10, v12

    if-gez v2, :cond_3

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v4, v5, v4

    invoke-virtual {v2, v12, v13, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    :cond_3
    move v2, v7

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_5

    aget-object v4, v1, v2

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aget v5, v5, v2

    float-to-double v10, v5

    aput-wide v10, v4, v7

    move v4, v7

    :goto_2
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    array-length v10, v5

    if-ge v4, v10, :cond_4

    aget-object v10, v1, v4

    aget v5, v5, v4

    float-to-double v11, v5

    aput-wide v11, v10, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    aget-wide v10, v5, v2

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v5, v5, v2

    invoke-virtual {v4, v10, v11, v5}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    move v4, v7

    move-wide v10, v8

    :goto_3
    iget-object v5, v2, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    array-length v12, v5

    if-ge v4, v12, :cond_6

    aget v5, v5, v4

    float-to-double v12, v5

    add-double/2addr v10, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move v4, v6

    move-wide v12, v8

    :goto_4
    iget-object v5, v2, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    array-length v14, v5

    const/high16 v15, 0x40000000    # 2.0f

    if-ge v4, v14, :cond_7

    add-int/lit8 v14, v4, -0x1

    aget v17, v5, v14

    aget v5, v5, v4

    add-float v17, v17, v5

    div-float v5, v17, v15

    iget-object v15, v2, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    aget-wide v17, v15, v4

    aget-wide v14, v15, v14

    sub-double v17, v17, v14

    float-to-double v14, v5

    mul-double v17, v17, v14

    add-double v12, v17, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    move v4, v7

    :goto_5
    iget-object v5, v2, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    array-length v14, v5

    if-ge v4, v14, :cond_8

    aget v14, v5, v4

    float-to-double v6, v14

    div-double v19, v10, v12

    mul-double v6, v6, v19

    double-to-float v6, v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_5

    :cond_8
    iget-object v4, v2, Landroidx/constraintlayout/motion/utils/Oscillator;->mArea:[D

    const/4 v5, 0x0

    aput-wide v8, v4, v5

    const/4 v4, 0x1

    :goto_6
    iget-object v5, v2, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    array-length v6, v5

    if-ge v4, v6, :cond_9

    add-int/lit8 v6, v4, -0x1

    aget v7, v5, v6

    aget v5, v5, v4

    add-float/2addr v7, v5

    div-float/2addr v7, v15

    iget-object v5, v2, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    aget-wide v8, v5, v4

    aget-wide v10, v5, v6

    sub-double/2addr v8, v10

    iget-object v5, v2, Landroidx/constraintlayout/motion/utils/Oscillator;->mArea:[D

    aget-wide v10, v5, v6

    float-to-double v6, v7

    mul-double/2addr v8, v6

    add-double/2addr v8, v10

    aput-wide v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    const/4 v4, 0x0

    invoke-static {v4, v2, v1}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    :goto_7
    move-object/from16 v5, v16

    invoke-static {v4, v3, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mType:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    const-string v3, "["

    invoke-static {v0, v3}, Landroid/hidl/base/V1_0/DebugInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
