.class public final Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$flashlightListener$1;
.super Ljava/lang/Object;
.source "ToggleFlashlight.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFlashlightAvailabilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->updateAvailable()V

    return-void
.end method

.method public final onFlashlightChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->updateAvailable()V

    return-void
.end method

.method public final onFlashlightError()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    iget-object v1, v0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->updateAvailable()V

    return-void
.end method
