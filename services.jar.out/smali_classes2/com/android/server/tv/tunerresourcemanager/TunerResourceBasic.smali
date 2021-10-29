.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.super Ljava/lang/Object;
.source "TunerResourceBasic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
    }
.end annotation


# instance fields
.field final mHandle:I

.field mIsInUse:Z

.field mOwnerClientId:I


# direct methods
.method constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->access$000(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    return-void
.end method


# virtual methods
.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    return v0
.end method

.method public getOwnerClientId()I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return v0
.end method

.method public isInUse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    return v0
.end method

.method public removeOwner()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return-void
.end method

.method public setOwner(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return-void
.end method
