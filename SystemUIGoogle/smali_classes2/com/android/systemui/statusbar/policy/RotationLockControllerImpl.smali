.class public final Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;
.super Ljava/lang/Object;
.source "RotationLockControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController;


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceStateRotationLockSettingController:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;

.field private final mIsPerDeviceStateRotationLockEnabled:Z

.field private final mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mDeviceStateRotationLockSettingController:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;

    array-length p1, p3

    const/4 p3, 0x1

    if-lez p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mIsPerDeviceStateRotationLockEnabled:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->initialize()V

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->setListening(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->notifyChanged(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {v0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->isRotationLocked()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->isRotationLockToggleVisible()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;->onRotationLockStateChanged(ZZ)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->notifyChanged(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    return-void
.end method

.method public getRotationLockOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->getRotationLockOrientation()I

    move-result p0

    return p0
.end method

.method public isRotationLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->isRotationLocked()Z

    move-result p0

    return p0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->registerRotationPolicyListener(Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->unregisterRotationPolicyListener(Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mIsPerDeviceStateRotationLockEnabled:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mDeviceStateRotationLockSettingController:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->setListening(Z)V

    :cond_1
    return-void
.end method

.method public setRotationLocked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {p0, p1}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->setRotationLock(Z)V

    return-void
.end method
