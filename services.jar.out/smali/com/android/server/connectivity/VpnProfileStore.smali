.class public Lcom/android/server/connectivity/VpnProfileStore;
.super Ljava/lang/Object;
.source "VpnProfileStore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
