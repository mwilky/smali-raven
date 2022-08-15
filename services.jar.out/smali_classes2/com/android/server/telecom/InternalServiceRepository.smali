.class public Lcom/android/server/telecom/InternalServiceRepository;
.super Lcom/android/internal/telecom/IInternalServiceRetriever$Stub;
.source "InternalServiceRepository.java"


# instance fields
.field public final mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public final mDeviceIdleControllerAdapter:Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceIdleController(Lcom/android/server/telecom/InternalServiceRepository;)Lcom/android/server/DeviceIdleInternal;
    .locals 0

    iget-object p0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/DeviceIdleInternal;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telecom/IInternalServiceRetriever$Stub;-><init>()V

    new-instance v0, Lcom/android/server/telecom/InternalServiceRepository$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/InternalServiceRepository$1;-><init>(Lcom/android/server/telecom/InternalServiceRepository;)V

    iput-object v0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleControllerAdapter:Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;

    iput-object p1, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    return-void
.end method


# virtual methods
.method public final ensureSystemProcess()V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "SYSTEM ONLY API."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDeviceIdleController()Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/telecom/InternalServiceRepository;->ensureSystemProcess()V

    iget-object p0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleControllerAdapter:Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;

    return-object p0
.end method
