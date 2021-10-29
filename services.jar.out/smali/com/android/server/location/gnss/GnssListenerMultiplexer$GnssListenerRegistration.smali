.class public Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.super Lcom/android/server/location/listeners/BinderListenerRegistration;
.source "GnssListenerMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GnssListenerRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/BinderListenerRegistration<",
        "TTRequest;TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private mForeground:Z

.field private mPermitted:Z

.field final synthetic this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method protected constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/location/listeners/BinderListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    return-void
.end method

.method private onLocationPermissionsChanged()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected getOwner()Lcom/android/server/location/gnss/GnssListenerMultiplexer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    return-object v0
.end method

.method protected bridge synthetic getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getOwner()Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    move-result-object v0

    return-object v0
.end method

.method public isForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    return v0
.end method

.method isPermitted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    return v0
.end method

.method protected final onBinderListenerRegister()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppForegroundHelper;->isAppForeground(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onGnssListenerRegister()V

    return-void
.end method

.method protected final onBinderListenerUnregister()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onGnssListenerUnregister()V

    return-void
.end method

.method onForegroundChanged(IZ)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onGnssListenerRegister()V
    .locals 0

    return-void
.end method

.method protected onGnssListenerUnregister()V
    .locals 0

    return-void
.end method

.method onLocationPermissionsChanged(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onLocationPermissionsChanged()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onLocationPermissionsChanged(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onLocationPermissionsChanged()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    if-nez v2, :cond_0

    const-string v2, "bg"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "na"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
