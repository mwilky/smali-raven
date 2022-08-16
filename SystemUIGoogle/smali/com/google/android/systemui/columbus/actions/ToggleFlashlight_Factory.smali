.class public final Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;
.super Ljava/lang/Object;
.source "ToggleFlashlight_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final flashlightControllerProvider:Ljavax/inject/Provider;

.field public final handlerProvider:Ljavax/inject/Provider;

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p5, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->flashlightControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->handlerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->flashlightControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    new-instance v3, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v3

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->flashlightControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;

    new-instance v3, Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/statusbar/SmartReplyController;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/NotificationClickNotifier;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
