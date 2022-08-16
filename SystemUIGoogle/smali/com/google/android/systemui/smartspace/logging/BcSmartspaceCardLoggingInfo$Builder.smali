.class public final Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;
.super Ljava/lang/Object;
.source "BcSmartspaceCardLoggingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mCardinality:I

.field public mDisplaySurface:I

.field public mFeatureType:I

.field public mInstanceId:I

.field public mRank:I

.field public mReceivedLatency:I

.field public mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    return-void
.end method
