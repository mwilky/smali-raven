.class Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemBarBackgroundPainter"
.end annotation


# instance fields
.field private final mInsetsState:Landroid/view/InsetsState;

.field private final mNavigationBarColor:I

.field private final mNavigationBarPaint:Landroid/graphics/Paint;

.field private final mScale:F

.field private final mStatusBarColor:I

.field private final mStatusBarPaint:Landroid/graphics/Paint;

.field private final mSystemBarInsets:Landroid/graphics/Rect;

.field private final mWindowFlags:I

.field private final mWindowPrivateFlags:I


# direct methods
.method constructor <init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    move/from16 v3, p1

    iput v3, v0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    move/from16 v11, p2

    iput v11, v0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    move/from16 v12, p5

    iput v12, v0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v13

    const v4, 0x1060292

    invoke-virtual {v13, v4}, Landroid/content/Context;->getColor(I)I

    move-result v14

    nop

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v10

    const/high16 v5, 0x4000000

    const/16 v9, 0x8

    move/from16 v4, p1

    move v6, v14

    move/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v15

    iput v15, v0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    nop

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111010c

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

    move/from16 v4, p1

    move v6, v14

    move/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v4

    iput v4, v0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    return-void
.end method

.method private isNavigationBarColorViewVisible()Z
    .locals 5

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(Landroid/view/InsetsState;IIZ)Z

    move-result v1

    return v1
.end method


# virtual methods
.method drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V

    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->isNavigationBarColorViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 8

    if-lez p3, :cond_2

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v5, v2

    int-to-float v6, p3

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method getStatusBarColorViewHeight()I
    .locals 6

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

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

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(Landroid/view/InsetsState;IIZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    :cond_1
    return v1
.end method

.method setInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
