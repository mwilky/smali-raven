.class Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1

.field static final SNAPSHOT_MODE_NONE:I = 0x2

.field static final SNAPSHOT_MODE_REAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mHighResTaskSnapshotScale:F

.field private final mIsRunningOnIoT:Z

.field private final mIsRunningOnTv:Z

.field private final mIsRunningOnWear:Z

.field private final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    sget-object v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    return-void
.end method

.method private createImeSnapshot(Lcom/android/server/wm/Task;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v3, v5, p2, v1}, Landroid/view/SurfaceControl;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    .locals 36

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    const/16 v5, 0xff

    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v15

    new-instance v16, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v7, v5, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v10, v7, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v11

    iget v12, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    move-object/from16 v7, v16

    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v10, v8

    iget v11, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v12, v9

    mul-float/2addr v12, v11

    float-to-int v11, v12

    const-string v12, "TaskSnapshotController"

    invoke-static {v12, v2}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v13, v10, v11}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {v12, v13}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    invoke-virtual {v12, v10, v11}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    invoke-virtual {v7, v15}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v13, v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {v12, v13}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    invoke-static {v12, v10, v11}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v16

    if-nez v16, :cond_2

    return-object v2

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v26, v2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v27, v0

    invoke-static {v2, v0}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v34, Landroid/window/TaskSnapshot;

    move-object/from16 v17, v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v35, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v22

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v24

    new-instance v0, Landroid/graphics/Point;

    move-object/from16 v25, v0

    invoke-direct {v0, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v30

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getAppearance(Lcom/android/server/wm/Task;)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v17 .. v33}, Landroid/window/TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZ)V

    return-object v34
.end method

.method private findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    sget-object v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private getAppearance(Lcom/android/server/wm/Task;)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method static getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .locals 2

    nop

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private handleClosingApps(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method static synthetic lambda$findAppTokenForSnapshot$0(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findAppTokenForSnapshot$1(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSurfaceShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private snapshotTasks(Landroid/util/ArraySet;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasCommittedReparentToAnimationLeash()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to take screenshot. No main window for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v1

    :cond_4
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public clearSnapshotCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotCache;->clearRunningCache()V

    return-void
.end method

.method createStartingSurface(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object v0

    return-object v0
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    nop

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_4

    :cond_3
    if-nez v4, :cond_5

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-array v7, v2, [Landroid/view/SurfaceControl;

    goto :goto_4

    :cond_5
    :goto_2
    new-array v7, v3, [Landroid/view/SurfaceControl;

    nop

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    :goto_3
    aput-object v8, v7, v2

    :goto_4
    if-nez v4, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p5, v2}, Landroid/window/TaskSnapshot$Builder;->setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;

    nop

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v2, v8, p2, p3, v7}, Landroid/view/SurfaceControl;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2

    if-eqz p4, :cond_8

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p4, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p4, Landroid/graphics/Point;->y:I

    :cond_8
    if-nez v2, :cond_9

    move-object v8, v1

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    :goto_5
    nop

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v9

    if-le v9, v3, :cond_b

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v9

    if-gt v9, v3, :cond_a

    goto :goto_6

    :cond_a
    return-object v2

    :cond_b
    :goto_6
    return-object v1
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;FLandroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 7

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    invoke-virtual {p2}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHighResTaskSnapshotScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/window/TaskSnapshot;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->enableLowResSnapshots()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    return v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldUseAppThemeSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$screenTurningOff$2$TaskSnapshotController(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    nop

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    throw v0
.end method

.method public synthetic lambda$snapshotForSleeping$3$TaskSnapshotController(Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    :cond_0
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    return-void
.end method

.method onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    return-void
.end method

.method prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/window/TaskSnapshot$Builder;)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    invoke-virtual {p3, v6}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p3, v7, v8}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p3, v4}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p3, v5}, Landroid/window/TaskSnapshot$Builder;->setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v8

    if-nez p2, :cond_4

    iget-object v9, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v9}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v7, :cond_2

    if-nez v8, :cond_3

    :cond_2
    const/4 v9, 0x4

    goto :goto_1

    :cond_3
    move v9, v6

    :goto_1
    move p2, v9

    :cond_4
    invoke-static {p2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    move v1, v6

    goto :goto_2

    :cond_6
    nop

    :goto_2
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v9}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p3, p2}, Landroid/window/TaskSnapshot$Builder;->setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p3, v1}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p3, v9}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v9

    invoke-virtual {p3, v9}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v9

    invoke-virtual {p3, v9}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getAppearance(Lcom/android/server/wm/Task;)I

    move-result v9

    invoke-virtual {p3, v9}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    return v6
.end method

.method recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v1

    nop

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v5, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/window/TaskSnapshot;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid task snapshot dimensions "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    return-void
.end method

.method removeSnapshotCache(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    return-void
.end method

.method screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setPersisterPaused(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    return-void
.end method

.method shouldDisableSnapshots()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

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

.method snapshotForSleeping(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method snapshotImeFromAttachedTask(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    nop

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createImeSnapshot(Lcom/android/server/wm/Task;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;I)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapshotTask(Lcom/android/server/wm/Task;I)Landroid/window/TaskSnapshot;
    .locals 3

    new-instance v0, Landroid/window/TaskSnapshot$Builder;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotController;->prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/window/TaskSnapshot$Builder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    nop

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    move-result-object v2

    return-object v2
.end method

.method snapshotTasks(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    return-void
.end method

.method systemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    return-void
.end method
