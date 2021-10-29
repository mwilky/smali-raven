.class public final Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;
.super Ljava/lang/Object;
.source "NgaInputHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final dismissablesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;",
            ">;>;"
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

.field private final touchablesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;",
            ">;>;"
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
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;->touchInsideHandlerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;->touchablesProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;->dismissablesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;",
            ">;>;)",
            "Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;-><init>(Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;->touchInsideHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;->touchablesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;->dismissablesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;->newInstance(Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;->get()Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    move-result-object p0

    return-object p0
.end method
