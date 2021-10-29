.class public final Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;
.super Ljava/lang/Object;
.source "TouchInsideHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final assistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
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
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;->assistManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;->assistLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ldagger/Lazy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/assist/AssistLogger;)Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/assist/AssistLogger;",
            ")",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;-><init>(Ldagger/Lazy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/assist/AssistLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;->assistManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;->assistLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistLogger;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;->newInstance(Ldagger/Lazy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/assist/AssistLogger;)Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;->get()Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    move-result-object p0

    return-object p0
.end method
