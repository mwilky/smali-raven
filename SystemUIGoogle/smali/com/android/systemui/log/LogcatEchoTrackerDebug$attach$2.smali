.class public final Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$2;
.super Landroid/database/ContentObserver;
.source "LogcatEchoTrackerDebug.kt"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/log/LogcatEchoTrackerDebug;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$2;->this$0:Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$2;->this$0:Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    iget-object p0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedTagLevels:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method
