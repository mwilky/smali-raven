.class public abstract Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;
.super Ljava/lang/Object;
.source "MediaTttChipControllerCommon.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/systemui/media/taptotransfer/common/ChipInfoCommon;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public cancelChipViewTimeout:Ljava/lang/Runnable;

.field public final chipLayoutRes:I

.field public chipView:Landroid/view/ViewGroup;

.field public final context:Landroid/content/Context;

.field public final logger:Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final powerManager:Landroid/os/PowerManager;

.field public final tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

.field public final viewUtil:Lcom/android/systemui/util/view/ViewUtil;

.field public final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation
.end field

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;Landroid/os/PowerManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->logger:Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;

    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->windowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    iput-object p5, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p6, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    iput-object p7, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->powerManager:Landroid/os/PowerManager;

    iput p8, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->chipLayoutRes:I

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p2, 0x31

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 p2, 0x7e4

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p2, 0x20

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string p2, "Media Transfer Chip View"

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p2, -0x3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final displayChip(Lcom/android/systemui/media/taptotransfer/common/ChipInfoCommon;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->chipView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->chipLayoutRes:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->chipView:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->chipView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->updateChipView(Lcom/android/systemui/media/taptotransfer/common/ChipInfoCommon;Landroid/view/ViewGroup;)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    sget-object v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommonKt;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon$displayChip$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon$displayChip$1;-><init>(Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->callbacks:Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->callbacks:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/gesture/TapGestureDetector;->startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->chipView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const-string v4, "com.android.systemui:media_tap_to_transfer_activated"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->cancelChipViewTimeout:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon$displayChip$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon$displayChip$2;-><init>(Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;)V

    invoke-interface {p1}, Lcom/android/systemui/media/taptotransfer/common/ChipInfoCommon;->getTimeoutMs()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->cancelChipViewTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method public getIconSize(Z)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeChip(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->chipView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->logger:Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;

    iget-object v1, v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v0, v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;->deviceTypeTag:Ljava/lang/String;

    const-string v2, "MediaTtt"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v3, Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger$logChipRemoval$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger$logChipRemoval$2;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    sget-object v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommonKt;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->chipView:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->chipView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->cancelChipViewTimeout:Ljava/lang/Runnable;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public final setIcon$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 4

    const v0, 0x7f0b00ab

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/CachingIconView;

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommonKt;->TAG:Ljava/lang/String;

    const-string v2, "Cannot find package "

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->context:Landroid/content/Context;

    const v0, 0x7f13046c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080484

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->context:Landroid/content/Context;

    const v2, 0x1010036

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 v1, 0x0

    new-instance v2, Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    invoke-direct {v2, p2, v0, v1}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    move-object v0, v2

    :goto_0
    iget-boolean p2, v0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    invoke-virtual {p0, p2}, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->getIconSize(Z)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/CachingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    if-nez p4, :cond_2

    iget-object p4, v0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->iconName:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1, p4}, Lcom/android/internal/widget/CachingIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_3

    iget-object p3, v0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract updateChipView(Lcom/android/systemui/media/taptotransfer/common/ChipInfoCommon;Landroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation
.end method
