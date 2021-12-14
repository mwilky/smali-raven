.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideColumbusSoftGatesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/google/android/systemui/columbus/gates/Gate;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final chargingStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/ChargingState;",
            ">;"
        }
    .end annotation
.end field

.field private final screenTouchProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/ScreenTouch;",
            ">;"
        }
    .end annotation
.end field

.field private final systemKeyPressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SystemKeyPress;",
            ">;"
        }
    .end annotation
.end field

.field private final usbStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/UsbState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/ChargingState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/UsbState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SystemKeyPress;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/ScreenTouch;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;->chargingStateProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;->usbStateProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;->systemKeyPressProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;->screenTouchProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/ChargingState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/UsbState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SystemKeyPress;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/ScreenTouch;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideColumbusSoftGates(Lcom/google/android/systemui/columbus/gates/ChargingState;Lcom/google/android/systemui/columbus/gates/UsbState;Lcom/google/android/systemui/columbus/gates/SystemKeyPress;Lcom/google/android/systemui/columbus/gates/ScreenTouch;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/gates/ChargingState;",
            "Lcom/google/android/systemui/columbus/gates/UsbState;",
            "Lcom/google/android/systemui/columbus/gates/SystemKeyPress;",
            "Lcom/google/android/systemui/columbus/gates/ScreenTouch;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideColumbusSoftGates(Lcom/google/android/systemui/columbus/gates/ChargingState;Lcom/google/android/systemui/columbus/gates/UsbState;Lcom/google/android/systemui/columbus/gates/SystemKeyPress;Lcom/google/android/systemui/columbus/gates/ScreenTouch;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;->get()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;->chargingStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/gates/ChargingState;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;->usbStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/UsbState;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;->systemKeyPressProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;->screenTouchProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusSoftGatesFactory;->provideColumbusSoftGates(Lcom/google/android/systemui/columbus/gates/ChargingState;Lcom/google/android/systemui/columbus/gates/UsbState;Lcom/google/android/systemui/columbus/gates/SystemKeyPress;Lcom/google/android/systemui/columbus/gates/ScreenTouch;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
