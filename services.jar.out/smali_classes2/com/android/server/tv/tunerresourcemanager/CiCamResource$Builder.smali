.class public Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;
.super Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
.source "CiCamResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    .locals 2

    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;Lcom/android/server/tv/tunerresourcemanager/CiCamResource-IA;)V

    return-object v0
.end method

.method public bridge synthetic maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    move-result-object p0

    return-object p0
.end method

.method public maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    return-object p0
.end method
