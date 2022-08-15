.class public interface abstract Lcom/android/server/pm/pkg/PackageStateInternal;
.super Ljava/lang/Object;
.source "PackageStateInternal.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageState;


# virtual methods
.method public abstract getDomainSetId()Ljava/util/UUID;
.end method

.method public abstract getFlags()I
.end method

.method public abstract getInstallSource()Lcom/android/server/pm/InstallSource;
.end method

.method public abstract getKeySetData()Lcom/android/server/pm/PackageKeySetData;
.end method

.method public abstract getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
.end method

.method public abstract getLoadingProgress()F
.end method

.method public abstract getPathString()Ljava/lang/String;
.end method

.method public abstract getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.end method

.method public abstract getPrivateFlags()I
.end method

.method public abstract getRealName()Ljava/lang/String;
.end method

.method public abstract getSigningDetails()Landroid/content/pm/SigningDetails;
.end method

.method public abstract getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
.end method

.method public getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .locals 0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    :cond_0
    return-object p0
.end method

.method public abstract getUserStates()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isLoading()Z
.end method
