.class public Lcom/android/systemui/qs/DataUsageGraph;
.super Landroid/view/View;
.source "DataUsageGraph.java"


# instance fields
.field private mLimitLevel:J

.field private final mMarkerWidth:I

.field private mMaxLevel:J

.field private final mOverlimitColor:I

.field private final mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/RectF;

.field private final mTrackColor:I

.field private final mUsageColor:I

.field private mUsageLevel:J

.field private final mWarningColor:I

.field private mWarningLevel:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->data_usage_graph_track:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    sget v0, Lcom/android/systemui/R$color;->data_usage_graph_warning:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorErrorDefaultColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    sget p1, Lcom/android/systemui/R$dimen;->data_usage_graph_marker_width:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    iget-wide v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    int-to-float v7, v2

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    long-to-float v8, v8

    iget-wide v9, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v11, v9

    div-float/2addr v8, v11

    mul-float/2addr v8, v7

    const/4 v11, 0x0

    if-eqz v6, :cond_1

    long-to-float v4, v4

    long-to-float v5, v9

    div-float/2addr v4, v5

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    int-to-float v5, v3

    invoke-virtual {v0, v4, v11, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    int-to-float v4, v3

    invoke-virtual {v0, v11, v11, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    int-to-float v3, v3

    invoke-virtual {v0, v11, v11, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v7, v4

    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v7, v4

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v0, v2, v11, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget p0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setLevels(JJJ)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    iget-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    iget-wide p3, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
