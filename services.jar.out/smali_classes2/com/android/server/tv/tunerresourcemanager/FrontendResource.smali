.class public final Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.source "FrontendResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;
    }
.end annotation


# instance fields
.field private final mExclusiveGroupId:I

.field private mExclusiveGroupMemberHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method private constructor <init>(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->access$000(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->access$100(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;Lcom/android/server/tv/tunerresourcemanager/FrontendResource$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)V

    return-void
.end method


# virtual methods
.method public addExclusiveGroupMemberFeHandle(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExclusiveGroupMemberFeHandles(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getExclusiveGroupId()I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupId:I

    return v0
.end method

.method public getExclusiveGroupMemberFeHandles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    return v0
.end method

.method public removeExclusiveGroupMemberFeId(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrontendResource[handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exclusiveGId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exclusiveGMemeberHandles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mIsInUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ownerClientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mOwnerClientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
