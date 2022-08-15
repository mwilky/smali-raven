.class public interface abstract Lcom/android/server/pm/pkg/component/ParsedProvider;
.super Ljava/lang/Object;
.source "ParsedProvider.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedMainComponent;


# virtual methods
.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public abstract getInitOrder()I
.end method

.method public abstract getPathPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReadPermission()Ljava/lang/String;
.end method

.method public abstract getUriPermissionPatterns()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWritePermission()Ljava/lang/String;
.end method

.method public abstract isForceUriPermissions()Z
.end method

.method public abstract isGrantUriPermissions()Z
.end method

.method public abstract isMultiProcess()Z
.end method

.method public abstract isSyncable()Z
.end method
