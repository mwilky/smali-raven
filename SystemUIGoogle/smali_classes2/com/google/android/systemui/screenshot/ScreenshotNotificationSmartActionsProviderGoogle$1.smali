.class Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;
.super Ljava/lang/Object;
.source "ScreenshotNotificationSmartActionsProviderGoogle.java"

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper$BundleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->getActions(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/ComponentName;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotSmartActionType;Landroid/os/UserHandle;)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;

.field final synthetic val$future:Ljava/util/concurrent/CompletableFuture;

.field final synthetic val$screenshotId:Ljava/lang/String;

.field final synthetic val$startTimeMs:J


# direct methods
.method constructor <init>(Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;Ljava/util/concurrent/CompletableFuture;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->this$0:Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;

    iput-object p2, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    iput-wide p3, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$startTimeMs:J

    iput-object p5, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$screenshotId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->this$0:Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;

    iget-object v1, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->completeFuture(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$startTimeMs:J

    sub-long v8, v0, v2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Total time taken to get smart actions: %d ms"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenshotActionsGoogle"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->this$0:Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;

    iget-object v5, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$screenshotId:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->RETRIEVE_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    sget-object v7, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->SUCCESS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->notifyOp(Ljava/lang/String;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;J)V

    return-void
.end method
