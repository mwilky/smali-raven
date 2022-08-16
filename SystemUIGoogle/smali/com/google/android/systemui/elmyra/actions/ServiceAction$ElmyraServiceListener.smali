.class public final Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;
.super Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;
.source "ServiceAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/ServiceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElmyraServiceListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->checkSupportedCaller()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    iget-object v0, v0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "com.google.android.systemui.elmyra.IElmyraServiceGestureListener"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;

    invoke-direct {v0, p2}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    iget-object v2, v1, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    if-eq v0, v2, :cond_4

    iput-object v0, v1, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_4
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Elmyra/ServiceAction"

    const-string p2, "RemoteException during linkToDeath"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_6
    :goto_1
    return-void
.end method

.method public final triggerAction()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->checkSupportedCaller()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->triggerAction()V

    return-void
.end method
