.class public abstract Lcom/google/android/systemui/columbus/actions/ServiceAction;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "ServiceAction.kt"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;,
        Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceAction.kt\ncom/google/android/systemui/columbus/actions/ServiceAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1#2:140\n*E\n"
.end annotation


# instance fields
.field public columbusService:Lcom/google/android/systemui/columbus/IColumbusService;

.field public columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

.field public final columbusServiceListener:Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;

.field public final token:Landroid/os/Binder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->token:Landroid/os/Binder;

    new-instance v0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;

    move-object v1, p0

    check-cast v1, Lcom/google/android/systemui/columbus/actions/SettingsAction;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;-><init>(Lcom/google/android/systemui/columbus/actions/SettingsAction;)V

    new-instance v2, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;

    invoke-direct {v2, v1}, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;-><init>(Lcom/google/android/systemui/columbus/actions/SettingsAction;)V

    iput-object v2, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceListener:Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Columbus/ServiceAction"

    const-string v1, "Unable to bind to ColumbusServiceProxy"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->updateAvailable()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string v0, "Columbus/ServiceAction"

    const-string v1, "Binder died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->updateAvailable()V

    return-void
.end method

.method public final updateAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method
