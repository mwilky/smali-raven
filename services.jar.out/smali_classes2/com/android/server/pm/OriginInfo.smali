.class public final Lcom/android/server/pm/OriginInfo;
.super Ljava/lang/Object;
.source "OriginInfo.java"


# instance fields
.field public final mExisting:Z

.field public final mFile:Ljava/io/File;

.field public final mResolvedFile:Ljava/io/File;

.field public final mResolvedPath:Ljava/lang/String;

.field public final mStaged:Z


# direct methods
.method public constructor <init>(Ljava/io/File;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    iput-boolean p2, p0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    iput-boolean p3, p0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    :goto_0
    return-void
.end method

.method public static fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;
    .locals 3

    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method public static fromNothing()Lcom/android/server/pm/OriginInfo;
    .locals 3

    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method public static fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;
    .locals 3

    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method
