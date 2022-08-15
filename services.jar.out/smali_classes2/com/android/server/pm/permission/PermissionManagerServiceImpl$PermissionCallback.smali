.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onInstallPermissionGranted()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onInstallPermissionRevoked()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onPermissionGranted(II)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onPermissionRemoved()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;Z)V

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
