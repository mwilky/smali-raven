.class public final Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;
.super Ljava/lang/Object;
.source "ToggleFlashlight.kt"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;->this$0:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight$turnOffFlashlight$1;->this$0:Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    return-void
.end method
