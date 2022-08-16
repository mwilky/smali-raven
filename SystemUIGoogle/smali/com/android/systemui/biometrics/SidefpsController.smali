.class public final Lcom/android/systemui/biometrics/SidefpsController;
.super Ljava/lang/Object;
.source "SidefpsController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidefpsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidefpsController.kt\ncom/android/systemui/biometrics/SidefpsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,322:1\n286#2,2:323\n*S KotlinDebug\n*F\n+ 1 SidefpsController.kt\ncom/android/systemui/biometrics/SidefpsController\n*L\n79#1:323,2\n*E\n"
.end annotation


# instance fields
.field public final activityTaskManager:Landroid/app/ActivityTaskManager;

.field public final animationDuration:J

.field public final context:Landroid/content/Context;

.field public final handler:Landroid/os/Handler;

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

.field public overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

.field public overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

.field public overlayView:Landroid/view/View;

.field public final overlayViewParams:Landroid/view/WindowManager$LayoutParams;

.field public final overviewProxyListener:Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;

.field public final sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/recents/OverviewProxyService;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/systemui/biometrics/SidefpsController;->windowManager:Landroid/view/WindowManager;

    iput-object p5, p0, Lcom/android/systemui/biometrics/SidefpsController;->activityTaskManager:Landroid/app/ActivityTaskManager;

    iput-object p9, p0, Lcom/android/systemui/biometrics/SidefpsController;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object p5, p4

    check-cast p5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p5}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result p5

    if-eqz p5, :cond_2

    move-object p1, p4

    :cond_3
    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    :goto_0
    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    new-instance p2, Lcom/android/systemui/biometrics/BiometricDisplayListener;

    iget-object p4, p0, Lcom/android/systemui/biometrics/SidefpsController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/biometrics/SidefpsController;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    invoke-direct {v4, p1}, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;-><init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    new-instance v5, Lcom/android/systemui/biometrics/SidefpsController$orientationListener$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/SidefpsController$orientationListener$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;)V

    move-object v0, p2

    move-object v1, p4

    move-object v2, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/BiometricDisplayListener;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;Lkotlin/jvm/functions/Function0;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController;->orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    new-instance p1, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overviewProxyListener:Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x10e0001

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p4, p2

    iput-wide p4, p0, Lcom/android/systemui/biometrics/SidefpsController;->animationDuration:J

    sget-object p2, Landroid/hardware/biometrics/SensorLocationInternal;->DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7da

    const v4, 0x1000128

    const/4 v5, -0x3

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string p4, "SidefpsController"

    invoke-virtual {p2, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 p4, 0x33

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p4, 0x3

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 p4, 0x20000000

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayViewParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/android/systemui/biometrics/SidefpsController$1;

    invoke-direct {p2, p0, p8}, Lcom/android/systemui/biometrics/SidefpsController$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    invoke-virtual {p3, p2}, Landroid/hardware/fingerprint/FingerprintManager;->setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V

    :goto_1
    invoke-virtual {p6, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no side fingerprint sensor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getOrientationListener$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getOverlayOffsets$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getOverviewProxyListener$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getSensorProps$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public final createOverlayForDisplay()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0e021f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/SidefpsController;->setOverlayView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/SidefpsController;->sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation(Ljava/lang/String;)Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No location specified for display: "

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SidefpsController"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/biometrics/SidefpsController;->sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    const v4, 0x7f0b05f8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    iget v5, v2, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v10, 0x2

    if-eq v7, v6, :cond_4

    if-eq v7, v10, :cond_5

    const/4 v11, 0x3

    if-eq v7, v11, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_6

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move v8, v9

    :cond_6
    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setRotation(F)V

    iget v2, v2, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    if-eqz v2, :cond_7

    move v3, v6

    :cond_7
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    const v5, 0x7f120007

    const v6, 0x7f120008

    if-eqz v2, :cond_9

    if-eq v2, v10, :cond_8

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_a

    goto :goto_4

    :cond_9
    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    move v5, v6

    :cond_b
    :goto_4
    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    new-instance v2, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;Landroid/view/View;Landroid/view/Display;)V

    invoke-virtual {v4, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {p0, v4}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->addOverlayDynamicColor$update(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    goto :goto_5

    :cond_c
    new-instance v1, Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$1;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$1;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v4, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    :goto_5
    new-instance p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$2;

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$2;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void

    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.airbnb.lottie.LottieAnimationView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOverlayView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/BiometricDisplayListener;->disable()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayView:Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/SidefpsController;->updateOverlayVisibility(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDisplayListener;->enable()V

    :goto_2
    return-void
.end method

.method public final updateOverlayParams$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/Display;Landroid/graphics/Rect;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/biometrics/SidefpsController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    iget v0, v0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    if-eqz v1, :cond_7

    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, v4, v5

    iget-object v5, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    iget v5, v5, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    add-int/2addr p2, v5

    invoke-direct {v0, v1, v5, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_7

    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    iget v1, v1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    add-int/2addr v5, v1

    invoke-direct {v0, v1, v2, v5, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_7
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {v0, p2, p1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayViewParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController;->windowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayView:Landroid/view/View;

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateOverlayVisibility(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayView:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/SidefpsController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    const/16 v3, 0x46

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    if-eqz v2, :cond_9

    const/4 v2, 0x3

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    iget v2, v2, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_2
    if-nez v2, :cond_8

    :cond_5
    :goto_3
    const/4 v2, 0x2

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    iget v0, v0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    if-nez v4, :cond_9

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->animationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/SidefpsController$updateOverlayVisibility$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/biometrics/SidefpsController$updateOverlayVisibility$1;-><init>(Landroid/view/View;Lcom/android/systemui/biometrics/SidefpsController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

    goto :goto_7

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_6
    iput-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    return-void
.end method
