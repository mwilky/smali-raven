.class public final Lcom/android/systemui/media/ResumeMediaBrowserLogger;
.super Ljava/lang/Object;
.source "ResumeMediaBrowserLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResumeMediaBrowserLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResumeMediaBrowserLogger.kt\ncom/android/systemui/media/ResumeMediaBrowserLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,75:1\n138#2,4:76\n138#2,4:80\n138#2,4:84\n*S KotlinDebug\n*F\n+ 1 ResumeMediaBrowserLogger.kt\ncom/android/systemui/media/ResumeMediaBrowserLogger\n*L\n32#1:76,4\n43#1:80,4\n63#1:84,4\n*E\n"
.end annotation


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowserLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logConnection(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowserLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/media/ResumeMediaBrowserLogger$logConnection$2;->INSTANCE:Lcom/android/systemui/media/ResumeMediaBrowserLogger$logConnection$2;

    const-string v2, "MediaBrowser"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    return-void
.end method
