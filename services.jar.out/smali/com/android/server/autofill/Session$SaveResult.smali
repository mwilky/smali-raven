.class final Lcom/android/server/autofill/Session$SaveResult;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SaveResult"
.end annotation


# instance fields
.field private mLogSaveShown:Z

.field private mRemoveSession:Z

.field private mSaveDialogNotShowReason:I


# direct methods
.method constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    iput-boolean p2, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    iput p3, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    return-void
.end method


# virtual methods
.method public getNoSaveUiReason()I
    .locals 1

    iget v0, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    return v0
.end method

.method public isLogSaveShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    return v0
.end method

.method public isRemoveSession()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    return v0
.end method

.method public setLogSaveShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    return-void
.end method

.method public setRemoveSession(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    return-void
.end method

.method public setSaveDialogNotShowReason(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveResult: [logSaveShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", removeSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", saveDialogNotShowReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
