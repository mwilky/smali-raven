.class public final Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;
.super Lcom/google/android/systemui/columbus/IColumbusService$Stub;
.source "ColumbusServiceProxy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusServiceProxy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/IColumbusService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerGestureListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->access$checkPermission(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->access$getColumbusServiceListeners$p(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-static {v2}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->access$getColumbusServiceListeners$p(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;

    invoke-virtual {v2}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;->getListener()Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-static {v2}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->access$getColumbusServiceListeners$p(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/google/android/systemui/columbus/IColumbusServiceListener;->setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Columbus/ColumbusProxy"

    const-string v4, "Cannot set listener"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-static {v2}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->access$getColumbusServiceListeners$p(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    if-gez v1, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->access$checkPermission(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)V

    if-nez p1, :cond_0

    const-string p0, "Columbus/ColumbusProxy"

    const-string p1, "Binder token must not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->access$getColumbusServiceListeners$p(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)Ljava/util/List;

    move-result-object p0

    new-instance p2, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1$registerServiceListener$1;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1$registerServiceListener$1;-><init>(Landroid/os/IBinder;)V

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->access$getColumbusServiceListeners$p(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;

    invoke-static {p2}, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;-><init>(Landroid/os/IBinder;Lcom/google/android/systemui/columbus/IColumbusServiceListener;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
