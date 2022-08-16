.class public Lcom/android/systemui/globalactions/ListGridLayout;
.super Landroid/widget/LinearLayout;
.source "ListGridLayout.java"


# instance fields
.field public final mConfigs:[[I

.field public mCurrentCount:I

.field public mExpectedCount:I

.field public mReverseItems:Z

.field public mReverseSublists:Z

.field public mSwapRowsAndColumns:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    const/16 p2, 0xa

    new-array p2, p2, [[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    aput-object v1, p2, p1

    new-array p1, v0, [I

    fill-array-data p1, :array_1

    const/4 v1, 0x1

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_2

    aput-object p1, p2, v0

    new-array p1, v0, [I

    fill-array-data p1, :array_3

    const/4 v1, 0x3

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_4

    const/4 v1, 0x4

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_5

    const/4 v1, 0x5

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_6

    const/4 v1, 0x6

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_7

    const/4 v1, 0x7

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_8

    const/16 v1, 0x8

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_9

    const/16 v0, 0x9

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x3
    .end array-data
.end method


# virtual methods
.method public getParentView(IZZ)Landroid/view/ViewGroup;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    move-result v0

    if-eqz p3, :cond_1

    div-int/2addr p1, v0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_0

    :cond_1
    rem-int/2addr p1, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    sub-int p1, p2, p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/ListGridLayout;->getSublist(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRowCount()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mExpectedCount:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    aget-object p0, p0, v0

    :goto_0
    aget p0, p0, v1

    return p0
.end method

.method public getSublist(I)Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method
