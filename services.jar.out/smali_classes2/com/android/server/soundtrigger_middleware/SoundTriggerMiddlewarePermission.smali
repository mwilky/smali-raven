.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewarePermission.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.implements Lcom/android/server/soundtrigger_middleware/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewarePermission"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;Landroid/media/permission/Identity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V

    return-void
.end method

.method private static enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0, p1, p2, p3}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-static {p1, v4, v3}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;ZI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Failed to obtain permission %s for identity %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Z)V
    .locals 5

    invoke-static {p0, p1, p2}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected perimission check result."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    if-eqz p3, :cond_0

    return-void

    :cond_0
    :pswitch_1
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-static {p1, v4, v3}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;ZI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Failed to obtain permission %s for identity %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Z)V

    return-void
.end method

.method private static getIdentity()Landroid/media/permission/Identity;
    .locals 1

    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This implementation is not inteded to be used directly with Binder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 4

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->getIdentity()Landroid/media/permission/Identity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->getCallbackWrapper()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;

    move-result-object v2

    return-object v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of v1, v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method enforcePermissionsForDataDelivery(Landroid/media/permission/Identity;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Z)V

    const-string v0, "android:record_audio_hotword"

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iget v3, p1, Landroid/media/permission/Identity;->uid:I

    iget-object v4, p1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    move v2, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v1, p1, v2, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 2

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->getIdentity()Landroid/media/permission/Identity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public setCaptureState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->setCaptureState(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
