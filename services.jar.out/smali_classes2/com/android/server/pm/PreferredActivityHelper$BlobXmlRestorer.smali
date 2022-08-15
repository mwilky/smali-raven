.class public interface abstract Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;
.super Ljava/lang/Object;
.source "PreferredActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PreferredActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BlobXmlRestorer"
.end annotation


# virtual methods
.method public abstract apply(Landroid/util/TypedXmlPullParser;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method
