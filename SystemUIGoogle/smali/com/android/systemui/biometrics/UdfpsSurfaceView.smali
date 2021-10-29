.class public Lcom/android/systemui/biometrics/UdfpsSurfaceView;
.super Landroid/view/SurfaceView;
.source "UdfpsSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/UdfpsSurfaceView$GhbmIlluminationListener;
    }
.end annotation


# instance fields
.field mAwaitingSurfaceToStartIllumination:Z

.field private mGhbmIlluminationListener:Lcom/android/systemui/biometrics/UdfpsSurfaceView$GhbmIlluminationListener;

.field mHasValidSurface:Z

.field private final mHolder:Landroid/view/SurfaceHolder;

.field private mOnIlluminatedRunnable:Ljava/lang/Runnable;

.field private final mSensorPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p2, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 p0, 0xff

    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private doIlluminate(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mGhbmIlluminationListener:Lcom/android/systemui/biometrics/UdfpsSurfaceView$GhbmIlluminationListener;

    if-nez v0, :cond_0

    const-string p0, "UdfpsSurfaceView"

    const-string p1, "doIlluminate | mGhbmIlluminationListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView$GhbmIlluminationListener;->enableGhbm(Landroid/view/Surface;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method drawIlluminationDot(Landroid/graphics/RectF;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHasValidSurface:Z

    if-nez v0, :cond_0

    const-string p0, "UdfpsSurfaceView"

    const-string p1, "drawIlluminationDot | the surface is destroyed or was never created."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    throw p1
.end method

.method setGhbmIlluminationListener(Lcom/android/systemui/biometrics/UdfpsSurfaceView$GhbmIlluminationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mGhbmIlluminationListener:Lcom/android/systemui/biometrics/UdfpsSurfaceView$GhbmIlluminationListener;

    return-void
.end method

.method startGhbmIllumination(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mGhbmIlluminationListener:Lcom/android/systemui/biometrics/UdfpsSurfaceView$GhbmIlluminationListener;

    if-nez v0, :cond_0

    const-string p0, "UdfpsSurfaceView"

    const-string p1, "startIllumination | mGhbmIlluminationListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHasValidSurface:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->doIlluminate(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mAwaitingSurfaceToStartIllumination:Z

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mOnIlluminatedRunnable:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHasValidSurface:Z

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mAwaitingSurfaceToStartIllumination:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mOnIlluminatedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->doIlluminate(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mOnIlluminatedRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mAwaitingSurfaceToStartIllumination:Z

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHasValidSurface:Z

    return-void
.end method
