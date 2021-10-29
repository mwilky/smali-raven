.class Lcom/google/android/systemui/elmyra/UserContentObserver$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "UserContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/UserContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/UserContentObserver;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/UserContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/UserContentObserver$1;->this$0:Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/UserContentObserver$1;->this$0:Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/UserContentObserver;->access$000(Lcom/google/android/systemui/elmyra/UserContentObserver;)V

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/UserContentObserver$1;->this$0:Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/UserContentObserver;->access$200(Lcom/google/android/systemui/elmyra/UserContentObserver;)Ljava/util/function/Consumer;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/UserContentObserver$1;->this$0:Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/UserContentObserver;->access$100(Lcom/google/android/systemui/elmyra/UserContentObserver;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
