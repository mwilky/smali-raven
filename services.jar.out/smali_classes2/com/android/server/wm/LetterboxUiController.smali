.class final Lcom/android/server/wm/LetterboxUiController;
.super Ljava/lang/Object;
.source "LetterboxUiController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLetterbox:Lcom/android/server/wm/Letterbox;

.field private final mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

.field private mShowWallpaperForLetterboxBackground:Z

.field private final mTmpPoint:Landroid/graphics/Point;


# direct methods
.method public static synthetic $r8$lambda$OsbEBblNbTAD_wdzLWiqz4azxxk(Lcom/android/server/wm/LetterboxUiController;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZguxgCbWfDKtLBV-5X0ISnY4qAc(Lcom/android/server/wm/LetterboxUiController;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fbXQOb38bMYnfh1EWVA42TFBP0o(Lcom/android/server/wm/LetterboxUiController;)Landroid/graphics/Color;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iput-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iput-object p2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method private getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v2}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected letterbox background type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->hasWallpaperBackgroudForLetterbox()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    :cond_1
    const-string v1, "ActivityTaskManager"

    const-string v4, "Wallpaper option is selected for letterbox background but blur is not supported by a device or not supported in the current window configuration or both alpha scrim and blur radius aren\'t provided so using solid color background"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    :pswitch_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLetterboxReasonString(Lcom/android/server/wm/WindowState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SIZE_COMPAT_MODE"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FIXED_ORIENTATION"

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DISPLAY_CUTOUT"

    return-object v0

    :cond_2
    const-string v0, "UNKNOWN_REASON"

    return-object v0
.end method

.method private getLetterboxWallpaperBlurRadius()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundWallpaperBlurRadius()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private getLetterboxWallpaperDarkScrimAlpha()F
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundWallpaperDarkScrimAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isLetterboxWallpaperBlurSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iget-object v0, v0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->isCrossWindowBlurEnabled()Z

    move-result v0

    return v0
.end method

.method private setCornersRadius(Lcom/android/server/wm/WindowState;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    int-to-float v2, p2

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method private updateRoundedCorners(Lcom/android/server/wm/WindowState;)V
    .locals 2

    nop

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/LetterboxUiController;->setCornersRadius(Lcom/android/server/wm/WindowState;I)V

    return-void
.end method

.method private updateWallpaperForLetterbox(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->isLetterboxWallpaperBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/LetterboxUiController;->mShowWallpaperForLetterboxBackground:Z

    if-eq v2, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/server/wm/LetterboxUiController;->mShowWallpaperForLetterboxBackground:Z

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    :cond_3
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "areBoundsLetterboxed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  letterboxReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxReasonString(Lcom/android/server/wm/WindowState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  letterboxAspectRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "shouldShowLetterboxUi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v2, :cond_2

    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  letterboxBackgroundColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  letterboxBackgroundType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v4}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wm/LetterboxConfiguration;->letterboxBackgroundTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v3}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  isLetterboxWallpaperBlurSupported="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->isLetterboxWallpaperBlurSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  letterboxBackgroundWallpaperDarkScrimAlpha="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  letterboxBackgroundWallpaperBlurRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  letterboxHorizontalPositionMultiplier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v4}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxHorizontalPositionMultiplier()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void
.end method

.method getLetterboxInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method hasWallpaperBackgroudForLetterbox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxUiController;->mShowWallpaperForLetterboxBackground:Z

    return v0
.end method

.method isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox;->notIntersectsOrFullyContains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isSurfaceReadyAndVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    nop

    :goto_2
    return v1
.end method

.method public synthetic lambda$layoutLetterbox$0$LetterboxUiController()Landroid/view/SurfaceControl$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method layoutLetterbox(Lcom/android/server/wm/WindowState;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_0

    if-eq v0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->updateRoundedCorners(Lcom/android/server/wm/WindowState;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->updateWallpaperForLetterbox(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/wm/Letterbox;

    new-instance v3, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LetterboxConfiguration;)V

    new-instance v6, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v7, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v8, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v9, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/Letterbox;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    iput-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Letterbox;->attachInput(Lcom/android/server/wm/WindowState;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->getPosition(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    nop

    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/LetterboxUiController;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->hide()V

    goto :goto_2

    :cond_5
    :goto_1
    nop

    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method onMovedToDisplay(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox;->onMovedToDisplay(I)V

    :cond_0
    return-void
.end method

.method shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isSurfaceReadyAndVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    return-void
.end method
