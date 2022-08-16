.class public abstract Lcom/google/android/systemui/columbus/IColumbusService$Stub;
.super Landroid/os/Binder;
.source "IColumbusService.java"

# interfaces
.implements Lcom/google/android/systemui/columbus/IColumbusService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/IColumbusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/IColumbusService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.systemui.columbus.IColumbusService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.google.android.systemui.columbus.IColumbusService"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;

    invoke-virtual {p0, p1, p3}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    sget p4, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->$r8$clinit:I

    const-string p4, "com.google.android.columbus.permission.CONFIGURE_COLUMBUS_GESTURE"

    const-string v1, "Must have com.google.android.columbus.permission.CONFIGURE_COLUMBUS_GESTURE permission"

    invoke-virtual {p2, p4, v1}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_5

    :goto_0
    add-int/lit8 p4, p2, -0x1

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;->listener:Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-interface {v1, p1, p3}, Lcom/google/android/systemui/columbus/IColumbusServiceListener;->setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Columbus/ColumbusProxy"

    const-string v3, "Cannot set listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    if-gez p4, :cond_4

    goto :goto_2

    :cond_4
    move p2, p4

    goto :goto_0

    :cond_5
    :goto_2
    return v0

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
