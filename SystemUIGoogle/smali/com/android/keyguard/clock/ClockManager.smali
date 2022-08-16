.class public final Lcom/android/keyguard/clock/ClockManager;
.super Ljava/lang/Object;
.source "ClockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/clock/ClockManager$AvailableClocks;,
        Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;
    }
.end annotation


# instance fields
.field public final mBuiltinClocks:Ljava/util/ArrayList;

.field public final mContentObserver:Lcom/android/keyguard/clock/ClockManager$1;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

.field public final mCurrentUserObserver:Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;

.field public final mDockEventListener:Lcom/android/keyguard/clock/ClockManager$2;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public final mHeight:I

.field public mIsDocked:Z

.field public final mListeners:Landroid/util/ArrayMap;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field public final mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

.field public final mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/ContentResolver;Lcom/android/systemui/settings/CurrentUserObservable;Lcom/android/keyguard/clock/SettingsWrapper;Lcom/android/systemui/dock/DockManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/clock/ClockManager$1;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/clock/ClockManager$1;-><init>(Lcom/android/keyguard/clock/ClockManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Lcom/android/keyguard/clock/ClockManager$1;

    new-instance v0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObserver:Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/keyguard/clock/ClockManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/ClockManager$2;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockEventListener:Lcom/android/keyguard/clock/ClockManager$2;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object p5, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p7, p0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    iput-object p6, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    iput-object p8, p0, Lcom/android/keyguard/clock/ClockManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    new-instance p3, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-direct {p3, p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p3, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda1;

    const/4 p5, 0x0

    invoke-direct {p3, p1, p2, p5, p4}, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/keyguard/clock/ClockManager;->mWidth:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/keyguard/clock/ClockManager;->mHeight:I

    return-void
.end method


# virtual methods
.method public addBuiltinClock(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/ClockPlugin;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContentObserver()Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Lcom/android/keyguard/clock/ClockManager$1;

    return-object p0
.end method

.method public isDocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/clock/ClockManager;->mIsDocked:Z

    return p0
.end method

.method public final reload()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
