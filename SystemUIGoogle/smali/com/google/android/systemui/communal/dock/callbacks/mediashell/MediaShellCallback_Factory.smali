.class public final Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback_Factory;
.super Ljava/lang/Object;
.source "MediaShellCallback_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final dreamOverlayStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dreams/DreamOverlayStateController;",
            ">;"
        }
    .end annotation
.end field

.field public final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaShellComplicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback_Factory;->factoryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback_Factory;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback_Factory;->mediaShellComplicationProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback_Factory;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellComponent$Factory;

    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback_Factory;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback_Factory;->mediaShellComplicationProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;

    new-instance v2, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;-><init>(Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellComponent$Factory;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;)V

    return-object v2
.end method
