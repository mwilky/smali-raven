.class public Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
.super Ljava/lang/Object;
.source "SlicePermissionManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SlicePermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParserHolder"
.end annotation


# instance fields
.field public input:Ljava/io/InputStream;

.field public parser:Lorg/xmlpull/v1/XmlPullParser;

.field public final synthetic this$0:Lcom/android/server/slice/SlicePermissionManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetinput(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputinput(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$ParserHolder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;-><init>(Lcom/android/server/slice/SlicePermissionManager;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method
