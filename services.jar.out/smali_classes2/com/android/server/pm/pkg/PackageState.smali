.class public interface abstract Lcom/android/server/pm/pkg/PackageState;
.super Ljava/lang/Object;
.source "PackageState.java"


# virtual methods
.method public abstract getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;
.end method

.method public abstract getAppId()I
.end method

.method public abstract getCategoryOverride()I
.end method

.method public abstract getCpuAbiOverride()Ljava/lang/String;
.end method

.method public abstract getLastUpdateTime()J
.end method

.method public abstract getMimeGroups()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/io/File;
.end method

.method public abstract getPrimaryCpuAbi()Ljava/lang/String;
.end method

.method public abstract getSecondaryCpuAbi()Ljava/lang/String;
.end method

.method public abstract getSharedUserAppId()I
.end method

.method public abstract getUsesSdkLibraries()[Ljava/lang/String;
.end method

.method public abstract getUsesSdkLibrariesVersionsMajor()[J
.end method

.method public abstract getUsesStaticLibraries()[Ljava/lang/String;
.end method

.method public abstract getUsesStaticLibrariesVersions()[J
.end method

.method public abstract getVersionCode()J
.end method

.method public abstract getVolumeUuid()Ljava/lang/String;
.end method

.method public abstract hasSharedUser()Z
.end method

.method public abstract isForceQueryableOverride()Z
.end method

.method public abstract isInstallPermissionsFixed()Z
.end method

.method public abstract isPrivileged()Z
.end method

.method public abstract isSystem()Z
.end method

.method public abstract isUpdateAvailable()Z
.end method
