.class public Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;
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
.field private mClickedSubcardIndex:I

.field private mSubcards:Ljava/util/List;
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

.method static synthetic access$000(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mSubcards:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mClickedSubcardIndex:I

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;
    .locals 2

    new-instance v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$1;)V

    return-object v0
.end method

.method public setClickedSubcardIndex(I)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mClickedSubcardIndex:I

    return-object p0
.end method

.method public setSubcards(Ljava/util/List;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;",
            ">;)",
            "Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mSubcards:Ljava/util/List;

    return-object p0
.end method
