.class public final Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;
.super Ljava/lang/Object;
.source "BcSmartspaceSubcardLoggingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mClickedSubcardIndex:I

.field public mSubcards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
