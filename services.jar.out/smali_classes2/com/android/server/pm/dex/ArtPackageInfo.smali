.class public Lcom/android/server/pm/dex/ArtPackageInfo;
.super Ljava/lang/Object;
.source "ArtPackageInfo.java"


# instance fields
.field public final mCodePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstructionSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mOatDir:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mInstructionSets:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mCodePaths:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mOatDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCodePaths()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mCodePaths:Ljava/util/List;

    return-object p0
.end method

.method public getInstructionSets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mInstructionSets:Ljava/util/List;

    return-object p0
.end method

.method public getOatDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mOatDir:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
