.class public abstract Lcom/google/android/systemui/columbus/actions/ServiceAction;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "ServiceAction.kt"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;,
        Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;,
        Lcom/google/android/systemui/columbus/actions/ServiceAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceAction.kt\ncom/google/android/systemui/columbus/actions/ServiceAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1#2:140\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/ServiceAction$Companion;


# instance fields
.field private columbusService:Lcom/google/android/systemui/columbus/IColumbusService;

.field private final columbusServiceConnection:Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;

.field private columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

.field private final columbusServiceListener:Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;

.field private final supportedCallerPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/ServiceAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/ServiceAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->Companion:Lcom/google/android/systemui/columbus/actions/ServiceAction$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "+",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->supportedCallerPackages:Ljava/util/Set;

    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->token:Landroid/os/IBinder;

    new-instance p2, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;-><init>(Lcom/google/android/systemui/columbus/actions/ServiceAction;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceConnection:Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;

    new-instance v0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;-><init>(Lcom/google/android/systemui/columbus/actions/ServiceAction;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceListener:Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Columbus/ServiceAction"

    const-string v0, "Unable to bind to ColumbusServiceProxy"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->updateAvailable()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/ServiceAction;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$getColumbusService$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;)Lcom/google/android/systemui/columbus/IColumbusService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusService:Lcom/google/android/systemui/columbus/IColumbusService;

    return-object p0
.end method

.method public static final synthetic access$getColumbusServiceGestureListener$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;)Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    return-object p0
.end method

.method public static final synthetic access$getColumbusServiceListener$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;)Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceListener:Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;

    return-object p0
.end method

.method public static final synthetic access$getToken$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method public static final synthetic access$setColumbusService$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;Lcom/google/android/systemui/columbus/IColumbusService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusService:Lcom/google/android/systemui/columbus/IColumbusService;

    return-void
.end method

.method public static final synthetic access$setColumbusServiceGestureListener$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    return-void
.end method

.method public static final synthetic access$updateAvailable(Lcom/google/android/systemui/columbus/actions/ServiceAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->updateAvailable()V

    return-void
.end method

.method private final updateAvailable()V
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


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "Columbus/ServiceAction"

    const-string v1, "Binder died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->updateAvailable()V

    return-void
.end method

.method protected final checkSupportedCaller()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->getSupportedCallerPackages()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected abstract getSupportedCallerPackages()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected onServiceConnected()V
    .locals 0

    return-void
.end method

.method protected onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    const-string p1, "Columbus/ServiceAction"

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;->onTrigger()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to send trigger, setting listener to null"

    invoke-static {p1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->updateAvailable()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Listener crashed or closed without unregistering"

    invoke-static {p1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->updateAvailable()V

    :goto_0
    return-void
.end method
