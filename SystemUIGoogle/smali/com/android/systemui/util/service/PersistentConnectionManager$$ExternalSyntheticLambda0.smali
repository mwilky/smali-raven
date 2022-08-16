.class public final synthetic Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/util/service/Observer$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/service/PersistentConnectionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/service/PersistentConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/service/PersistentConnectionManager;

    return-void
.end method


# virtual methods
.method public final onSourceChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/service/PersistentConnectionManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mReconnectAttempts:I

    iget-object p0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnection:Lcom/android/systemui/util/service/ObservableServiceConnection;

    invoke-virtual {p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->bind()V

    return-void
.end method
