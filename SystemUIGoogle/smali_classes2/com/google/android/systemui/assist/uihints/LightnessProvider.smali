.class final Lcom/google/android/systemui/assist/uihints/LightnessProvider;
.super Ljava/lang/Object;
.source "LightnessProvider.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;


# instance fields
.field private mCardVisible:Z

.field private mColorMode:I

.field private final mColorMonitor:Landroid/view/CompositionSamplingListener;

.field private mIsMonitoringColor:Z

.field private mListener:Lcom/google/android/systemui/assist/uihints/LightnessListener;

.field private mMuted:Z

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mCardVisible:Z

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mColorMode:I

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mIsMonitoringColor:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mMuted:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;

    sget-object v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;-><init>(Lcom/google/android/systemui/assist/uihints/LightnessProvider;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mColorMonitor:Landroid/view/CompositionSamplingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)Lcom/google/android/systemui/assist/uihints/LightnessListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mListener:Lcom/google/android/systemui/assist/uihints/LightnessListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mMuted:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mCardVisible:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mColorMode:I

    return p0
.end method


# virtual methods
.method enableColorMonitoring(ZLandroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mIsMonitoringColor:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mIsMonitoringColor:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mColorMonitor:Landroid/view/CompositionSamplingListener;

    const/4 p1, 0x0

    invoke-static {p0, p1, p3, p2}, Landroid/view/CompositionSamplingListener;->register(Landroid/view/CompositionSamplingListener;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mColorMonitor:Landroid/view/CompositionSamplingListener;

    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    :goto_0
    return-void
.end method

.method public onCardInfo(ZIZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->setCardVisible(ZI)V

    return-void
.end method

.method setCardVisible(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mCardVisible:Z

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mColorMode:I

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mListener:Lcom/google/android/systemui/assist/uihints/LightnessListener;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/google/android/systemui/assist/uihints/LightnessListener;->onLightnessUpdate(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-interface {p0, p1}, Lcom/google/android/systemui/assist/uihints/LightnessListener;->onLightnessUpdate(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method setListener(Lcom/google/android/systemui/assist/uihints/LightnessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mListener:Lcom/google/android/systemui/assist/uihints/LightnessListener;

    return-void
.end method

.method setMuted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mMuted:Z

    return-void
.end method
