.class public Lcom/android/server/integrity/parser/RuleIndexRange;
.super Ljava/lang/Object;
.source "RuleIndexRange.java"


# instance fields
.field public mEndIndex:I

.field public mStartIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    iput p2, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    check-cast p1, Lcom/android/server/integrity/parser/RuleIndexRange;

    invoke-virtual {p1}, Lcom/android/server/integrity/parser/RuleIndexRange;->getStartIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    invoke-virtual {p1}, Lcom/android/server/integrity/parser/RuleIndexRange;->getEndIndex()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEndIndex()I
    .locals 0

    iget p0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    return p0
.end method

.method public getStartIndex()I
    .locals 0

    iget p0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "Range{%d, %d}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
