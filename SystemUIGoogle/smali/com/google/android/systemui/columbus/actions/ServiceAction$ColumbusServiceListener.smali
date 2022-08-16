.class public final Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;
.super Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub;
.source "ServiceAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/actions/ServiceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ColumbusServiceListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/actions/SettingsAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 7

    const-string v0, "Columbus/ServiceAction"

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    iget-object v2, v1, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    check-cast v1, Lcom/google/android/systemui/columbus/actions/SettingsAction;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/actions/SettingsAction;->supportedCallerPackages:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    if-eqz v5, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v4

    :goto_2
    if-nez v1, :cond_4

    return-void

    :cond_4
    if-nez p2, :cond_5

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    const-string v2, "com.google.android.systemui.columbus.IColumbusServiceGestureListener"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_7

    instance-of v3, v2, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    goto :goto_3

    :cond_7
    new-instance v3, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener$Stub$Proxy;

    invoke-direct {v3, p2}, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_3
    iput-object v3, v1, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->updateAvailable()V

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    if-nez p2, :cond_9

    invoke-interface {p1, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_4

    :cond_9
    invoke-interface {p1, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string p1, "NoSuchElementException during linkToDeath"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    move-exception p0

    const-string p1, "RemoteException during linkToDeath"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method
