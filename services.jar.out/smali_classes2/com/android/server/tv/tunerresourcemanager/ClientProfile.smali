.class public final Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
.super Ljava/lang/Object;
.source "ClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    }
.end annotation


# static fields
.field public static final INVALID_GROUP_ID:I = -0x1

.field public static final INVALID_RESOURCE_ID:I = -0x1


# instance fields
.field private mGroupId:I

.field private final mId:I

.field private mIsForeground:Z

.field private mNiceValue:I

.field private mPriority:I

.field private final mProcessId:I

.field private mShareFeClientIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTvInputSessionId:Ljava/lang/String;

.field private final mUseCase:I

.field private mUsingCasSystemId:I

.field private mUsingCiCamId:I

.field private mUsingFrontendHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsingLnbHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->access$000(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->access$100(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->access$200(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->access$300(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;Lcom/android/server/tv/tunerresourcemanager/ClientProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;-><init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V

    return-void
.end method


# virtual methods
.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    return v0
.end method

.method public getInUseCasSystemId()I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    return v0
.end method

.method public getInUseCiCamId()I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return v0
.end method

.method public getInUseFrontendHandles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    return-object v0
.end method

.method public getInUseLnbHandles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getProcessId()I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    return v0
.end method

.method public getShareFeClientIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    return-object v0
.end method

.method public getTvInputSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCase()I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    return v0
.end method

.method public isForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsForeground:Z

    return v0
.end method

.method public reclaimAllResources()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return-void
.end method

.method public releaseCas()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    return-void
.end method

.method public releaseCiCam()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return-void
.end method

.method public releaseFrontend()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public releaseLnb(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setForeground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsForeground:Z

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    return-void
.end method

.method public setNiceValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    return-void
.end method

.method public shareFrontend(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopSharingFrontend(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientProfile[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tvInputSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useCas(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    return-void
.end method

.method public useCiCam(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return-void
.end method

.method public useFrontend(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public useLnb(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
