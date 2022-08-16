.class public final Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;
.super Ljava/lang/Object;
.source "MediaShellCallback.java"

# interfaces
.implements Lcom/android/systemui/util/condition/Monitor$Callback;


# instance fields
.field public mCallback:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback$1;

.field public final mConnectionManager:Lcom/android/systemui/util/service/PersistentConnectionManager;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mMediaShellComplication:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellComponent$Factory;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback$1;-><init>(Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;)V

    iput-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;->mCallback:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback$1;

    invoke-interface {p1, v0}, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellComponent$Factory;->create(Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback$1;)Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaShellComponentImpl;->getPersistentConnectionManager()Lcom/android/systemui/util/service/PersistentConnectionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;->mConnectionManager:Lcom/android/systemui/util/service/PersistentConnectionManager;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;->mMediaShellComplication:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;

    return-void
.end method


# virtual methods
.method public final onConditionsChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;->mConnectionManager:Lcom/android/systemui/util/service/PersistentConnectionManager;

    iget-object p1, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnection:Lcom/android/systemui/util/service/ObservableServiceConnection;

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnectionCallback:Lcom/android/systemui/util/service/PersistentConnectionManager$2;

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->addCallback(Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mObserver:Lcom/android/systemui/util/service/Observer;

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mObserverCallback:Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;

    invoke-interface {p1, v0}, Lcom/android/systemui/util/service/Observer;->addCallback(Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mReconnectAttempts:I

    iget-object p0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnection:Lcom/android/systemui/util/service/ObservableServiceConnection;

    invoke-virtual {p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->bind()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;->mConnectionManager:Lcom/android/systemui/util/service/PersistentConnectionManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/service/PersistentConnectionManager;->stop()V

    :goto_0
    return-void
.end method
