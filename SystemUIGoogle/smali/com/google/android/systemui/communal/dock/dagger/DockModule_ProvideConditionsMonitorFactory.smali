.class public final Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideConditionsMonitorFactory;
.super Ljava/lang/Object;
.source "DockModule_ProvideConditionsMonitorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/condition/Monitor;",
        ">;"
    }
.end annotation


# instance fields
.field public final callbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/android/systemui/util/condition/Monitor$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field public final conditionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/android/systemui/util/condition/Condition;",
            ">;>;"
        }
    .end annotation
.end field

.field public final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/condition/dagger/MonitorComponent$Factory;",
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
            "Lcom/android/systemui/util/condition/dagger/MonitorComponent$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/android/systemui/util/condition/Condition;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/android/systemui/util/condition/Monitor$Callback;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideConditionsMonitorFactory;->factoryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideConditionsMonitorFactory;->conditionsProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideConditionsMonitorFactory;->callbacksProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideConditionsMonitorFactory;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/condition/dagger/MonitorComponent$Factory;

    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideConditionsMonitorFactory;->conditionsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideConditionsMonitorFactory;->callbacksProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/util/condition/dagger/MonitorComponent$Factory;->create(Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MonitorComponentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MonitorComponentImpl;->getMonitor()Lcom/android/systemui/util/condition/Monitor;

    move-result-object p0

    return-object p0
.end method
