.class public final Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;
.super Ljava/lang/Object;
.source "LowLightClockControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final animationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final burnInProtectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/lowlightclock/BurnInProtector;",
            ">;"
        }
    .end annotation
.end field

.field public final chargingStatusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final layoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field public final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field public final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;Ljavax/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->resourcesProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->chargingStatusProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->animationProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->burnInProtectorProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->chargingStatusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->animationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->burnInProtectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/systemui/lowlightclock/BurnInProtector;

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/internal/logging/UiEventLogger;

    new-instance p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/os/PowerManager;Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;Lcom/google/android/systemui/lowlightclock/BurnInProtector;Lcom/android/internal/logging/UiEventLogger;)V

    return-object p0
.end method
