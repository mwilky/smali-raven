.class public final Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;
.super Ljava/lang/Object;
.source "AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final edgeLightsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;",
            ">;"
        }
    .end annotation
.end field

.field private final ngaInputHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;",
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
            "Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;->edgeLightsControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;->ngaInputHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static bindEdgeLightsInfoListeners(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;",
            "Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule;->bindEdgeLightsInfoListeners(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;->get()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;->edgeLightsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;->ngaInputHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    invoke-static {v0, p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_BindEdgeLightsInfoListenersFactory;->bindEdgeLightsInfoListeners(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
