.class public interface abstract Lcom/android/server/pm/pkg/SharedUserApi;
.super Ljava/lang/Object;
.source "SharedUserApi.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPackageStates()Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeInfoTargetSdkVersion()I
.end method

.method public abstract getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
.end method

.method public abstract getSigningDetails()Landroid/content/pm/SigningDetails;
.end method

.method public abstract isPrivileged()Z
.end method
