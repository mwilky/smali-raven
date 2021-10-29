.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;
.source "SoundTriggerMiddlewareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewareService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;


# direct methods
.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;)V

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;-><init>(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V

    return-void
.end method

.method private establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;
    .locals 1

    invoke-static {p1}, Landroid/media/permission/PermissionUtil;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method private establishIdentityIndirect(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SOUNDTRIGGER_DELEGATE_IDENTITY"

    invoke-static {v0, v1, p1, p2}, Landroid/media/permission/PermissionUtil;->establishIdentityIndirect(Landroid/content/Context;Ljava/lang/String;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attachAsMiddleman(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 4

    nop

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/media/permission/Identity;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Landroid/media/permission/Identity;

    invoke-direct {p0, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityIndirect(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v2, p1, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public attachAsOriginator(ILandroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 4

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/media/permission/Identity;

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v2, p1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of v1, v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {v0, p2}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$SoundTriggerMiddlewareService(Ljava/lang/Boolean;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->setCaptureState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityIndirect(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public listModulesAsOriginator(Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
