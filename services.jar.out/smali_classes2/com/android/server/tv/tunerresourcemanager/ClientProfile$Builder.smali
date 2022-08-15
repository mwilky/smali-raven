.class public Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
.super Ljava/lang/Object;
.source "ClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final mId:I

.field public mProcessId:I

.field public mTvInputSessionId:Ljava/lang/String;

.field public mUseCase:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mProcessId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTvInputSessionId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mTvInputSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseCase(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mUseCase:I

    return p0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .locals 2

    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;-><init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;Lcom/android/server/tv/tunerresourcemanager/ClientProfile-IA;)V

    return-object v0
.end method

.method public processId(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mProcessId:I

    return-object p0
.end method

.method public tvInputSessionId(Ljava/lang/String;)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mTvInputSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public useCase(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mUseCase:I

    return-object p0
.end method
