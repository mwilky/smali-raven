.class public final Lcom/android/systemui/media/MediaSessionBasedFilter$1;
.super Ljava/lang/Object;
.source "MediaSessionBasedFilter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaSessionBasedFilter;-><init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/MediaSessionBasedFilter;)V
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

    iget-object v2, v1, Lcom/android/systemui/media/MediaSessionBasedFilter;->sessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, v1, Lcom/android/systemui/media/MediaSessionBasedFilter;->sessionListener:Lcom/android/systemui/media/MediaSessionBasedFilter$sessionListener$1;

    invoke-virtual {v2, v1, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    iget-object v1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->sessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$handleControllersChanged(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/util/List;)V

    return-void
.end method
