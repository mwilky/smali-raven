.class public final Lcom/android/systemui/screenshot/ScrollCaptureController;
.super Ljava/lang/Object;
.source "ScrollCaptureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;
    }
.end annotation


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public volatile mCancelled:Z

.field public mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;",
            ">;"
        }
    .end annotation
.end field

.field public final mClient:Lcom/android/systemui/screenshot/ScrollCaptureClient;

.field public final mContext:Landroid/content/Context;

.field public mEndFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final mEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mFinishOnBoundary:Z

.field public final mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

.field public mScrollingUp:Z

.field public mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

.field public mSessionFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

.field public mTileFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/android/systemui/screenshot/ScrollCaptureClient$CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowOwner:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ScrollCaptureClient;Lcom/android/systemui/screenshot/ImageTileSet;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mScrollingUp:Z

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mClient:Lcom/android/systemui/screenshot/ScrollCaptureClient;

    iput-object p4, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    iput-object p5, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final finishCapture()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_COMPLETED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mWindowOwner:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_FAILURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mWindowOwner:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    invoke-interface {v0}, Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;->end()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mEndFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    iget-object v0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {v0, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public getTargetTopSizeRatio()F
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const p0, 0x3ecccccd    # 0.4f

    return p0
.end method

.method public final onCaptureResult(Lcom/android/systemui/screenshot/ScrollCaptureClient$CaptureResult;)V
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/screenshot/ScrollCaptureClient$CaptureResult;->captured:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mFinishOnBoundary:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScrollCaptureController;->finishCapture()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTileSet;->clear()V

    iput-boolean v2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mFinishOnBoundary:Z

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mScrollingUp:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mScrollingUp:Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    iget-object v3, v3, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    invoke-interface {v2}, Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;->getMaxTiles()V

    const/16 v2, 0x1e

    if-lt v3, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScrollCaptureController;->finishCapture()V

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mScrollingUp:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mFinishOnBoundary:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScrollCaptureClient$CaptureResult;->captured:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    invoke-interface {v3}, Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;->getTargetHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ImageTileSet;->clear()V

    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mScrollingUp:Z

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    new-instance v2, Lcom/android/systemui/screenshot/ImageTile;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScrollCaptureClient$CaptureResult;->image:Landroid/media/Image;

    iget-object v4, p1, Lcom/android/systemui/screenshot/ScrollCaptureClient$CaptureResult;->captured:Landroid/graphics/Rect;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/screenshot/ImageTile;-><init>(Landroid/media/Image;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/ImageTileSet;->addTile(Lcom/android/systemui/screenshot/ImageTile;)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iget-object v3, v1, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v1, v1, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget p1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScrollCaptureController;->requestNextTile(I)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    invoke-interface {v2}, Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;->getTargetHeight()I

    move-result v2

    if-lt v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScrollCaptureController;->finishCapture()V

    return-void

    :cond_7
    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mScrollingUp:Z

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScrollCaptureClient$CaptureResult;->requested:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    invoke-interface {v0}, Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;->getTileHeight()I

    move-result v0

    goto :goto_2

    :cond_8
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScrollCaptureClient$CaptureResult;->requested:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_9
    iget-boolean p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mScrollingUp:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    invoke-interface {v0}, Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;->getTileHeight()I

    move-result v0

    :goto_2
    sub-int/2addr p1, v0

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScrollCaptureController;->requestNextTile(I)V

    return-void
.end method

.method public final requestNextTile(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mCancelled:Z

    if-eqz v0, :cond_0

    const-string p0, "Screenshot"

    const-string/jumbo p1, "requestNextTile: CANCELLED"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    invoke-interface {v0, p1}, Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;->requestTile(I)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mTileFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {p1, v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
