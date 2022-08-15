.class public Lcom/android/server/integrity/serializer/RuleIndexingDetails;
.super Ljava/lang/Object;
.source "RuleIndexingDetails.java"


# instance fields
.field public mIndexType:I

.field public mRuleKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    const-string p1, "N/A"

    iput-object p1, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mRuleKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    iput-object p2, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mRuleKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndexType()I
    .locals 0

    iget p0, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    return p0
.end method

.method public getRuleKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mRuleKey:Ljava/lang/String;

    return-object p0
.end method
