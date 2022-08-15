.class Lcom/android/server/companion/virtual/InputController;
.super Ljava/lang/Object;
.source "InputController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;,
        Lcom/android/server/companion/virtual/InputController$DeviceCreationException;,
        Lcom/android/server/companion/virtual/InputController$WaitForDevice;,
        Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;,
        Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;,
        Lcom/android/server/companion/virtual/InputController$NativeWrapper;
    }
.end annotation


# static fields
.field public static final sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceDescriptors:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

.field public final mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$5u06IIO4bfchVIfVHThidl1N6T4(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->lambda$createMouse$2(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I8aE0M_zwDmgMSfkcSnelX-jnZw(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Point;)Ljava/lang/Integer;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->lambda$createTouchscreen$3(Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Point;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f5rdGxKmzTxubwSBNCJHgvDMIwg(Landroid/os/Handler;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/companion/virtual/InputController;->lambda$new$0(Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nSGhZGGiuYKJDPFc3l67jZlCIuI(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->lambda$createKeyboard$1(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/companion/virtual/InputController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeCloseUinput(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/companion/virtual/InputController;->nativeCloseUinput(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteButtonEvent(III)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->nativeWriteButtonEvent(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteKeyEvent(III)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->nativeWriteKeyEvent(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteRelativeEvent(IFF)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->nativeWriteRelativeEvent(IFF)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteScrollEvent(IFF)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->nativeWriteScrollEvent(IFF)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteTouchEvent(IIIIFFFF)Z
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/android/server/companion/virtual/InputController;->nativeWriteTouchEvent(IIIIFFFF)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/view/WindowManager;)V
    .locals 6

    new-instance v2, Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-direct {v2}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;-><init>()V

    new-instance v5, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;-><init>(Ljava/lang/Object;Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class p1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManagerInternal;

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    iput-object p4, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    return-void
.end method

.method public static createPhys(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object p0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string/jumbo p0, "virtual%s:%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createKeyboard$1(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createMouse$2(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputMouse(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createTouchscreen$3(Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Point;)Ljava/lang/Integer;
    .locals 7

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget v5, p5, Landroid/graphics/Point;->y:I

    iget v6, p5, Landroid/graphics/Point;->x:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$0(Landroid/os/Handler;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static native nativeCloseUinput(I)Z
.end method

.method private static native nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I
.end method

.method private static native nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)I
.end method

.method private static native nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I
.end method

.method private static native nativeWriteButtonEvent(III)Z
.end method

.method private static native nativeWriteKeyEvent(III)Z
.end method

.method private static native nativeWriteRelativeEvent(IFF)Z
.end method

.method private static native nativeWriteScrollEvent(IFF)Z
.end method

.method private static native nativeWriteTouchEvent(IIIIFFFF)Z
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->closeUinput(I)Z

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getPhys()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->removeUniqueIdAssociation(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->isMouse()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p1}, Landroid/hardware/input/InputManagerInternal;->getVirtualMousePointerDisplayId()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/InputController;->updateActivePointerDisplayIdLocked()V

    :cond_0
    return-void
.end method

.method public final createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    invoke-interface {v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;->isValidThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p6, p7}, Lcom/android/server/companion/virtual/InputController;->setUniqueIdAssociation(ILjava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;II)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {p8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ltz v2, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->waitForDeviceCreation()V

    new-instance v3, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;

    invoke-direct {v3, p0, p5}, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;-><init>(Lcom/android/server/companion/virtual/InputController;Landroid/os/IBinder;)V
    :try_end_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p2, 0x0

    :try_start_3
    invoke-interface {p5, v3, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_4
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_4 .. :try_end_4} :catch_2

    iget-object p2, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_5
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    new-instance p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    move-object v1, p3

    move v4, p1

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;-><init>(ILandroid/os/IBinder$DeathRecipient;IILjava/lang/String;)V

    invoke-interface {p0, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catch_0
    move-exception p1

    :try_start_6
    new-instance p2, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    const-string p3, "Client died before virtual device could be created."

    invoke-direct {p2, p3, p1}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_6
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_1
    move-exception p1

    :try_start_7
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->closeUinput(I)Z

    throw p1

    :cond_0
    new-instance p0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "A native error occurred when creating touchscreen: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_9
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception p0

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/hardware/input/InputManager;->removeUniqueIdAssociation(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Virtual device creation should happen on an auxiliary thread (e.g. binder thread) and not from the handler\'s thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;I)V
    .locals 10

    const-string v0, "Keyboard"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    :try_start_0
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V

    move-object v1, p0

    move v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to create virtual keyboard device \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createMouse(Ljava/lang/String;IILandroid/os/IBinder;I)V
    .locals 10

    const-string v0, "Mouse"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x2

    :try_start_0
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V

    move-object v1, p0

    move v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, p5}, Landroid/hardware/input/InputManagerInternal;->setVirtualMousePointerDisplayId(I)Z

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to create virtual mouse device: \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createTouchscreen(Ljava/lang/String;IILandroid/os/IBinder;ILandroid/graphics/Point;)V
    .locals 10

    const-string v0, "Touchscreen"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x3

    :try_start_0
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v8

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Point;)V

    move-object v1, p0

    move v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create virtual touchscreen device \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "    InputController: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "      Active descriptors: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        fd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          creationOrder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getCreationOrderNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          phys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getPhys()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerInternal;->getVirtualMousePointerDisplayId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const-class p0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerInternal;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Display id associated with this mouse is not currently targetable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not get cursor position for input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v2}, Landroid/hardware/input/InputManagerInternal;->getVirtualMousePointerDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getButtonCode()I

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getAction()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeButtonEvent(III)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Display id associated with this mouse is not currently targetable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not send button event to input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeKeyEvent(III)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not send key event to input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v2}, Landroid/hardware/input/InputManagerInternal;->getVirtualMousePointerDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeX()F

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeY()F

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeRelativeEvent(IFF)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Display id associated with this mouse is not currently targetable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not send relative event to input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v2}, Landroid/hardware/input/InputManagerInternal;->getVirtualMousePointerDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getXAxisMovement()F

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getYAxisMovement()F

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeScrollEvent(IFF)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Display id associated with this mouse is not currently targetable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not send scroll event to input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getPointerId()I

    move-result v3

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getToolType()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getY()F

    move-result v7

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getPressure()F

    move-result v8

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getMajorAxisSize()F

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeTouchEvent(IIIIFFFF)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not send touch event to input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDisplayEligibilityForPointerCapture(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, p2, p1}, Landroid/hardware/input/InputManagerInternal;->setDisplayEligibilityForPointerCapture(IZ)V

    return-void
.end method

.method public setLocalIme(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->setDisplayImePolicy(II)V

    :cond_0
    return-void
.end method

.method public setPointerAcceleration(FI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerInternal;->setPointerAcceleration(FI)V

    return-void
.end method

.method public setShowPointerIcon(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerInternal;->setPointerIconVisible(ZI)V

    return-void
.end method

.method public final setUniqueIdAssociation(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Landroid/hardware/input/InputManager;->addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterInputDevice(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not unregister input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateActivePointerDisplayIdLocked()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->isMouse()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getCreationOrderNumber()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getCreationOrderNumber()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/input/InputManagerInternal;->setVirtualMousePointerDisplayId(I)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/input/InputManagerInternal;->setVirtualMousePointerDisplayId(I)Z

    :goto_1
    return-void
.end method
