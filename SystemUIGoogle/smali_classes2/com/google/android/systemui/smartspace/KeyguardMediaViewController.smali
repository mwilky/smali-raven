.class public final Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;
.super Ljava/lang/Object;
.source "KeyguardMediaViewController.kt"


# instance fields
.field private artist:Ljava/lang/CharSequence;

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final context:Landroid/content/Context;

.field private final mediaComponent:Landroid/content/ComponentName;

.field private final mediaListener:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;

.field private final mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field private smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

.field private title:Ljava/lang/CharSequence;

.field private final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private userTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plugin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p5, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance p2, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaListener:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;

    new-instance p2, Landroid/content/ComponentName;

    const-class p3, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-direct {p2, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static final synthetic access$getMediaListener$p(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaListener:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;

    return-object p0
.end method

.method public static final synthetic access$getMediaManager$p(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)Lcom/android/systemui/statusbar/NotificationMediaManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-object p0
.end method

.method public static final synthetic access$reset(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->reset()V

    return-void
.end method

.method public static synthetic getSmartspaceView$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getSmartspaceView()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    return-object p0
.end method

.method public final getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public final init()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    new-instance v1, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v1, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;-><init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->userTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-void
.end method

.method public final setSmartspaceView(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    return-void
.end method

.method public final updateMediaInfo(Landroid/media/MediaMetadata;I)V
    .locals 4

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->reset()V

    return-void

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->music_controls_no_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    move-object p1, p2

    goto :goto_1

    :cond_3
    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Landroid/app/smartspace/SmartspaceAction$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceMediaTitle"

    invoke-direct {p1, v1, v0}, Landroid/app/smartspace/SmartspaceAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/smartspace/SmartspaceAction$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/app/smartspace/SmartspaceAction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/smartspace/SmartspaceAction$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/smartspace/SmartspaceAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction$Builder;->build()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->userTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    new-instance v1, Landroid/app/smartspace/SmartspaceTarget$Builder;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaComponent:Landroid/content/ComponentName;

    const-string v3, "deviceMedia"

    invoke-direct {v1, v3, v2, v0}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setHeaderAction(Landroid/app/smartspace/SmartspaceAction;)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->getSmartspaceView()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object p2, p1

    :goto_2
    if-nez p2, :cond_7

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->reset()V

    :cond_7
    return-void

    :cond_8
    const-string p0, "userTracker"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method
