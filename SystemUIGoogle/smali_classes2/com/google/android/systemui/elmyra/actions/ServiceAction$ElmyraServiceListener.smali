.class Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;
.super Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;
.source "ServiceAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/ServiceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElmyraServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;Lcom/google/android/systemui/elmyra/actions/ServiceAction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;-><init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)V

    return-void
.end method


# virtual methods
.method public setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->checkSupportedCaller()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->access$500(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->access$500(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-static {v1, v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->access$502(Lcom/google/android/systemui/elmyra/actions/ServiceAction;Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;)Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_2
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Elmyra/ServiceAction"

    const-string p2, "RemoteException during linkToDeath"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_4
    :goto_0
    return-void
.end method

.method public triggerAction()V
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
