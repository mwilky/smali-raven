.class public final Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;
.super Ljava/lang/Object;
.source "ForegroundServiceSectionController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForegroundServiceSectionController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForegroundServiceSectionController.kt\ncom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,170:1\n1013#2:171\n1819#2,2:172\n*E\n*S KotlinDebug\n*F\n+ 1 ForegroundServiceSectionController.kt\ncom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController\n*L\n146#1:171\n146#1,2:172\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final entries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entriesView:Landroid/view/View;

.field private final entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final featureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;)V
    .locals 1

    const-string v0, "entryManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->featureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

    const-string v0, "FgsSectionController"

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;->isForegroundServiceDismissalEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationRemoveInterceptor(Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$addEntry(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->addEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static final synthetic access$getEntries$p(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$removeEntry(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->removeEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static final synthetic access$shouldInterceptRemoval(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->shouldInterceptRemoval(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$update(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->update()V

    return-void
.end method

.method private final addEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final removeEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private final shouldInterceptRemoval(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    if-ne p3, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, p1

    :goto_2
    const/16 v3, 0x8

    if-eq p3, v3, :cond_3

    const/16 v3, 0x9

    :cond_3
    const/16 v3, 0xc

    if-ne p3, v3, :cond_4

    move p3, p1

    goto :goto_3

    :cond_4
    move p3, v0

    :goto_3
    if-nez p2, :cond_5

    return v0

    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->hasEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->addEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->update()V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string p2, "FgsSectionController.onNotificationRemoveRequested"

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    return p1

    :cond_7
    if-nez v1, :cond_8

    if-eqz p3, :cond_9

    :cond_8
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result p3

    if-nez p3, :cond_9

    return p1

    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->hasEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->removeEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->update()V

    :cond_a
    return v0
.end method

.method private final update()V
    .locals 6

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entriesView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v1, Lcom/android/systemui/R$id;->entry_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$lambda-2$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$lambda-2$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$layout;->foreground_service_dungeon_row:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.android.systemui.statusbar.notification.row.DungeonRow"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/DungeonRow;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/DungeonRow;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/row/DungeonRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entriesView:Landroid/view/View;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entriesView:Landroid/view/View;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ForegroundServiceSectionController is trying to show dismissed fgs notifications without having been initialized!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final createView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const-string v0, "li"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/R$layout;->foreground_service_dungeon:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entriesView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entriesView:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method public final hasEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
