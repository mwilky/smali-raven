.class public interface abstract Lcom/android/server/pm/pkg/component/ParsedPermission;
.super Ljava/lang/Object;
.source "ParsedPermission.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedComponent;


# virtual methods
.method public abstract getBackgroundPermission()Ljava/lang/String;
.end method

.method public abstract getGroup()Ljava/lang/String;
.end method

.method public abstract getKnownCerts()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
.end method

.method public abstract getProtectionLevel()I
.end method

.method public abstract getRequestRes()I
.end method

.method public abstract isTree()Z
.end method
