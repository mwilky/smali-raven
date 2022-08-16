.class public final Lcom/android/systemui/doze/DozeService_Factory;
.super Ljava/lang/Object;
.source "DozeService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/doze/DozeService;",
        ">;"
    }
.end annotation


# instance fields
.field public final dozeComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/dagger/DozeComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
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
            "Lcom/android/systemui/doze/dagger/DozeComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService_Factory;->dozeComponentBuilderProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeService_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->dozeComponentBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/plugins/PluginManager;

    new-instance v1, Lcom/android/systemui/doze/DozeService;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/doze/DozeService;-><init>(Lcom/android/systemui/doze/dagger/DozeComponent$Builder;Lcom/android/systemui/shared/plugins/PluginManager;)V

    return-object v1
.end method
