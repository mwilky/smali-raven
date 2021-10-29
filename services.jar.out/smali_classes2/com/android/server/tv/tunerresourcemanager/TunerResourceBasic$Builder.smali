.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
.super Ljava/lang/Object;
.source "TunerResourceBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mHandle:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mHandle:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mHandle:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
    .locals 1

    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;

    invoke-direct {v0, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V

    return-object v0
.end method
