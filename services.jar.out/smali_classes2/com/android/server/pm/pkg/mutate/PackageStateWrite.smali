.class public interface abstract Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
.super Ljava/lang/Object;
.source "PackageStateWrite.java"


# virtual methods
.method public abstract onChanged()V
.end method

.method public abstract setCategoryOverride(I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
.end method

.method public abstract setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
.end method

.method public abstract setInstaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
.end method

.method public abstract setLoadingProgress(F)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
.end method

.method public abstract setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/mutate/PackageStateWrite;"
        }
    .end annotation
.end method

.method public abstract setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
.end method

.method public abstract setRequiredForSystemUser(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
.end method

.method public abstract setUpdateAvailable(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
.end method

.method public abstract userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method
