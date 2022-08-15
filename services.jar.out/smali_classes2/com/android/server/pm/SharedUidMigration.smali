.class public final Lcom/android/server/pm/SharedUidMigration;
.super Ljava/lang/Object;
.source "SharedUidMigration.java"


# direct methods
.method public static applyStrategy(I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/pm/SharedUidMigration;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/SharedUidMigration;->getCurrentStrategy()I

    move-result v0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getCurrentStrategy()I
    .locals 3

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "persist.debug.pm.shared_uid_migration_strategy"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
