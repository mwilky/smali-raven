.class Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;
.super Ljava/lang/Object;
.source "TextFormatUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/util/TextFormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WordMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;",
        ">;"
    }
.end annotation


# instance fields
.field final end:I

.field final start:I

.field final word:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->start:I

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->end:I

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->word:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/util/regex/Matcher;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->parseMatches(Ljava/util/regex/Matcher;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static parseMatches(Ljava/util/regex/Matcher;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Matcher;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;-><init>(Ljava/util/regex/Matcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->start:I

    iget p1, p1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->start:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;->compareTo(Lcom/google/android/libraries/hats20/util/TextFormatUtil$WordMatch;)I

    move-result p0

    return p0
.end method
