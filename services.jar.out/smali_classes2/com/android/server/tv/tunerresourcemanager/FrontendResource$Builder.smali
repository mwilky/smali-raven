.class public Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
.source "FrontendResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mExclusiveGroupId:I

.field public mType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmExclusiveGroupId(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mExclusiveGroupId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mType:I

    return p0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .locals 2

    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;Lcom/android/server/tv/tunerresourcemanager/FrontendResource-IA;)V

    return-object v0
.end method

.method public exclusiveGroupId(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mExclusiveGroupId:I

    return-object p0
.end method

.method public type(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mType:I

    return-object p0
.end method
