.class Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageTagsListSetting"
.end annotation


# instance fields
.field private final mBaseValuesSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCachedValue:Landroid/os/PackageTagsList;

.field private mValid:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Landroid/os/PackageTagsList;
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    move-object v2, v0

    iget-boolean v0, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v0}, Landroid/os/PackageTagsList$Builder;-><init>()V

    iget-object v5, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0, v5}, Landroid/os/PackageTagsList$Builder;->add(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;

    move-result-object v0

    const-string/jumbo v5, "location"

    iget-object v6, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x1

    if-nez v6, :cond_5

    :try_start_2
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_5

    aget-object v11, v6, v10

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_3

    :cond_0
    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v13, v12, v9

    array-length v14, v12

    if-ne v14, v7, :cond_1

    invoke-virtual {v0, v13}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_3

    :cond_1
    const/4 v14, 0x1

    :goto_1
    array-length v15, v12

    if-ge v14, v15, :cond_4

    aget-object v15, v12, v14

    const-string/jumbo v9, "null"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v15, 0x0

    :cond_2
    const-string v9, "*"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v13}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v13, v15}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_5
    :try_start_3
    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v6

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v7, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    iput-object v2, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    :goto_5
    monitor-exit p0

    return-object v2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPropertiesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->invalidate()V

    invoke-super {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->onPropertiesChanged()V

    return-void
.end method
