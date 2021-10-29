.class public final Landroid/net/NativeNetworkConfig$Builder;
.super Ljava/lang/Object;
.source "NativeNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NativeNetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private netId:I

.field private networkType:I

.field private permission:I

.field private secure:Z

.field private vpnType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NativeNetworkConfig$Builder;->netId:I

    iput v0, p0, Landroid/net/NativeNetworkConfig$Builder;->networkType:I

    iput v0, p0, Landroid/net/NativeNetworkConfig$Builder;->permission:I

    iput-boolean v0, p0, Landroid/net/NativeNetworkConfig$Builder;->secure:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/net/NativeNetworkConfig$Builder;->vpnType:I

    return-void
.end method


# virtual methods
.method public build()Landroid/net/NativeNetworkConfig;
    .locals 7

    new-instance v6, Landroid/net/NativeNetworkConfig;

    iget v1, p0, Landroid/net/NativeNetworkConfig$Builder;->netId:I

    iget v2, p0, Landroid/net/NativeNetworkConfig$Builder;->networkType:I

    iget v3, p0, Landroid/net/NativeNetworkConfig$Builder;->permission:I

    iget-boolean v4, p0, Landroid/net/NativeNetworkConfig$Builder;->secure:Z

    iget v5, p0, Landroid/net/NativeNetworkConfig$Builder;->vpnType:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/net/NativeNetworkConfig;-><init>(IIIZI)V

    return-object v6
.end method

.method public setNetId(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->netId:I

    return-object p0
.end method

.method public setNetworkType(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->networkType:I

    return-object p0
.end method

.method public setPermission(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->permission:I

    return-object p0
.end method

.method public setSecure(Z)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/NativeNetworkConfig$Builder;->secure:Z

    return-object p0
.end method

.method public setVpnType(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->vpnType:I

    return-object p0
.end method
