.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;
.super Ljava/lang/Object;
.source "BcSmartspaceCardLoggingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;
    }
.end annotation


# instance fields
.field private final mCardinality:I

.field private final mDisplaySurface:I

.field private final mInstanceId:I

.field private final mLoggingCardType:I

.field private final mRank:I


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->access$000(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->access$100(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->mLoggingCardType:I

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->access$300(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->mRank:I

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->access$400(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->mCardinality:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public getCardinality()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->mCardinality:I

    return p0
.end method

.method public getDisplaySurface()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    return p0
.end method

.method public getInstanceId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    return p0
.end method

.method public getLoggingCardType()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->mLoggingCardType:I

    return p0
.end method

.method public getRank()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->mRank:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instance_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->getInstanceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", card type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->getLoggingCardType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", display surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->getDisplaySurface()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rank = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->getRank()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardinality = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->getCardinality()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
