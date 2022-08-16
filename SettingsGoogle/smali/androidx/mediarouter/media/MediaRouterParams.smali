.class public Landroidx/mediarouter/media/MediaRouterParams;
.super Ljava/lang/Object;
.source "MediaRouterParams.java"


# instance fields
.field final mDialogType:I

.field final mExtras:Landroid/os/Bundle;

.field final mMediaTransferReceiverEnabled:Z

.field final mOutputSwitcherEnabled:Z

.field final mTransferToLocalEnabled:Z


# virtual methods
.method public getDialogType()I
    .locals 0

    iget p0, p0, Landroidx/mediarouter/media/MediaRouterParams;->mDialogType:I

    return p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouterParams;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public isMediaTransferReceiverEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouterParams;->mMediaTransferReceiverEnabled:Z

    return p0
.end method

.method public isOutputSwitcherEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouterParams;->mOutputSwitcherEnabled:Z

    return p0
.end method

.method public isTransferToLocalEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouterParams;->mTransferToLocalEnabled:Z

    return p0
.end method
