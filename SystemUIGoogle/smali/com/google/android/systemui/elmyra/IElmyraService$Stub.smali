.class public abstract Lcom/google/android/systemui/elmyra/IElmyraService$Stub;
.super Landroid/os/Binder;
.source "IElmyraService.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/IElmyraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/IElmyraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/IElmyraService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.systemui.elmyra.IElmyraService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.google.android.systemui.elmyra.IElmyraService"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_7

    const-string v1, "Elmyra/ElmyraServiceProxy"

    const-string v2, "Must have com.google.android.elmyra.permission.CONFIGURE_ASSIST_GESTURE permission"

    const-string v3, "com.google.android.elmyra.permission.CONFIGURE_ASSIST_GESTURE"

    if-eq p1, v0, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v1, 0x3

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

    check-cast p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;

    invoke-virtual {p0, p1, p3}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V

    goto/16 :goto_2

    :cond_2
    check-cast p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    sget p2, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->$r8$clinit:I

    invoke-virtual {p1, v3, v2}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_6

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object p2, p2, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;

    iget-object p2, p2, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;->mListener:Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object p2, p2, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener;->triggerAction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error launching assistant"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    sget p4, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->$r8$clinit:I

    invoke-virtual {p2, v3, v2}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object p2, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object p2, p2, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_6

    iget-object p4, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object p4, p4, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;

    iget-object p4, p4, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;->mListener:Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    if-nez p4, :cond_5

    iget-object p4, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object p4, p4, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {p4, p1, p3}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener;->setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Action isn\'t connected"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return v0

    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
