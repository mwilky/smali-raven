.class Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringListCachedSecureSetting"
.end annotation


# instance fields
.field private mCachedUserId:I

.field private mCachedValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getValueForUser(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;

    iget v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    if-eq p1, v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_1
    :try_start_3
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v4

    :goto_1
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    iput p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;

    goto :goto_3

    :catchall_1
    move-exception v3

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    :goto_3
    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invalidateForUser(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    if-ne v0, p1, :cond_0

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->invalidateForUser(I)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->onChange(ZLandroid/net/Uri;I)V

    return-void
.end method

.method public register()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
