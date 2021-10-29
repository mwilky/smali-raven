.class public final Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;
.super Ljava/lang/Object;
.source "OpaHomeButton_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyguardViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final navModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
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
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;->statusBarProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;->navModeControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;)",
            "Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/navigationbar/NavigationModeController;)Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/navigationbar/NavigationModeController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;->navModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;->newInstance(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/navigationbar/NavigationModeController;)Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton_Factory;->get()Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;

    move-result-object p0

    return-object p0
.end method
