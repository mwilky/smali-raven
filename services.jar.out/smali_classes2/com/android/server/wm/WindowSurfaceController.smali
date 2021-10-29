.class Lcom/android/server/wm/WindowSurfaceController;
.super Ljava/lang/Object;
.source "WindowSurfaceController.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field final mAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mChildrenDetached:Z

.field private mLastDsdx:F

.field private mLastDsdy:F

.field private mLastDtdx:F

.field private mLastDtdy:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayer:I

.field private mSurfaceShown:Z

.field private mSurfaceX:F

.field private mSurfaceY:F

.field private final mWindowSession:Lcom/android/server/wm/Session;

.field private final mWindowType:I

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const/4 v5, 0x0

    iput v5, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    iput v5, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    iput v5, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    iput v5, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    iput v6, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    iput v5, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    iput v4, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    iput-object v2, v0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-object v1, v0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v5, v0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput v3, v0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v7, v0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    const-wide/16 v8, 0x20

    const-string v10, "new SurfaceControl"

    invoke-static {v8, v9, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual {v10, v11, v12}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    move/from16 v13, p4

    invoke-virtual {v10, v13}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    move/from16 v14, p5

    invoke-virtual {v10, v14}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    const/4 v15, 0x2

    invoke-virtual {v10, v15, v3}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    iget v15, v7, Lcom/android/server/wm/Session;->mUid:I

    const/4 v4, 0x1

    invoke-virtual {v10, v4, v15}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    const/4 v15, 0x6

    invoke-virtual {v10, v15, v7}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    const-string v10, "WindowSurfaceController"

    invoke-virtual {v7, v10}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mUseBLAST:Z

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v10, 0x2000000

    and-int/2addr v5, v10

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    :cond_1
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private hideSurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception hiding surface in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method clearWindowContentFrameStats()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->clearContentFrameStats()Z

    move-result v0

    return v0
.end method

.method destroy(Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x335c9d71    # -8.5660792E7f

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v5, v2, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error destroying surface in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " transform=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method getShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    return v0
.end method

.method getSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "WindowSurfaceController.getSurfaceControl"

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-void
.end method

.method getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method hasSurface()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x4b0b2788

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    return-void
.end method

.method prepareToShowInTransaction(Landroid/view/SurfaceControl$Transaction;F)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x1

    return v0
.end method

.method setColorSpaceAgnostic(Z)V
    .locals 10

    const-string v0, "setColorSpaceAgnostic"

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v1, :cond_0

    move v1, p1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x22dfdbf6

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1
.end method

.method setMatrix(Landroid/view/SurfaceControl$Transaction;FFFF)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    iget v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    cmpl-float v1, v1, v8

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    cmpl-float v1, v1, v9

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v11, v1

    if-nez v11, :cond_2

    return-void

    :cond_2
    iput v7, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    iput v8, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    iput v9, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    iput v10, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v1, :cond_3

    float-to-double v4, v7

    float-to-double v12, v8

    float-to-double v14, v9

    float-to-double v2, v10

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const/16 v16, 0x0

    aput-object v19, v7, v16

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v7, v17

    const/16 v16, 0x2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x4

    aput-object v1, v7, v16

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    const v1, 0x126b9102

    const/16 v2, 0xaa

    const/4 v3, 0x0

    invoke-static {v6, v1, v2, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method setOpaque(Z)V
    .locals 10

    const-string v0, "setOpaqueLocked"

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v1, :cond_0

    move v1, p1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x214ef67a

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1
.end method

.method setPosition(Landroid/view/SurfaceControl$Transaction;FF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget v3, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    cmpl-float v3, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    iget v3, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    if-nez v3, :cond_2

    return-void

    :cond_2
    iput v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    iput v2, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v6, :cond_3

    float-to-double v6, v1

    float-to-double v8, v2

    iget-object v10, v0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x25c4caf9

    const/16 v13, 0xa

    const/4 v14, 0x0

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v15, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v15, v5

    const/4 v4, 0x2

    aput-object v10, v15, v4

    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v5, p1

    invoke-virtual {v5, v4, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method setSecure(Z)V
    .locals 10

    const-string v0, "setSecure"

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v1, :cond_0

    move v1, p1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x461fcb9c

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1
.end method

.method setShown(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->onSurfaceShownChanged(Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/Session;->onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V

    :cond_0
    return-void
.end method

.method showRobustly(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x40f62b88

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
