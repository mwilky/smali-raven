.class public Lcom/android/server/uwb/UwbInjector;
.super Ljava/lang/Object;
.source "UwbInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbInjector"

.field private static final VENDOR_SERVICE_NAME:Ljava/lang/String; = "uwb_vendor"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/uwb/UwbInjector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkUwbRangingPermissionForDataDelivery(Landroid/content/AttributionSource;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/uwb/UwbInjector;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UWB_RANGING"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public enforceUwbRangingPermissionForPreflight(Landroid/content/AttributionSource;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/AttributionSource;->checkCallingUid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/uwb/UwbInjector;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UWB_RANGING"

    invoke-static {v0, v1, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Caller does not hold UWB_RANGING permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribution source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVendorService()Landroid/uwb/IUwbAdapter;
    .locals 2

    const-string v0, "uwb_vendor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/uwb/IUwbAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdapter;

    move-result-object v1

    return-object v1
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/uwb/UwbInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public isPersistedUwbStateEnabled()Z
    .locals 5

    const-string v0, "uwb_enabled"

    iget-object v1, p0, Lcom/android/server/uwb/UwbInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v4

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2
.end method
