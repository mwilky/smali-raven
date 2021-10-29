.class Lcom/android/server/graphics/fonts/OtfFontFileParser;
.super Ljava/lang/Object;
.source "OtfFontFileParser.java"

# interfaces
.implements Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static unmap(Ljava/nio/ByteBuffer;)V
    .locals 1

    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildFontFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/graphics/fonts/FontFileUtil;->getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Landroid/graphics/fonts/FontFileUtil;->isPostScriptType1Font(Ljava/nio/ByteBuffer;I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/fonts/FontFileUtil;->isCollectionFont(Ljava/nio/ByteBuffer;)I

    move-result v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    if-ne v1, v4, :cond_1

    const-string v4, ".otc"

    goto :goto_0

    :cond_1
    const-string v4, ".ttc"

    :goto_0
    goto :goto_1

    :cond_2
    if-ne v1, v4, :cond_3

    const-string v4, ".otf"

    goto :goto_1

    :cond_3
    const-string v4, ".ttf"

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-object v5

    :cond_4
    :goto_2
    const/4 v4, 0x0

    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-object v4

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    throw v1
.end method

.method public getPostScriptName(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/graphics/fonts/FontFileUtil;->getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    throw v1
.end method

.method public getRevision(Ljava/io/File;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/graphics/fonts/FontFileUtil;->getRevision(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    throw v1
.end method

.method public tryToCreateTypeface(Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v1, v0}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v1

    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    new-instance v3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v3, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v3

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v5, "abcXYZ@- \ud83e\uded6\ud83c\uddfa\ud83c\uddf8\ud83d\udc8f\ud83c\udffb\ud83d\udc68\ud83c\udffc\u200d\u2764\ufe0f\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    invoke-static {v5, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v7, v8, v4, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v7

    nop

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    throw v1
.end method
