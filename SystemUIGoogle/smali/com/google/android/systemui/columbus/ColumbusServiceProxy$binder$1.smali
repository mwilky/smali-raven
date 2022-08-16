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
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/IColumbusService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    sget v1, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->$r8$clinit:I

    const-string v1, "com.google.android.columbus.permission.CONFIGURE_COLUMBUS_GESTURE"

    const-string v2, "Must have com.google.android.columbus.permission.CONFIGURE_COLUMBUS_GESTURE permission"

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, "Columbus/ColumbusProxy"

    const-string p1, "Binder token must not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/ArrayList;

    new-instance p2, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1$registerServiceListener$1;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1$registerServiceListener$1;-><init>(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Z)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;

    const-string v1, "com.google.android.systemui.columbus.IColumbusServiceListener"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;

    invoke-direct {v1, p2}, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;-><init>(Landroid/os/IBinder;Lcom/google/android/systemui/columbus/IColumbusServiceListener;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
