.class public Lcom/android/systemui/biometrics/SidefpsController;
.super Ljava/lang/Object;
.source "SidefpsController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private final mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsVisible:Z

.field final mOrientationListener:Lcom/android/systemui/biometrics/BiometricOrientationEventListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSidefpsControllerImpl:Landroid/hardware/fingerprint/ISidefpsController;

.field private mView:Lcom/android/systemui/biometrics/SidefpsView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$p92XJ3IHx49gD3hSrj-kKqBJ_-M(Lcom/android/systemui/biometrics/SidefpsController;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->lambda$new$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mIsVisible:Z

    new-instance v1, Lcom/android/systemui/biometrics/SidefpsController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/SidefpsController$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mSidefpsControllerImpl:Landroid/hardware/fingerprint/ISidefpsController;

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p4, p0, Lcom/android/systemui/biometrics/SidefpsController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p5, p0, Lcom/android/systemui/biometrics/SidefpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p3, Lcom/android/systemui/biometrics/BiometricOrientationEventListener;

    new-instance p5, Lcom/android/systemui/biometrics/SidefpsController$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0}, Lcom/android/systemui/biometrics/SidefpsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/SidefpsController;)V

    invoke-direct {p3, p1, p5, p6, p7}, Lcom/android/systemui/biometrics/BiometricOrientationEventListener;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/systemui/biometrics/SidefpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricOrientationEventListener;

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->findFirstSidefps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/16 p3, 0x7d9

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->getCoreLayoutParamFlags()I

    move-result p5

    const/4 p6, -0x3

    invoke-direct {p1, p3, p5, p6}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string p3, "SidefpsController"

    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 p3, 0x33

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p3, 0x3

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 p3, 0x20000000

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p3, p0, Lcom/android/systemui/biometrics/SidefpsController;->mDisplayHeight:I

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mDisplayWidth:I

    invoke-virtual {p2, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/SidefpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/SidefpsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->hide()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/biometrics/SidefpsController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mIsVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/SidefpsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->show()V

    return-void
.end method

.method private computeLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->getCoreLayoutParamFlags()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v1, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/android/systemui/biometrics/SidefpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x32

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/biometrics/SidefpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/systemui/biometrics/SidefpsController;->mDisplayWidth:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/SidefpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/systemui/biometrics/SidefpsController;->mDisplayHeight:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mDisplayWidth:I

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/biometrics/SidefpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x0

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private findFirstSidefps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 12

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v9, 0x19

    const/16 v10, 0x262

    const/16 v11, 0x70

    new-instance p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v3, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v4, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    iget v5, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    iget-object v6, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->componentInfo:Ljava/util/List;

    iget v7, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    iget-boolean v8, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZIII)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCoreLayoutParamFlags()I
    .locals 0

    const p0, 0x1000128

    return p0
.end method

.method private hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mView:Lcom/android/systemui/biometrics/SidefpsView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mView:Lcom/android/systemui/biometrics/SidefpsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mView:Lcom/android/systemui/biometrics/SidefpsView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mView:Lcom/android/systemui/biometrics/SidefpsView;

    goto :goto_0

    :cond_0
    const-string v0, "SidefpsController"

    const-string v1, "hideUdfpsOverlay | the overlay is already hidden"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricOrientationEventListener;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricOrientationEventListener;->disable()V

    return-void
.end method

.method private synthetic lambda$new$0()Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->onOrientationChanged()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mView:Lcom/android/systemui/biometrics/SidefpsView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mIsVisible:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->hide()V

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private show()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->sidefps_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/SidefpsView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mView:Lcom/android/systemui/biometrics/SidefpsView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/SidefpsView;->setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController;->mView:Lcom/android/systemui/biometrics/SidefpsView;

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController;->computeLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricOrientationEventListener;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricOrientationEventListener;->enable()V

    return-void
.end method
