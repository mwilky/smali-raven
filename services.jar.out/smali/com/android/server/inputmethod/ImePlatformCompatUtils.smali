.class public final Lcom/android/server/inputmethod/ImePlatformCompatUtils;
.super Ljava/lang/Object;
.source "ImePlatformCompatUtils.java"


# instance fields
.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    return-void
.end method


# virtual methods
.method public final isChangeEnabledByUid(JI)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldClearShowForcedFlag(I)Z
    .locals 2

    const-wide/32 v0, 0xcc1a029

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->isChangeEnabledByUid(JI)Z

    move-result p0

    return p0
.end method

.method public shouldFinishInputWithReportToIme(I)Z
    .locals 2

    const-wide/32 v0, 0x94fa793

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->isChangeEnabledByUid(JI)Z

    move-result p0

    return p0
.end method
