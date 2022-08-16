.class public final Lcom/android/systemui/util/service/PersistentConnectionManager$1;
.super Ljava/lang/Object;
.source "PersistentConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/service/PersistentConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/service/PersistentConnectionManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/service/PersistentConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/service/PersistentConnectionManager$1;->this$0:Lcom/android/systemui/util/service/PersistentConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager$1;->this$0:Lcom/android/systemui/util/service/PersistentConnectionManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mCurrentReconnectCancelable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnection:Lcom/android/systemui/util/service/ObservableServiceConnection;

    invoke-virtual {p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->bind()V

    return-void
.end method
