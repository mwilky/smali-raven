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
.field public final assistantPresenceHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final colorChangeHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final configurationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final keyboardMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public final taskStackNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;",
            ">;"
        }
    .end annotation
.end field

.field public final touchInsideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final touchOutsideHandlerProvider:Ljavax/inject/Provider;
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


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->touchInsideHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->touchOutsideHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->taskStackNotifierProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->keyboardMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->colorChangeHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideConfigInfoListenersFactory;->configurationHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;

    check-cast v2, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;

    check-cast v3, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;

    check-cast v4, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;

    new-instance v6, Ljava/util/HashSet;

    const/4 v7, 0x7

    new-array v7, v7, [Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object p0, v7, v0

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v6, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v6
.end method
