.class public final Lcom/android/server/pm/pkg/SELinuxUtil;
.super Ljava/lang/Object;
.source "SELinuxUtil.java"


# direct methods
.method public static getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ":ephemeralapp:complete"

    return-object p0

    :cond_0
    const-string p0, ":complete"

    return-object p0
.end method
