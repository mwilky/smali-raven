.class public final Lcom/android/systemui/biometrics/SidefpsController;
.super Ljava/lang/Object;
.source "SidefpsController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidefpsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidefpsController.kt\ncom/android/systemui/biometrics/SidefpsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,283:1\n256#2,2:284\n*E\n*S KotlinDebug\n*F\n+ 1 SidefpsController.kt\ncom/android/systemui/biometrics/SidefpsController\n*L\n75#1,2:284\n*E\n"
.end annotation


# instance fields
.field private final activityTaskManager:Landroid/app/ActivityTaskManager;

.field private final animationDuration:J

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

.field private overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

.field private overlayView:Landroid/view/View;

.field private final overlayViewParams:Landroid/view/WindowManager$LayoutParams;

.field private final overviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private final sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/recents/OverviewProxyService;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTaskManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overviewProxyService"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/biometrics/SidefpsController;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    invoke-direct {v4, p1}, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;-><init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    new-instance v5, Lcom/android/systemui/biometrics/SidefpsController$orientationListener$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/SidefpsController$orientationListener$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;)V

    move-object v0, p2

    move-object v2, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/BiometricDisplayListener;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;Lkotlin/jvm/functions/Function0;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController;->orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    new-instance p1, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    iget-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x10e0001

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p4, p2

    iput-wide p4, p0, Lcom/android/systemui/biometrics/SidefpsController;->animationDuration:J

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

    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

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

.method public static final synthetic access$createOverlayForDisplay(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->createOverlayForDisplay()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActivityTaskManager$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/app/ActivityTaskManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->activityTaskManager:Landroid/app/ActivityTaskManager;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getOverlayView$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getOverlayViewParams$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayViewParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static final synthetic access$getWindowManager$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static final synthetic access$onOrientationChanged(Lcom/android/systemui/biometrics/SidefpsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->onOrientationChanged()V

    return-void
.end method

.method public static final synthetic access$setOverlayHideAnimator$p(Lcom/android/systemui/biometrics/SidefpsController;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static final synthetic access$setOverlayView(Lcom/android/systemui/biometrics/SidefpsController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/SidefpsController;->setOverlayView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$updateOverlayParams(Lcom/android/systemui/biometrics/SidefpsController;Landroid/view/Display;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/SidefpsController;->updateOverlayParams(Landroid/view/Display;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static final synthetic access$updateOverlayVisibility(Lcom/android/systemui/biometrics/SidefpsController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/SidefpsController;->updateOverlayVisibility(Landroid/view/View;)V

    return-void
.end method

.method private final createOverlayForDisplay()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->sidefps_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v3, Lcom/android/systemui/R$id;->sidefps_animation:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.airbnb.lottie.LottieAnimationView"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v1}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->access$asSideFpsAnimation(Landroid/view/Display;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-static {v1}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->access$asSideFpsAnimationRotation(Landroid/view/Display;)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/biometrics/SidefpsController;->updateOverlayParams(Landroid/view/Display;Landroid/graphics/Rect;)V

    new-instance v2, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;Landroid/view/View;Landroid/view/Display;)V

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->context:Landroid/content/Context;

    invoke-static {v3, p0}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->access$addOverlayDynamicColor(Lcom/airbnb/lottie/LottieAnimationView;Landroid/content/Context;)V

    const-string/jumbo p0, "view"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic getOrientationListener$annotations()V
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

.method private final onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->createOverlayForDisplay()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/SidefpsController;->setOverlayView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final setOverlayView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/SidefpsController;->getOrientationListener()Lcom/android/systemui/biometrics/BiometricDisplayListener;

    move-result-object v0

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

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/SidefpsController;->updateOverlayVisibility(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/SidefpsController;->getOrientationListener()Lcom/android/systemui/biometrics/BiometricDisplayListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDisplayListener;->enable()V

    :goto_2
    return-void
.end method

.method private final updateOverlayParams(Landroid/view/Display;Landroid/graphics/Rect;)V
    .locals 5

    invoke-static {p1}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->access$isPortrait(Landroid/view/Display;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation(Ljava/lang/String;)Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No location specified for display: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SidefpsController"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/SidefpsController;->getSensorProps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    new-instance p1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, v1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance p1, Lkotlin/Pair;

    iget v1, v1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance p1, Lkotlin/Pair;

    iget p2, v1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayViewParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private final updateOverlayVisibility(Landroid/view/View;)V
    .locals 3

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
    const/4 v2, 0x3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const-string/jumbo v2, "windowManager.currentWindowMetrics.windowInsets"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->access$hasBigNavigationBar(Landroid/view/WindowInsets;)Z

    move-result v0

    if-eqz v0, :cond_3

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

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_2
    iput-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayHideAnimator:Landroid/view/ViewPropertyAnimator;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final getOrientationListener()Lcom/android/systemui/biometrics/BiometricDisplayListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    return-object p0
.end method

.method public final getSensorProps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method
