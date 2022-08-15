.class public final Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;
.super Ljava/lang/Object;
.source "PresentationStatsEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/PresentationStatsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PresentationStatsEventInternal"
.end annotation


# instance fields
.field public mAvailableCount:I

.field public mCountFilteredUserTyping:I

.field public mCountNotShownImePresentationNotDrawn:I

.field public mCountNotShownImeUserNotSeen:I

.field public mCountShown:I

.field public mDisplayPresentationType:I

.field public mIsDatasetAvailable:Z

.field public mNoPresentationReason:I

.field public mRequestId:I

.field public final synthetic this$0:Lcom/android/server/autofill/PresentationStatsEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/PresentationStatsEventLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->this$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    return-void
.end method
