.class public abstract Lcom/google/android/systemui/elmyra/actions/ServiceAction;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source "ServiceAction.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;,
        Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;
    }
.end annotation


# instance fields
.field private mElmyraService:Lcom/google/android/systemui/elmyra/IElmyraService;

.field private final mElmyraServiceConnection:Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;

.field private mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

.field private final mElmyraServiceListener:Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mToken:Landroid/os/IBinder;

    new-instance p1, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;-><init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;Lcom/google/android/systemui/elmyra/actions/ServiceAction$1;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceConnection:Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;-><init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;Lcom/google/android/systemui/elmyra/actions/ServiceAction$1;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceListener:Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Elmyra/ServiceAction"

    const-string p2, "Unable to bind to ElmyraServiceProxy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)Lcom/google/android/systemui/elmyra/IElmyraService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraService:Lcom/google/android/systemui/elmyra/IElmyraService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/android/systemui/elmyra/actions/ServiceAction;Lcom/google/android/systemui/elmyra/IElmyraService;)Lcom/google/android/systemui/elmyra/IElmyraService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraService:Lcom/google/android/systemui/elmyra/IElmyraService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceListener:Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/android/systemui/elmyra/actions/ServiceAction;Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;)Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    return-object p1
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "Elmyra/ServiceAction"

    const-string v1, "Binder died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    return-void
.end method

.method protected abstract checkSupportedCaller()Z
.end method

.method protected checkSupportedCaller(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onProgress(FI)V
    .locals 3

    const-string v0, "Elmyra/ServiceAction"

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(FI)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-interface {v2, p1, p2}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;->onGestureProgress(FI)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Unable to send progress, setting listener to null"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "Listener crashed or closed without unregistering"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onServiceConnected()V
    .locals 0

    return-void
.end method

.method protected onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    const-string v0, "Elmyra/ServiceAction"

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-interface {v1}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;->onGestureDetected()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to send onGestureDetected; removing listener"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Listener crashed or closed without unregistering"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerAction()V
    .locals 0

    return-void
.end method
