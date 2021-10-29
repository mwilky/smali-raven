.class public interface abstract Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
.super Ljava/lang/Object;
.source "DomainVerificationProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;
    }
.end annotation


# static fields
.field public static final DEBUG_PROXIES:Z = false

.field public static final TAG:Ljava/lang/String; = "DomainVerificationProxy"


# direct methods
.method public static makeProxy(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;)Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ConnectionType::",
            "Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;",
            ":",
            "Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;",
            ">(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationCollector;",
            "TConnectionType;)",
            "Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p0, :cond_1

    new-instance v8, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;-><init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;Landroid/content/ComponentName;)V

    move-object v6, v8

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;

    move-object v1, p5

    check-cast v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    invoke-direct {v0, p2, v1, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;-><init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;Landroid/content/ComponentName;)V

    move-object v7, v0

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;

    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;-><init>(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    return-object v0

    :cond_3
    if-eqz v6, :cond_4

    return-object v6

    :cond_4
    if-eqz v7, :cond_5

    return-object v7

    :cond_5
    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract isCallerVerifier(I)Z
.end method

.method public abstract runMessage(ILjava/lang/Object;)Z
.end method

.method public abstract sendBroadcastForPackages(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
