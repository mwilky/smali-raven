.class public Lcom/google/android/libraries/hats20/util/TextFormatUtil;
.super Ljava/lang/Object;
.source "TextFormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;
    }
.end annotation


# static fields
.field private static boldRegexPattern:Ljava/util/regex/Pattern;

.field private static italicRegexPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?<=([\'\"]|\\s|^))(_(\\w|[.!?,\'\"#$*])+_)(?=([.!?,\'\"]|\\s|$))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/hats20/util/TextFormatUtil;->italicRegexPattern:Ljava/util/regex/Pattern;

    const-string v0, "(?<=([\'\"]|\\s|^))(\\*(\\w|[.!?,\'\"#$*])+\\*)(?=([.!?,\'\"]|\\s|$))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/hats20/util/TextFormatUtil;->boldRegexPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static addAndFormatTextToOutput(Landroid/text/SpannableStringBuilder;Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->word:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_0

    iget-object p1, p1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->word:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_0
    iget-object v2, p1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->word:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget v2, p1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->end:I

    iget p1, p1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->start:I

    sub-int/2addr v2, p1

    const/4 p1, 0x2

    sub-int/2addr v2, p1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, p1

    :goto_0
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static format(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/text/SpannableString;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_0
    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/libraries/hats20/util/TextFormatUtil;->italicRegexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/hats20/util/TextFormatUtil;->boldRegexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    new-instance v3, Ljava/util/PriorityQueue;

    invoke-direct {v3}, Ljava/util/PriorityQueue;-><init>()V

    invoke-static {v1}, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->access$000(Ljava/util/regex/Matcher;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->access$000(Ljava/util/regex/Matcher;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {v1, v3}, Lcom/google/android/libraries/hats20/util/TextFormatUtil;->isThereAFormattedItemAtStartPosition(ILjava/util/Queue;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;

    invoke-static {v0, v1}, Lcom/google/android/libraries/hats20/util/TextFormatUtil;->addAndFormatTextToOutput(Landroid/text/SpannableStringBuilder;Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;)V

    iget v1, v1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->end:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static isThereAFormattedItemAtStartPosition(ILjava/util/Queue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Queue<",
            "Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;

    iget p1, p1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->start:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
