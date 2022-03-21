.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/biometrics/UdfpsHbmProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final authControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
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

.field private final displayManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/DisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field private final ghbmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final lhbmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/DisplayManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->ghbmProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->lhbmProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->authControllerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->displayManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/DisplayManager;",
            ">;)",
            "Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;"
        }
    .end annotation

    new-instance v7, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideUdfpsHbmProvider(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;Lcom/android/systemui/biometrics/AuthController;Landroid/hardware/display/DisplayManager;)Lcom/android/systemui/biometrics/UdfpsHbmProvider;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideUdfpsHbmProvider(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;Lcom/android/systemui/biometrics/AuthController;Landroid/hardware/display/DisplayManager;)Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/biometrics/UdfpsHbmProvider;
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->ghbmProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;

    iget-object v0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->lhbmProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    iget-object v0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->authControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/biometrics/AuthController;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->displayManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/hardware/display/DisplayManager;

    invoke-static/range {v1 .. v6}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->provideUdfpsHbmProvider(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;Lcom/android/systemui/biometrics/AuthController;Landroid/hardware/display/DisplayManager;)Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmProviderFactory;->get()Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    move-result-object p0

    return-object p0
.end method
