.class public Lcom/android/server/integrity/model/RuleMetadata;
.super Ljava/lang/Object;
.source "RuleMetadata.java"


# instance fields
.field private final mRuleProvider:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/integrity/model/RuleMetadata;->mRuleProvider:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/integrity/model/RuleMetadata;->mVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRuleProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/integrity/model/RuleMetadata;->mRuleProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/integrity/model/RuleMetadata;->mVersion:Ljava/lang/String;

    return-object v0
.end method
