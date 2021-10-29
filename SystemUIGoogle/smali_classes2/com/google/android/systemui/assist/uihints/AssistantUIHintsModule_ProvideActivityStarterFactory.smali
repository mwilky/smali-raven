.class public final Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;
.super Ljava/lang/Object;
.source "AssistantUIHintsModule_ProvideActivityStarterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusBarLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;->statusBarLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideActivityStarter(Ldagger/Lazy;)Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule;->provideActivityStarter(Ldagger/Lazy;)Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;->statusBarLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;->provideActivityStarter(Ldagger/Lazy;)Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;->get()Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;

    move-result-object p0

    return-object p0
.end method
