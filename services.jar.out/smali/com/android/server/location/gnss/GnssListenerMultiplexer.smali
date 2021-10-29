.class public abstract Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "GnssListenerMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener::Landroid/os/IInterface;",
        "TMergedRegistration:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/ListenerMultiplexer<",
        "Landroid/os/IBinder;",
        "TT",
        "Listener;",
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "TTRequest;TT",
        "Listener;",
        "TTMergedRegistration;>.Gnss",
        "ListenerRegistration;",
        "TTMergedRegistration;>;"
    }
.end annotation


# instance fields
.field private final mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

.field protected final mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

.field private final mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field protected final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field private final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field protected final mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

.field private final mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

.field private final mProviderEnabledChangedListener:Landroid/location/LocationManagerInternal$ProviderEnabledListener;

.field protected final mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

.field private final mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

.field protected final mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;


# direct methods
.method public static synthetic $r8$lambda$D0snTG2JOzVWN9aUQx5r-qo2MkU(Lcom/android/server/location/gnss/GnssListenerMultiplexer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$GiVpExniosYFEYhFiZMi3GOu8kw(Lcom/android/server/location/gnss/GnssListenerMultiplexer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onUserChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$U69eWXhEKNDU7LUmWKogFzq3Luc(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onBackgroundThrottlePackageWhitelistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$VL3WSbAul5QINTq5awpvQgEDOak(Lcom/android/server/location/gnss/GnssListenerMultiplexer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onLocationPackageBlacklistChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mKZNWqk2dieEvAXnn4d3fArnudw(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onProviderEnabledChanged(Ljava/lang/String;IZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/location/injector/Injector;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mProviderEnabledChangedListener:Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppForegroundHelper()Lcom/android/server/location/injector/AppForegroundHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    const-class v0, Landroid/location/LocationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManagerInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/location/LocationManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onLocationPermissionsChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/gnss/GnssListenerMultiplexer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->onLocationPermissionsChanged(I)V

    return-void
.end method

.method private isActive(Landroid/location/util/identity/CallerIdentity;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    move-result v0

    const-string v1, "gps"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v3}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/location/LocationManagerInternal;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/location/LocationManagerInternal;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/location/injector/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isBackgroundRestrictionExempt(Landroid/location/util/identity/CallerIdentity;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onAppForegroundChanged$6(IZLcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .locals 1

    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onForegroundChanged(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onBackgroundThrottlePackageWhitelistChanged$2(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onLocationPackageBlacklistChanged$3(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onLocationPermissionsChanged$4(Ljava/lang/String;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onLocationPermissionsChanged(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onLocationPermissionsChanged$5(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onLocationPermissionsChanged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onProviderEnabledChanged$1(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onUserChanged$0(ILcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onAppForegroundChanged(IZ)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda9;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private onBackgroundThrottlePackageWhitelistChanged()V
    .locals 1

    sget-object v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda11;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private onLocationPackageBlacklistChanged(I)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private onLocationPermissionsChanged(I)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private onLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private onProviderEnabledChanged(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private onUserChanged(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method protected addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>.Gnss",
            "ListenerRegistration;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-object v0
.end method

.method protected getServiceState()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unsupported"

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getServiceState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "GnssManager"

    return-object v0
.end method

.method protected isActive(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>.Gnss",
            "ListenerRegistration;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isPermitted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isBackgroundRestrictionExempt(Landroid/location/util/identity/CallerIdentity;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isActive(Landroid/location/util/identity/CallerIdentity;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v1
.end method

.method protected bridge synthetic isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .locals 0

    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isActive(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Z

    move-result p1

    return p1
.end method

.method public isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>.Gnss",
            "ListenerRegistration;",
            ">;)TTMergedRegistration;"
        }
    .end annotation

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onRegister()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mProviderEnabledChangedListener:Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    const-string v2, "gps"

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManagerInternal;->addProviderEnabledListener(Ljava/lang/String;Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->addListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppForegroundHelper;->addListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V

    return-void
.end method

.method protected onUnregister()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->removeListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mProviderEnabledChangedListener:Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    const-string v2, "gps"

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManagerInternal;->removeProviderEnabledListener(Ljava/lang/String;Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->removeListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppForegroundHelper;->removeListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V

    return-void
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
