.class public final Lcom/google/android/systemui/columbus/ColumbusContentObserver;
.super Landroid/database/ContentObserver;
.source "ColumbusContentObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;
    }
.end annotation


# instance fields
.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final settingsUri:Landroid/net/Uri;

.field private final userTracker:Lcom/android/systemui/settings/UserTracker;

.field private final userTrackerCallback:Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/ContentResolverWrapper;",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p6}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->callback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->executor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTrackerCallback:Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;-><init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->callback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getSettingsUri$p(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static final synthetic access$updateContentObserver(Lcom/google/android/systemui/columbus/ColumbusContentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->updateContentObserver()V

    return-void
.end method

.method private final updateContentObserver()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public final activate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTrackerCallback:Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/settings/UserTracker;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->updateContentObserver()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "uri"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
