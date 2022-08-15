.class Lcom/android/server/display/HighBrightnessModeController$HdrListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "HighBrightnessModeController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HighBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HdrListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method public static synthetic $r8$lambda$r1lbsH4bGo4__ef8k38i5NIU3W8(Lcom/android/server/display/HighBrightnessModeController$HdrListener;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->lambda$onHdrInfoChanged$0(III)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onHdrInfoChanged$0(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    if-lez p1, :cond_0

    mul-int/2addr p2, p3

    int-to-float p1, p2

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result p2

    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result p3

    mul-int/2addr p2, p3

    int-to-float p2, p2

    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHbmData(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object p3

    iget p3, p3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    mul-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmIsHdrLayerPresent(Lcom/android/server/display/HighBrightnessModeController;Z)V

    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmBrightness(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result p2

    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmUnthrottledBrightness(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result p3

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmThrottlingReason(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(FFI)V

    return-void
.end method


# virtual methods
.method public onHdrInfoChanged(Landroid/os/IBinder;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHandler(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;

    move-result-object p1

    new-instance p5, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p2, p3, p4}, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController$HdrListener;III)V

    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
