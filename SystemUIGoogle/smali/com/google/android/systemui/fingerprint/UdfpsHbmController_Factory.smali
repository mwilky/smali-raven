.class public final Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;
.super Ljava/lang/Object;
.source "UdfpsHbmController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/fingerprint/UdfpsHbmController;",
        ">;"
    }
.end annotation


# instance fields
.field public final authControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;"
        }
    .end annotation
.end field

.field public final biometricExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final displayManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/DisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field public final executionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/Execution;",
            ">;"
        }
    .end annotation
.end field

.field public final lhbmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1

    sget-object v0, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider_Factory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider_Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->executionProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->biometricExecutorProvider:Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->lhbmProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->authControllerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->displayManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->executionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/concurrency/Execution;

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->biometricExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->lhbmProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->authControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/biometrics/AuthController;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController_Factory;->displayManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Landroid/hardware/display/DisplayManager;

    new-instance p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/Execution;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;Lcom/android/systemui/biometrics/AuthController;Landroid/hardware/display/DisplayManager;)V

    return-object p0
.end method
