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

.field private final mContext:Landroid/content/Context;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->setListening(Z)V

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

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

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

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public isCameraRotationEnabled()Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v0, "camera_autorotate"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-interface {p0, v0, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isRotationLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

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
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v0, -0x1

    invoke-static {p1, p0, v0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {p1, p0}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :goto_0
    return-void
.end method

.method public setRotationLocked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    return-void
.end method

.method public setRotationLockedAtAngle(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    return-void
.end method
