.class public final Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;
.super Landroid/media/session/MediaController$Callback;
.source "ResumeMediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/ResumeMediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionDestroyCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/ResumeMediaBrowser;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSessionDestroyed()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v1, v0, Lcom/android/systemui/media/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->isBrowserConnected()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v2, v2, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/systemui/media/ResumeMediaBrowserLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v4, Lcom/android/systemui/media/ResumeMediaBrowserLogger$logSessionDestroyed$2;->INSTANCE:Lcom/android/systemui/media/ResumeMediaBrowserLogger$logSessionDestroyed$2;

    const-string v5, "MediaBrowser"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v3

    iput-boolean v0, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    return-void
.end method
