.class public final Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback;
.super Ljava/lang/Object;
.source "NestDockManagerServiceCallback.java"

# interfaces
.implements Lcom/android/systemui/util/condition/Monitor$Callback;


# instance fields
.field public final mConnectionManager:Lcom/android/systemui/util/service/PersistentConnectionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/service/PersistentConnectionManager<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerComponent$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerComponent$Factory;->create()Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$NestDockManagerComponentImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$NestDockManagerComponentImpl;->getPersistentConnectionManager()Lcom/android/systemui/util/service/PersistentConnectionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback;->mConnectionManager:Lcom/android/systemui/util/service/PersistentConnectionManager;

    return-void
.end method


# virtual methods
.method public final onConditionsChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback;->mConnectionManager:Lcom/android/systemui/util/service/PersistentConnectionManager;

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
    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback;->mConnectionManager:Lcom/android/systemui/util/service/PersistentConnectionManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/service/PersistentConnectionManager;->stop()V

    :goto_0
    return-void
.end method
