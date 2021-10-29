.class public final Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;
.super Ljava/lang/Object;
.source "StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Optional<",
        "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final batteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseChargingViewControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;->batteryControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;->reverseChargingViewControllerLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;)",
            "Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideReverseChargingViewControllerOptional(Lcom/android/systemui/statusbar/policy/BatteryController;Ldagger/Lazy;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule;->provideReverseChargingViewControllerOptional(Lcom/android/systemui/statusbar/policy/BatteryController;Ldagger/Lazy;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;->batteryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;->reverseChargingViewControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;->provideReverseChargingViewControllerOptional(Lcom/android/systemui/statusbar/policy/BatteryController;Ldagger/Lazy;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
