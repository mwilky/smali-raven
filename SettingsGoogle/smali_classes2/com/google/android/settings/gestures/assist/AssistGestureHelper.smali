.class public Lcom/google/android/settings/gestures/assist/AssistGestureHelper;
.super Ljava/lang/Object;
.source "AssistGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;
    }
.end annotation


# instance fields
.field private mBoundToService:Z

.field private mContext:Landroid/content/Context;

.field private final mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

.field private mGestureListener:Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mService:Lcom/google/android/systemui/elmyra/IElmyraService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mToken:Landroid/os/IBinder;

    new-instance v0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$1;-><init>(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)V

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;

    invoke-direct {v0, p0}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;-><init>(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)V

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)Lcom/google/android/systemui/elmyra/IElmyraService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mService:Lcom/google/android/systemui/elmyra/IElmyraService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;Lcom/google/android/systemui/elmyra/IElmyraService;)Lcom/google/android/systemui/elmyra/IElmyraService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mService:Lcom/google/android/systemui/elmyra/IElmyraService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mGestureListener:Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method


# virtual methods
.method public bindToElmyraServiceProxy()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mService:Lcom/google/android/systemui/elmyra/IElmyraService;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.google.android.systemui.elmyra.ElmyraServiceProxy"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    iput-boolean v4, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mBoundToService:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AssistGestureHelper"

    const-string v1, "Unable to bind to ElmyraService"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public launchAssistant()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mService:Lcom/google/android/systemui/elmyra/IElmyraService;

    invoke-interface {p0}, Lcom/google/android/systemui/elmyra/IElmyraService;->triggerAction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AssistGestureHelper"

    const-string v1, "Error invoking triggerAction()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setListener(Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mGestureListener:Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mService:Lcom/google/android/systemui/elmyra/IElmyraService;

    const-string v1, "AssistGestureHelper"

    if-nez v0, :cond_0

    const-string p0, "Service is null, should try to reconnect"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {v0, v2, p0}, Lcom/google/android/systemui/elmyra/IElmyraService;->registerGestureListener(Landroid/os/IBinder;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lcom/google/android/systemui/elmyra/IElmyraService;->registerGestureListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string p1, "unregister"

    goto :goto_0

    :cond_2
    const-string p1, "register"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " listener"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public unbindFromElmyraServiceProxy()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mBoundToService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->mBoundToService:Z

    :cond_0
    return-void
.end method
