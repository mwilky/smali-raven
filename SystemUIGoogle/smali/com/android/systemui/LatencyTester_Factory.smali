.class public final Lcom/android/systemui/LatencyTester_Factory;
.super Ljava/lang/Object;
.source "LatencyTester_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/LatencyTester;",
        ">;"
    }
.end annotation


# instance fields
.field private final biometricUnlockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/LatencyTester_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/LatencyTester_Factory;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/LatencyTester_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/LatencyTester_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)",
            "Lcom/android/systemui/LatencyTester_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/LatencyTester_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/LatencyTester_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/android/systemui/LatencyTester;
    .locals 1

    new-instance v0, Lcom/android/systemui/LatencyTester;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/LatencyTester;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/LatencyTester;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/LatencyTester_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/LatencyTester_Factory;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object p0, p0, Lcom/android/systemui/LatencyTester_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/LatencyTester_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/android/systemui/LatencyTester;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/LatencyTester_Factory;->get()Lcom/android/systemui/LatencyTester;

    move-result-object p0

    return-object p0
.end method
