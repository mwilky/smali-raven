.class final Lcom/android/server/input/InputManagerService$LightSession;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightSession"
.end annotation


# instance fields
.field private final mDeviceId:I

.field private mLightIds:[I

.field private mLightStates:[Landroid/hardware/lights/LightState;

.field private final mOpPkg:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$LightSession;->mOpPkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/input/InputManagerService$LightSession;)I
    .locals 1

    iget v0, p0, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/input/InputManagerService$LightSession;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LightSession;->mLightIds:[I

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/input/InputManagerService$LightSession;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LightSession;->mLightIds:[I

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/input/InputManagerService$LightSession;[Landroid/hardware/lights/LightState;)[Landroid/hardware/lights/LightState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    return-object p1
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    iget v2, p0, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->closeLightSession(ILandroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1200(Lcom/android/server/input/InputManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
