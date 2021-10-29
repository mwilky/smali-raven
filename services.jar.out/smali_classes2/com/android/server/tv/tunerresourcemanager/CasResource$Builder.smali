.class public Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
.super Ljava/lang/Object;
.source "CasResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/CasResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mMaxSessionNum:I

.field private mSystemId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mSystemId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mSystemId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .locals 1

    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    invoke-direct {v0, p0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    return-object v0
.end method

.method public maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    return-object p0
.end method
