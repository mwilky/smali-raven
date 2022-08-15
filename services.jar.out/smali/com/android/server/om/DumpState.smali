.class public final Lcom/android/server/om/DumpState;
.super Ljava/lang/Object;
.source "DumpState.java"


# instance fields
.field public mField:Ljava/lang/String;

.field public mOverlayName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mUserId:I

.field public mVerbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/om/DumpState;->mUserId:I

    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/android/server/om/DumpState;->mUserId:I

    return p0
.end method

.method public isVerbose()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/om/DumpState;->mVerbose:Z

    return p0
.end method

.method public setField(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    return-void
.end method

.method public setOverlyIdentifier(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/content/om/OverlayIdentifier;->fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/om/DumpState;->mUserId:I

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/om/DumpState;->mVerbose:Z

    return-void
.end method
