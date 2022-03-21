.class public Lcom/android/settings/fuelgauge/BatteryChartView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "BatteryChartView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;,
        Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_SERVICE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIVIDER_COLOR:I


# instance fields
.field private mDividerHeight:I

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field mHandler:Landroid/os/Handler;

.field mHoveredIndex:I

.field private final mIndent:Landroid/graphics/Rect;

.field private mIsSlotsClickabled:Z

.field private mLevels:[I

.field private mOnSelectListener:Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;

.field private final mPercentageBounds:[Landroid/graphics/Rect;

.field private mPercentages:[Ljava/lang/String;

.field mSelectedIndex:I

.field private mTextPadding:I

.field private mTextPaint:Landroid/graphics/Paint;

.field mTimestamps:[Ljava/lang/String;

.field private final mTimestampsBounds:[Landroid/graphics/Rect;

.field private mTouchUpEventX:F

.field private mTrapezoidColor:I

.field private mTrapezoidCount:I

.field mTrapezoidCurvePaint:Landroid/graphics/Paint;

.field private mTrapezoidHOffset:F

.field private mTrapezoidHoverColor:I

.field private mTrapezoidPaint:Landroid/graphics/Paint;

.field private mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

.field private mTrapezoidSolidColor:I

.field private mTrapezoidVOffset:F

.field final mUpdateClickableStateRun:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$KGTJ6BcEancP_d420zk3IIt8daI(Lcom/android/settings/fuelgauge/BatteryChartView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartView;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "SwitchAccessService"

    const-string v1, "TalkBackService"

    const-string v2, "JustSpeakService"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryChartView;->ACCESSIBILITY_SERVICE_NAMES:Ljava/util/List;

    const-string v0, "#CDCCC5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/fuelgauge/BatteryChartView;->DIVIDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentages:[Ljava/lang/String;

    const/4 p1, -0x2

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHoveredIndex:I

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array v1, p1, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, p1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/settings/fuelgauge/BatteryChartView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/BatteryChartView$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/BatteryChartView;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mUpdateClickableStateRun:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTouchUpEventX:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentages:[Ljava/lang/String;

    const/4 p2, -0x2

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHoveredIndex:I

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    const/4 p2, 0x3

    new-array v0, p2, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, p2

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/fuelgauge/BatteryChartView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/fuelgauge/BatteryChartView$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/BatteryChartView;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mUpdateClickableStateRun:Ljava/lang/Runnable;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTouchUpEventX:F

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->initializeColors(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->setSelectedIndex(I)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->setTrapezoidCount(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatteryChartView;->setClickable(Z)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/BatteryChartView;->setLatestTimestamp(J)V

    return-void
.end method

.method private drawHorizontalDividers(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v2, v3

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v0, v0

    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v5, p1

    move v7, v2

    move v8, v0

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidVOffset:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    int-to-float v2, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, v2}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    add-float/2addr v2, v1

    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move v7, v2

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    return-void
.end method

.method private drawPercentage(Landroid/graphics/Canvas;IF)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentages:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v3, v2, p2

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    aget-object p2, v2, p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p2, v2

    add-float/2addr p3, p2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawTimestamp(Landroid/graphics/Canvas;[F)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryChartView;->getTimestampY(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryChartView;->getTimestampY(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    aget-object v1, v1, v0

    aget v2, p2, v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->getTimestampY(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawTrapezoids(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidVOffset:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    :goto_0
    iget v7, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCount:I

    if-ge v5, v7, :cond_9

    invoke-direct {p0, v5}, Lcom/android/settings/fuelgauge/BatteryChartView;->isValidToDraw(I)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-eqz v7, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v6, v4

    goto/16 :goto_5

    :cond_1
    iget-boolean v7, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIsSlotsClickabled:Z

    if-nez v7, :cond_2

    iget v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidColor:I

    goto :goto_2

    :cond_2
    iget v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    if-eq v8, v5, :cond_4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    iget v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidColor:I

    goto :goto_2

    :cond_4
    :goto_1
    iget v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSolidColor:I

    :goto_2
    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHoveredIndex:I

    if-ne v7, v5, :cond_5

    invoke-direct {p0, v7}, Lcom/android/settings/fuelgauge/BatteryChartView;->isValidToDraw(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    move v7, v3

    :goto_3
    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    if-eqz v7, :cond_6

    iget v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidHoverColor:I

    :cond_6
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    aget v7, v7, v5

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    add-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v2

    sub-float v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v9, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-eqz v9, :cond_8

    if-nez v6, :cond_7

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v6, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    :cond_7
    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v6, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {p1, v6, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method private drawVerticalDividers(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCount:I

    add-int/lit8 v3, v2, 0x1

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    mul-int/2addr v4, v3

    int-to-float v4, v4

    int-to-float v1, v1

    sub-float/2addr v1, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    int-to-float v4, v4

    sub-float v10, v2, v4

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidHOffset:F

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v6, v5

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v6, v11

    add-float v12, v4, v6

    int-to-float v4, v5

    mul-float/2addr v4, v11

    const/4 v13, 0x0

    move v14, v4

    move v15, v13

    :goto_0
    if-ge v15, v3, :cond_1

    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v14

    move v6, v10

    move v7, v14

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v14

    add-float/2addr v4, v1

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    array-length v6, v5

    if-ge v15, v6, :cond_0

    aget-object v5, v5, v15

    add-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v5, v5, v15

    sub-float v6, v4, v12

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mRight:F

    :cond_0
    add-int/lit8 v15, v15, 0x1

    move v14, v4

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    new-array v3, v2, [F

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v5, v4

    mul-float/2addr v5, v11

    int-to-float v4, v4

    add-float/2addr v4, v1

    :goto_1
    if-ge v13, v2, :cond_2

    int-to-float v1, v13

    mul-float/2addr v1, v4

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    aput v1, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawTimestamp(Landroid/graphics/Canvas;[F)V

    :cond_3
    return-void
.end method

.method private static getPercentages()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method private getTimestampY(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object p1, v2, p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPadding:I

    int-to-float p0, p0

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getTrapezoidIndex(F)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget v2, v1, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidHOffset:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v1, v1, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mRight:F

    add-float/2addr v1, v3

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method private initializeColors(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidColor:I

    const v0, 0x1120027

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidHoverColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b00bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    const v0, 0x7f0b00be

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/settings/fuelgauge/BatteryChartView;->DIVIDER_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDividerWidth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryChartView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDividerHeight:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00c2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidHOffset:F

    const v0, 0x7f0b00c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidVOffset:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const v2, 0x7f0b00c3

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const v0, 0x7f0b00c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPadding:I

    return-void
.end method

.method static isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryChartView;->ACCESSIBILITY_SERVICE_NAMES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "acccessibilityEnabled:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryChartView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private isValidToDraw(I)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    aget v1, p0, p1

    if-eqz v1, :cond_0

    add-int/2addr p1, v0

    aget p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartView;->updateClickableState()V

    return-void
.end method

.method private updateClickableState()V
    .locals 3

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphSlotsEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIsSlotsClickabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChartGraphSlotsEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIsSlotsClickabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIsSlotsClickabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->setLevels([I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawHorizontalDividers(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawVerticalDividers(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawTrapezoids(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAccessibilityStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryChartView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mUpdateClickableStateRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mUpdateClickableStateRun:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartView;->updateClickableState()V

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTouchUpEventX:F

    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const-string p0, "BatteryChartView"

    const-string p1, "invalid motion event for onClick() callback"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->getTrapezoidIndex(F)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->isValidToDraw(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    if-ne v0, v1, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->setSelectedIndex(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->setSelectedIndex(I)V

    :goto_0
    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mUpdateClickableStateRun:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHoverChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onHoverChanged(Z)V

    if-nez p1, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHoveredIndex:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->getTrapezoidIndex(F)I

    move-result v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHoveredIndex:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHoveredIndex:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    move p1, p2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentages:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    aget-object v2, v0, p1

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    if-eqz p1, :cond_2

    move p1, p2

    move v0, p1

    :goto_1
    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    aget-object v3, v2, p1

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, p1

    invoke-virtual {v1, v3, p2, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPadding:I

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setIndent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTouchUpEventX:F

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTouchUpEventX:F

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setClickable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIsSlotsClickabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method setClickableForce(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setCompanionTextView(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setLatestTimestamp(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide p1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    rsub-int/lit8 v5, v2, 0x3

    int-to-long v5, v5

    const-wide/32 v7, 0x1b77400

    mul-long/2addr v5, v7

    sub-long v5, p1, v5

    invoke-static {v4, v5, v6, v0}, Lcom/android/settings/fuelgauge/ConvertUtils;->utcToLocalTimeHour(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setLevels([I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLevels() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    return-void

    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    if-nez v0, :cond_3

    return-void

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    array-length v1, v0

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_5

    aget v1, v0, p1

    if-eqz v1, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryChartView;->setClickable(Z)V

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public setOnSelectListener(Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mOnSelectListener:Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mOnSelectListener:Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    invoke-interface {p1, p0}, Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;->onSelect(I)V

    :cond_0
    return-void
.end method

.method public setTrapezoidCount(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trapezoidCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCount:I

    new-array v0, p1, [Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    new-instance v2, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;-><init>(Lcom/android/settings/fuelgauge/BatteryChartView$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
