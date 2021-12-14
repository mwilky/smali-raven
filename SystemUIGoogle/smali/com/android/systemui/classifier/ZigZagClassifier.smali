.class Lcom/android/systemui/classifier/ZigZagClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "ZigZagClassifier.java"


# instance fields
.field private mLastDevianceX:F

.field private mLastDevianceY:F

.field private mLastMaxXDeviance:F

.field private mLastMaxYDeviance:F

.field private final mMaxXPrimaryDeviance:F

.field private final mMaxXSecondaryDeviance:F

.field private final mMaxYPrimaryDeviance:F

.field private final mMaxYSecondaryDeviance:F


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    const-string/jumbo p1, "systemui"

    const-string v0, "brightline_falsing_zigzag_x_primary_deviance"

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXPrimaryDeviance:F

    const-string v0, "brightline_falsing_zigzag_y_primary_deviance"

    const v1, 0x3e19999a    # 0.15f

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYPrimaryDeviance:F

    const-string v0, "brightline_falsing_zigzag_x_secondary_deviance"

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXSecondaryDeviance:F

    const-string v0, "brightline_falsing_zigzag_y_secondary_deviance"

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYSecondaryDeviance:F

    return-void
.end method

.method private getAtan2LastPoint()F
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getFirstMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    sub-float/2addr p0, v0

    float-to-double v0, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getReason()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastDevianceX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxXDeviance:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastDevianceY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxYDeviance:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const/4 p0, 0x0

    const-string/jumbo v1, "{devianceX=%f, maxDevianceX=%s, devianceY=%s, maxDevianceY=%s}"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private rotateHorizontal()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/classifier/ZigZagClassifier;->getAtan2LastPoint()F

    move-result v0

    float-to-double v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rotating to horizontal by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/classifier/ZigZagClassifier;->rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;D)",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float/2addr v12, v8

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v11, v9

    float-to-double v12, v12

    mul-double v14, v2, v12

    move-object/from16 p2, v7

    float-to-double v6, v11

    mul-double v16, v4, v6

    add-double v14, v14, v16

    move-object/from16 p3, v10

    float-to-double v10, v8

    add-double/2addr v14, v10

    neg-double v10, v4

    mul-double/2addr v10, v12

    mul-double/2addr v6, v2

    add-double/2addr v10, v6

    float-to-double v6, v9

    add-double/2addr v10, v6

    new-instance v6, Landroid/graphics/Point;

    double-to-int v7, v14

    double-to-int v10, v10

    invoke-direct {v6, v7, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 p2, v7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "), ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "After: ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    return-object v1
.end method

.method private rotateVertical()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/classifier/ZigZagClassifier;->getAtan2LastPoint()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotating to vertical by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v0

    neg-double v1, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/classifier/ZigZagClassifier;->rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method calculateFalsingResult(IDD)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 8

    const-wide/16 p2, 0x0

    const/16 p4, 0xa

    if-eq p1, p4, :cond_8

    const/16 p4, 0xb

    if-eq p1, p4, :cond_8

    const/16 p4, 0xe

    if-ne p1, p4, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p4, 0x3

    if-ge p1, p4, :cond_1

    invoke-static {p2, p3}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isHorizontal()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/classifier/ZigZagClassifier;->rotateHorizontal()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/classifier/ZigZagClassifier;->rotateVertical()Ljava/util/List;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x1

    sub-int/2addr p4, p5

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    sub-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->y:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    int-to-float p4, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Actual: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    move v5, v4

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    if-eqz p5, :cond_3

    iget p5, v6, Landroid/graphics/Point;->x:I

    int-to-float v4, p5

    iget p5, v6, Landroid/graphics/Point;->y:I

    int-to-float v5, p5

    move p5, p2

    goto :goto_1

    :cond_3
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v0, v4

    iget v4, v6, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v6, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v6, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(x, y, runningAbsDx, runningAbsDy) - ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sub-float/2addr v0, p3

    sub-float/2addr v3, p4

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getXdpi()F

    move-result p1

    div-float p1, p3, p1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getYdpi()F

    move-result p2

    div-float p2, p4, p2

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    cmpl-float p2, p3, p4

    if-lez p2, :cond_5

    iget p2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXPrimaryDeviance:F

    mul-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getXdpi()F

    move-result p3

    mul-float/2addr p2, p3

    iget p3, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYSecondaryDeviance:F

    mul-float/2addr p3, p1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getYdpi()F

    move-result p1

    goto :goto_2

    :cond_5
    iget p2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXSecondaryDeviance:F

    mul-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getXdpi()F

    move-result p3

    mul-float/2addr p2, p3

    iget p3, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYPrimaryDeviance:F

    mul-float/2addr p3, p1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getYdpi()F

    move-result p1

    :goto_2
    mul-float/2addr p3, p1

    iput v0, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastDevianceX:F

    iput v3, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastDevianceY:F

    iput p2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxXDeviance:F

    iput p3, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxYDeviance:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Straightness Deviance: ("

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ") vs ("

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    cmpl-float p1, v0, p2

    const-wide/high16 p4, 0x3fe0000000000000L    # 0.5

    if-gtz p1, :cond_7

    cmpl-float p1, v3, p3

    if-lez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p4, p5}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_4

    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/classifier/ZigZagClassifier;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_8
    :goto_5
    invoke-static {p2, p3}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method
