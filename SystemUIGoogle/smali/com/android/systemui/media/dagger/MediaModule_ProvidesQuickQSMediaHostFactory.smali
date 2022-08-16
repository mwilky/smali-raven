.class public final Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;
.super Ljava/lang/Object;
.source "MediaModule_ProvidesQuickQSMediaHostFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/media/MediaHost;",
        ">;"
    }
.end annotation


# instance fields
.field public final dataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field public final hierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field public final stateHolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final statesManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;->stateHolderProvider:Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;->hierarchyManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;->dataManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;->statesManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;->stateHolderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-object v1, p0, Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;->hierarchyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object v2, p0, Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;->dataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;->statesManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaHostStatesManager;

    new-instance v3, Lcom/android/systemui/media/MediaHost;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/media/MediaHost;-><init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaHostStatesManager;)V

    return-object v3
.end method
