.class public final Lcom/google/android/systemui/assist/uihints/LightnessProvider;
.super Ljava/lang/Object;
.source "LightnessProvider.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;


# instance fields
.field public mCardVisible:Z

.field public mColorMode:I

.field public final mColorMonitor:Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;

.field public mIsMonitoringColor:Z

.field public mListener:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;

.field public mMuted:Z

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
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

    new-instance v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;-><init>(Lcom/google/android/systemui/assist/uihints/LightnessProvider;Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda1;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mColorMonitor:Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;

    return-void
.end method


# virtual methods
.method public final onCardInfo(ZZIZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mCardVisible:Z

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mColorMode:I

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mListener:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;->onLightnessUpdate(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;->onLightnessUpdate(F)V

    :cond_1
    :goto_0
    return-void
.end method
