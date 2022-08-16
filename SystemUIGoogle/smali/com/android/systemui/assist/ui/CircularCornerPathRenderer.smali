.class public final Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;
.super Lcom/android/systemui/assist/ui/CornerPathRenderer;
.source "CircularCornerPathRenderer.java"


# instance fields
.field public final mCornerRadiusBottom:I

.field public final mCornerRadiusTop:I

.field public final mHeight:I

.field public final mPath:Landroid/graphics/Path;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/assist/ui/CornerPathRenderer;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-static {p1}, Landroidx/slice/view/R$plurals;->getCornerRadiusBottom(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    invoke-static {p1}, Landroidx/slice/view/R$plurals;->getCornerRadiusTop(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    invoke-static {p1}, Landroidx/slice/view/R$plurals;->getHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    invoke-static {p1}, Landroidx/slice/view/R$plurals;->getWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    return-void
.end method


# virtual methods
.method public final getCornerPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Landroid/graphics/Path;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    mul-int/lit8 v0, p1, 0x2

    int-to-float v6, v0

    mul-int/2addr p1, v1

    int-to-float v7, p1

    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v9, -0x3d4c0000    # -90.0f

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    iget p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    iget v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, p1, v2

    int-to-float v4, v2

    const/4 v5, 0x0

    int-to-float v6, p1

    mul-int/2addr v0, v1

    int-to-float v7, v0

    const/4 v8, 0x0

    const/high16 v9, -0x3d4c0000    # -90.0f

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    iget v2, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    iget p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    iget v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, p1, v2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    mul-int/2addr v0, v1

    sub-int v0, v2, v0

    int-to-float v5, v0

    int-to-float v6, p1

    int-to-float v7, v2

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, -0x3d4c0000    # -90.0f

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    iget v3, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    iget p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    iget v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, p1, v2

    int-to-float v5, v2

    mul-int/2addr v0, v1

    int-to-float v6, v0

    int-to-float v7, p1

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, -0x3d4c0000    # -90.0f

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    return-object p0
.end method
