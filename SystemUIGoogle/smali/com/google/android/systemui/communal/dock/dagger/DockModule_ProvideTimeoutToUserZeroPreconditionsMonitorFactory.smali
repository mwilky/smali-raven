.class public final Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsMonitorFactory;
.super Ljava/lang/Object;
.source "DockModule_ProvideTimeoutToUserZeroPreconditionsMonitorFactory.java"

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
.method public constructor <init>(Ljavax/inject/Provider;Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsMonitorFactory;->factoryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsMonitorFactory;->conditionsProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsMonitorFactory;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/condition/dagger/MonitorComponent$Factory;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsMonitorFactory;->conditionsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/util/condition/dagger/MonitorComponent$Factory;->create(Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MonitorComponentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MonitorComponentImpl;->getMonitor()Lcom/android/systemui/util/condition/Monitor;

    move-result-object p0

    return-object p0
.end method
