.class public interface abstract Lcom/android/server/pm/snapshot/PackageDataSnapshot;
.super Ljava/lang/Object;
.source "PackageDataSnapshot.java"


# virtual methods
.method public abstract getAllSharedUsers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.end method

.method public abstract getPackageStates()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserInfos()[Landroid/content/pm/UserInfo;
.end method
