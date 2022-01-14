.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field private mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private final mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mLastWallpaperZoomOut:F

.field private final mMaxWallpaperScale:F

.field private mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mShouldUpdateZoom:Z

.field private mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

.field private mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    new-instance v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$1;)V

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    return-void
.end method

.method private canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private computeLastWallpaperZoomOut()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    :cond_0
    return-void
.end method

.method private findWallpaperTarget()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isRootTaskVisible(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    :cond_1
    return-void
.end method

.method private isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$updateWallpaperWindowsTarget$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldWallpaperBeVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

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

.method private updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    :cond_1
    :goto_0
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_1

    :cond_2
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_4

    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_2

    :cond_4
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v1, v3, :cond_5

    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    :cond_5
    :goto_2
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_6

    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_3

    :cond_6
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_7

    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    :cond_7
    :goto_3
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_4

    :cond_8
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_9

    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    :cond_9
    :goto_4
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a

    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_5

    :cond_a
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_b

    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_c
    return-void
.end method

.method private updateWallpaperTokens(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 8

    iget-object v0, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_1
    if-eqz v0, :cond_b

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v6, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;

    invoke-direct {v6, v1}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_4

    return-void

    :cond_4
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v5, :cond_5

    move v5, v6

    goto :goto_0

    :cond_5
    move v5, v2

    :goto_0
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_6

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v7, :cond_6

    move v2, v6

    :cond_6
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_7

    if-nez v2, :cond_7

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_7
    if-ne v5, v2, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_9
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return-void

    :cond_a
    :goto_2
    return-void

    :cond_b
    :goto_3
    return-void

    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_e

    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_e
    return-void
.end method

.method private zoomOutToScale(F)F
    .locals 3

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method adjustWallpaperWindows()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget()V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_4

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(Z)V

    return-void
.end method

.method adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    :cond_3
    return-void
.end method

.method canScreenshotWallpaper()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method clearLastWallpaperTimeoutTime()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPrevWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_2
    return-void
.end method

.method getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    new-instance v3, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WallpaperController;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WallpaperWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeededLegacy()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->isVisibleRequested()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWallpaperTargetAnimating()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isWaitingForTransitionStart()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWallpaperVisible()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$getTopVisibleWallpaper$3$WallpaperController(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$new$0$WallpaperController(Lcom/android/server/wm/WindowState;)Z
    .locals 11

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x7dd

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iput-boolean v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v0

    const/4 v3, 0x3

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/android/server/wm/WindowContainer;->mTransit:I

    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_1

    :cond_7
    move v4, v1

    :goto_1
    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardUnoccluding()Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_8
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v6}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_9

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    move v6, v1

    goto :goto_3

    :cond_a
    :goto_2
    move v6, v2

    :goto_3
    move v5, v6

    :cond_b
    if-nez v4, :cond_c

    if-eqz v5, :cond_d

    :cond_c
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    :cond_d
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v6

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v2

    goto :goto_4

    :cond_e
    move v7, v1

    :goto_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v8

    if-nez v8, :cond_10

    if-eqz v7, :cond_f

    goto :goto_5

    :cond_f
    move v8, v1

    goto :goto_6

    :cond_10
    :goto_5
    move v8, v2

    :goto_6
    if-eqz v6, :cond_11

    invoke-virtual {v6, p1}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v9

    if-eqz v9, :cond_11

    move v9, v2

    goto :goto_7

    :cond_11
    move v9, v1

    :goto_7
    if-eqz v9, :cond_12

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return v2

    :cond_12
    if-eqz v8, :cond_15

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v10, p1, :cond_13

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_14

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    :cond_14
    return v2

    :cond_15
    return v1
.end method

.method public synthetic lambda$new$1$WallpaperController(Lcom/android/server/wm/WindowState;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    :cond_0
    return-void
.end method

.method processWallpaperDrawPendingTimeout()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method screenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    nop

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v4}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "WindowManager"

    const-string v5, "Failed to screenshot wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    nop

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v1, v2, :cond_2

    :cond_0
    move/from16 v2, p7

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    move-object v5, v4

    move-object v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    nop

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method setShouldZoomOutWallpaper(Lcom/android/server/wm/WindowState;Z)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_0
    return-void
.end method

.method setWallpaperZoomOut(Lcom/android/server/wm/WindowState;F)V
    .locals 1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_0
    return-void
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .locals 1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_1

    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_1
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_1
    return-void
.end method

.method startWallpaperAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    move v13, v5

    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    cmpl-float v8, v5, v7

    if-ltz v8, :cond_1

    goto :goto_1

    :cond_1
    move v5, v13

    :goto_1
    move v14, v5

    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    cmpl-float v8, v5, v7

    if-ltz v8, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v5, -0x40800000    # -1.0f

    :goto_2
    move v15, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v8

    sub-int v8, v5, v11

    const/high16 v16, 0x3f000000    # 0.5f

    if-lez v8, :cond_3

    int-to-float v5, v8

    mul-float/2addr v5, v14

    add-float v5, v5, v16

    float-to-int v5, v5

    neg-int v5, v5

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    iget v6, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v9, -0x80000000

    if-eq v6, v9, :cond_4

    add-int/2addr v5, v6

    :cond_4
    move v6, v5

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, v14

    if-nez v0, :cond_5

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_6

    :cond_5
    iput v14, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v15, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    const/4 v4, 0x1

    :cond_6
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    cmpl-float v20, v0, v7

    if-ltz v20, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v0, v16

    :goto_4
    move/from16 v20, v0

    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_8

    goto :goto_5

    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    :goto_5
    move v7, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v9

    sub-int v9, v0, v12

    if-lez v9, :cond_9

    int-to-float v0, v9

    move-object/from16 v21, v10

    move/from16 v10, v20

    mul-float/2addr v0, v10

    add-float v0, v0, v16

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_6

    :cond_9
    move-object/from16 v21, v10

    move/from16 v10, v20

    const/4 v0, 0x0

    :goto_6
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    move/from16 v16, v3

    const/high16 v3, -0x80000000

    if-eq v5, v3, :cond_a

    add-int/2addr v0, v5

    move/from16 v17, v0

    goto :goto_7

    :cond_a
    move/from16 v17, v0

    :goto_7
    move/from16 v5, v17

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_b

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_c

    :cond_b
    iput v10, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v7, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 v4, 0x1

    :cond_c
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v3, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iput v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    const/4 v4, 0x1

    move/from16 v16, v4

    goto :goto_8

    :cond_d
    move/from16 v16, v4

    :goto_8
    nop

    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eqz v0, :cond_e

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController;->zoomOutToScale(F)F

    move-result v0

    goto :goto_9

    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {v2, v6, v5, v0}, Lcom/android/server/wm/WindowState;->setWallpaperOffset(IIF)Z

    move-result v18

    if-eqz v16, :cond_12

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    if-eqz p2, :cond_f

    :try_start_0
    iput-object v2, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move/from16 v23, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v22, v8

    move/from16 v24, v9

    goto/16 :goto_c

    :cond_f
    :goto_a
    :try_start_1
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v19, v6

    :try_start_2
    iget v6, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    move/from16 v20, v7

    :try_start_3
    iget v7, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v22, v8

    :try_start_4
    iget v8, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v23, v5

    move v5, v0

    move/from16 v24, v9

    move/from16 v9, p2

    :try_start_5
    invoke-interface/range {v3 .. v9}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFFZ)V

    if-eqz p2, :cond_11

    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_10

    const-wide/16 v5, 0x96

    :try_start_6
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_b

    :catch_1
    move-exception v0

    :goto_b
    add-long/2addr v5, v3

    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_10

    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v3, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    :cond_10
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_11
    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    move/from16 v23, v5

    move/from16 v24, v9

    goto :goto_c

    :catch_4
    move-exception v0

    move/from16 v23, v5

    move/from16 v22, v8

    move/from16 v24, v9

    goto :goto_c

    :catch_5
    move-exception v0

    move/from16 v23, v5

    move/from16 v20, v7

    move/from16 v22, v8

    move/from16 v24, v9

    goto :goto_c

    :catch_6
    move-exception v0

    move/from16 v23, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v22, v8

    move/from16 v24, v9

    goto :goto_c

    :cond_12
    move/from16 v23, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v22, v8

    move/from16 v24, v9

    :goto_c
    return v18
.end method

.method updateWallpaperVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->shouldWallpaperBeVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method wallpaperTransitionReady()Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/16 v4, 0x27

    if-ltz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-nez v6, :cond_2

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    :cond_3
    return v0
.end method
