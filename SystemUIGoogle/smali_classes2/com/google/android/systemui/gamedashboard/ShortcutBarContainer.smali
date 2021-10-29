.class public Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;
.super Landroid/widget/LinearLayout;
.source "ShortcutBarContainer.java"


# instance fields
.field private final mOvalBgPaint:Landroid/graphics/Paint;

.field private mUseClearBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;->mUseClearBackground:Z

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    const/16 p0, 0x99

    invoke-static {p0, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;->mUseClearBackground:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v7, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;->mOvalBgPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setUseClearBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;->mUseClearBackground:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
