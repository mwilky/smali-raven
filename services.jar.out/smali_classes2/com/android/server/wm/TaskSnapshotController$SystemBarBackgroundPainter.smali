.class public Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarBackgroundPainter"
.end annotation


# instance fields
.field public final mInsetsState:Landroid/view/InsetsState;

.field public final mNavigationBarColor:I

.field public final mNavigationBarPaint:Landroid/graphics/Paint;

.field public final mScale:F

.field public final mStatusBarColor:I

.field public final mStatusBarPaint:Landroid/graphics/Paint;

.field public final mSystemBarInsets:Landroid/graphics/Rect;

.field public final mWindowFlags:I

.field public final mWindowPrivateFlags:I


# direct methods
.method public constructor <init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V
    .locals 14

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    move v3, p1

    iput v3, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowFlags:I

    move/from16 v4, p2

    iput v4, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    move/from16 v4, p5

    iput v4, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mScale:F

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v11

    const v4, 0x1060296

    invoke-virtual {v11, v4}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v10

    const/high16 v5, 0x4000000

    const/16 v9, 0x8

    move v4, p1

    move v6, v12

    move/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v13

    iput v13, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111017e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v10, v4

    const/high16 v5, 0x8000000

    const/16 v9, 0x10

    move v4, p1

    move v6, v12

    move/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    return-void
.end method


# virtual methods
.method public drawDecors(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mScale:F

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->isNavigationBarColorViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public drawStatusBarBackground(Landroid/graphics/Canvas;I)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-lez p2, :cond_0

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v4, v1

    int-to-float v5, p2

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getStatusBarColorViewHeight()I
    .locals 6

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(Landroid/view/InsetsState;IIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_1
    return v1
.end method

.method public final isNavigationBarColorViewVisible()Z
    .locals 4

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget p0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(Landroid/view/InsetsState;IIZ)Z

    move-result p0

    return p0
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
