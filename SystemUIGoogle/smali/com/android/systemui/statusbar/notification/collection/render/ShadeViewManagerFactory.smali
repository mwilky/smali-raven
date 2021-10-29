.class public final Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;
.super Ljava/lang/Object;
.source "ShadeViewManager.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

.field private final notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewBarn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationIconAreaController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;->viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;
    .locals 7

    const-string v0, "listContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;->viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    return-object v0
.end method
