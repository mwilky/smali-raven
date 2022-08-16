.class public final Landroidx/leanback/widget/WindowAlignment$Axis;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/WindowAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field public mMaxEdge:I

.field public mMaxScroll:I

.field public mMinEdge:I

.field public mMinScroll:I

.field public mPaddingMax:I

.field public mPaddingMin:I

.field public mReversedFlow:Z

.field public mSize:I

.field public mWindowAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    return-void
.end method


# virtual methods
.method public final getScroll(I)I
    .locals 11

    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget-boolean v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x42480000    # 50.0f

    const/4 v4, 0x0

    if-nez v1, :cond_0

    int-to-float v5, v0

    mul-float/2addr v5, v3

    div-float/2addr v5, v2

    float-to-int v2, v5

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v0, 0x0

    int-to-float v6, v0

    mul-float/2addr v6, v3

    div-float/2addr v6, v2

    float-to-int v2, v6

    sub-int v2, v5, v2

    :goto_0
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    if-ne v3, v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iget v7, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_2

    move v4, v6

    :cond_2
    if-nez v5, :cond_5

    iget v8, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int v9, v2, v8

    iget v10, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    if-nez v1, :cond_3

    and-int/2addr v10, v6

    if-eqz v10, :cond_5

    goto :goto_2

    :cond_3
    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_5

    :goto_2
    sub-int v10, p1, v3

    if-gt v10, v9, :cond_5

    sub-int/2addr v3, v8

    if-nez v4, :cond_4

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    if-le v3, p0, :cond_4

    move v3, p0

    :cond_4
    return v3

    :cond_5
    if-nez v4, :cond_8

    sub-int v3, v0, v2

    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v3, v4

    if-nez v1, :cond_6

    iget v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_6
    iget v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_8

    :goto_3
    sub-int v1, v7, p1

    if-gt v1, v3, :cond_8

    sub-int/2addr v0, v4

    sub-int/2addr v7, v0

    if-nez v5, :cond_7

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    if-ge v7, p0, :cond_7

    move v7, p0

    :cond_7
    return v7

    :cond_8
    sub-int/2addr p1, v2

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, " min:"

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateMinMax(IIII)V
    .locals 8

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iput p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int v2, v0, v1

    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v2, v3

    iget-boolean v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v6, 0x0

    if-nez v3, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v0, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v4

    float-to-int v0, v0

    sub-int v0, v7, v0

    :goto_0
    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    if-ne p1, v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    const v7, 0x7fffffff

    if-ne p2, v7, :cond_2

    move v6, v5

    :cond_2
    if-nez v4, :cond_5

    iget v7, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    if-nez v3, :cond_3

    and-int/2addr v7, v5

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_3
    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    :goto_2
    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_3

    :cond_4
    sub-int p1, p3, v0

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_5
    :goto_3
    if-nez v6, :cond_8

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    if-nez v3, :cond_6

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_6
    and-int/2addr p1, v5

    if-eqz p1, :cond_7

    :goto_4
    sub-int/2addr p2, v1

    sub-int/2addr p2, v2

    iput p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_5

    :cond_7
    sub-int p1, p4, v0

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_8
    :goto_5
    if-nez v6, :cond_c

    if-nez v4, :cond_c

    if-nez v3, :cond_a

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_9

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_6

    :cond_9
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_c

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    sub-int/2addr p3, v0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_6

    :cond_a
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_b

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_6

    :cond_b
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_c

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    sub-int/2addr p4, v0

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_c
    :goto_6
    return-void
.end method
