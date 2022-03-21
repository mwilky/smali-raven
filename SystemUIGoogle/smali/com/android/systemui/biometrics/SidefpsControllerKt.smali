.class public final Lcom/android/systemui/biometrics/SidefpsControllerKt;
.super Ljava/lang/Object;
.source "SidefpsController.kt"


# direct methods
.method public static final synthetic access$addOverlayDynamicColor(Lcom/airbnb/lottie/LottieAnimationView;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->addOverlayDynamicColor(Lcom/airbnb/lottie/LottieAnimationView;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$addOverlayDynamicColor$update(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->addOverlayDynamicColor$update(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public static final synthetic access$asSideFpsAnimation(Landroid/view/Display;)I
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->asSideFpsAnimation(Landroid/view/Display;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$asSideFpsAnimationRotation(Landroid/view/Display;)F
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->asSideFpsAnimationRotation(Landroid/view/Display;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$hasBigNavigationBar(Landroid/view/WindowInsets;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->hasBigNavigationBar(Landroid/view/WindowInsets;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPortrait(Landroid/view/Display;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->isPortrait(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isReasonToShow(ILandroid/app/ActivityTaskManager;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->isReasonToShow(ILandroid/app/ActivityTaskManager;)Z

    move-result p0

    return p0
.end method

.method private static final addOverlayDynamicColor(Lcom/airbnb/lottie/LottieAnimationView;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->addOverlayDynamicColor$update(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$1;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    :goto_0
    return-void
.end method

.method private static final addOverlayDynamicColor$update(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 5

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_accent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const-string v0, ".blue600"

    const-string v1, ".blue400"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const-string v4, "**"

    aput-object v4, v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v3, Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$update$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$update$1;-><init>(I)V

    invoke-virtual {p1, v2, v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final asSideFpsAnimation(Landroid/view/Display;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget p0, Lcom/android/systemui/R$raw;->sfps_pulse_landscape:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$raw;->sfps_pulse:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/systemui/R$raw;->sfps_pulse:I

    :goto_0
    return p0
.end method

.method private static final asSideFpsAnimationRotation(Landroid/view/Display;)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x2

    const/high16 v1, 0x43340000    # 180.0f

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private static final hasBigNavigationBar(Landroid/view/WindowInsets;)Z
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    const/16 v0, 0x46

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isPortrait(Landroid/view/Display;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final isReasonToShow(ILandroid/app/ActivityTaskManager;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->topClass(Landroid/app/ActivityTaskManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.android.settings.biometrics.fingerprint.FingerprintSettings"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method private static final topClass(Landroid/app/ActivityTaskManager;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p0

    const-string v0, "getTasks(1)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_0
    const-string v0, ""

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    return-object v0
.end method
