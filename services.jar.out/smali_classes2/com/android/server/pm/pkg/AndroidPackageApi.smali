.class public interface abstract Lcom/android/server/pm/pkg/AndroidPackageApi;
.super Ljava/lang/Object;
.source "AndroidPackageApi.java"


# virtual methods
.method public abstract getActivities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImplicitPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNativeLibraryDir()Ljava/lang/String;
.end method

.method public abstract getNativeLibraryRootDir()Ljava/lang/String;
.end method

.method public abstract getRequestedPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSecondaryNativeLibraryDir()Ljava/lang/String;
.end method

.method public abstract getTargetSdkVersion()I
.end method

.method public abstract getUid()I
.end method

.method public abstract isCoreApp()Z
.end method

.method public abstract isFactoryTest()Z
.end method

.method public abstract isOdm()Z
.end method

.method public abstract isOem()Z
.end method

.method public abstract isPrivileged()Z
.end method

.method public abstract isProduct()Z
.end method

.method public abstract isSignedWithPlatformKey()Z
.end method

.method public abstract isStub()Z
.end method

.method public abstract isSystem()Z
.end method

.method public abstract isSystemExt()Z
.end method

.method public abstract isVendor()Z
.end method
