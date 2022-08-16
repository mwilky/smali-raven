.class public final Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field public final doubleQuoteSuffix:Lokio/Options;

.field public final strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lokio/Options;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    return-void
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
    .locals 15

    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Lokio/ByteString;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_7

    aget-object v4, p0, v3

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v7

    iget-object v8, v7, Lokio/Segment;->data:[B

    iget v9, v7, Lokio/Segment;->limit:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v7, Lokio/Segment;->limit:I

    const/16 v7, 0x22

    int-to-byte v7, v7

    aput-byte v7, v8, v9

    iget-wide v8, v1, Lokio/Buffer;->size:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v1, Lokio/Buffer;->size:J

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    move v9, v2

    move v12, v9

    :goto_1
    if-ge v9, v8, :cond_5

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x80

    if-ge v13, v14, :cond_0

    aget-object v13, v5, v13

    if-nez v13, :cond_2

    goto :goto_3

    :cond_0
    const/16 v14, 0x2028

    if-ne v13, v14, :cond_1

    const-string v13, "\\u2028"

    goto :goto_2

    :cond_1
    const/16 v14, 0x2029

    if-ne v13, v14, :cond_4

    const-string v13, "\\u2029"

    :cond_2
    :goto_2
    if-ge v12, v9, :cond_3

    invoke-virtual {v1, v4, v12, v9}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)V

    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v13, v2, v12}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)V

    add-int/lit8 v12, v9, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    if-ge v12, v8, :cond_6

    invoke-virtual {v1, v4, v12, v8}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)V

    :cond_6
    invoke-virtual {v1, v6}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v4

    iget-object v5, v4, Lokio/Segment;->data:[B

    iget v6, v4, Lokio/Segment;->limit:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v4, Lokio/Segment;->limit:I

    aput-byte v7, v5, v6

    iget-wide v4, v1, Lokio/Buffer;->size:J

    add-long/2addr v4, v10

    iput-wide v4, v1, Lokio/Buffer;->size:J

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0}, Lokio/Options;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;-><init>([Ljava/lang/String;Lokio/Options;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
