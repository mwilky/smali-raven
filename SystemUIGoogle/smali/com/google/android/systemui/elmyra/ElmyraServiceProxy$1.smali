.class public final Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;
.super Lcom/google/android/systemui/elmyra/IElmyraService$Stub;
.source "ElmyraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/IElmyraService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    sget v1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->$r8$clinit:I

    const-string v1, "com.google.android.elmyra.permission.CONFIGURE_ASSIST_GESTURE"

    const-string v2, "Must have com.google.android.elmyra.permission.CONFIGURE_ASSIST_GESTURE permission"

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, "Elmyra/ElmyraServiceProxy"

    const-string p1, "Binder token must not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_3

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object v1, v1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object v1, v1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;

    iget-object v1, v1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;

    iget-object v1, p1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;

    const-string v1, "com.google.android.systemui.elmyra.IElmyraServiceListener"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub$Proxy;

    invoke-direct {v1, p2}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-direct {v0, p1, v1}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;-><init>(Landroid/os/IBinder;Lcom/google/android/systemui/elmyra/IElmyraServiceListener;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-void
.end method
