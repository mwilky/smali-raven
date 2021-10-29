.class public final Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;
.super Ljava/lang/Object;
.source "AssistantUIHintsModule_ProvideConfigInfoListenersFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final assistantPresenceHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final colorChangeHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final keyboardMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final taskStackNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private final touchInsideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final touchOutsideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->touchInsideHandlerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->touchOutsideHandlerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->taskStackNotifierProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->keyboardMonitorProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->colorChangeHandlerProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->configurationHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;"
        }
    .end annotation

    new-instance v8, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideConfigInfoListeners(Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;",
            "Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;",
            ">;"
        }
    .end annotation

    move-object v2, p2

    check-cast v2, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;

    move-object v3, p3

    check-cast v3, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;

    move-object v4, p4

    check-cast v4, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule;->provideConfigInfoListeners(Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->get()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->touchInsideHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->touchOutsideHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->taskStackNotifierProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->keyboardMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->colorChangeHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->configurationHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;

    invoke-static/range {v1 .. v7}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->provideConfigInfoListeners(Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
