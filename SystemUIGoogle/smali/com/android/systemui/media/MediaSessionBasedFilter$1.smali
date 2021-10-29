.class final Lcom/android/systemui/media/MediaSessionBasedFilter$1;
.super Ljava/lang/Object;
.source "MediaSessionBasedFilter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaSessionBasedFilter;-><init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/MediaSessionBasedFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$1;->$context:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v1}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getSessionManager$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v2}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getSessionListener$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Lcom/android/systemui/media/MediaSessionBasedFilter$sessionListener$1;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {p0}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getSessionManager$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Landroid/media/session/MediaSessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    const-string v1, "sessionManager.getActiveSessions(name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$handleControllersChanged(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/util/List;)V

    return-void
.end method
