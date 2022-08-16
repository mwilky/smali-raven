.class public final Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;
.super Ljava/lang/Object;
.source "LaunchOpa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/LaunchOpa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public mFeedbackEffects:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mFeedbackEffects:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    return-void
.end method
