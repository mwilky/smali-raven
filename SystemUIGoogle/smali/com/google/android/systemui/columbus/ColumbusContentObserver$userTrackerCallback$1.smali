.class public final Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "ColumbusContentObserver.kt"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusContentObserver;-><init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(I)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object v1, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v3}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v3

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->callback:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
