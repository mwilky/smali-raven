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
.field public final mHandle:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mHandle:I

    return p0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mHandle:I

    return-void
.end method
