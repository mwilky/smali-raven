.class public final Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;
.super Lcom/google/android/systemui/columbus/actions/UserAction;
.source "ToggleFlashlight.kt"


# static fields
.field public static final FLASHLIGHT_TIMEOUT:J


# instance fields
.field public final flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field public final handler:Landroid/os/Handler;

.field public final tag:Ljava/lang/String;

.field public final turnOffFlashlight:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->FLASHLIGHT_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/actions/UserAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "ToggleFlashlight"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->tag:Ljava/lang/String;

    new-instance p1, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$flashlightListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$flashlightListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;)V

    new-instance p3, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;-><init>(Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->updateAvailable()V

    return-void
.end method


# virtual methods
.method public final availableOnLockscreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;

    sget-wide v1, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->FLASHLIGHT_TIMEOUT:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_FLASHLIGHT_TOGGLE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final updateAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->hasFlashlight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method
