.class public Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;
.super Landroid/app/Activity;
.source "TvNotificationPanelActivity.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;


# instance fields
.field private final mBlurConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

.field private mNotificationPlaceholder:Landroid/view/View;

.field private mPanelAlreadyOpen:Z

.field private mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

.field private final mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;


# direct methods
.method public static synthetic $r8$lambda$meT41tAubTPnqaDlSOTdhgwe5zI(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->enableBlur(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mPanelAlreadyOpen:Z

    new-instance v0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mBlurConsumer:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    return-void
.end method

.method private enableBlur(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->tv_notification_blur_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/android/systemui/R$color;->tv_notification_blur_background_color:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/android/systemui/R$color;->tv_notification_default_background_color:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    :goto_0
    return-void
.end method

.method private maybeClosePanel(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.CLOSE_NOTIFICATION_HANDLER_PANEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mPanelAlreadyOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.app.action.TOGGLE_NOTIFICATION_HANDLER_PANEL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public notificationsUpdated(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;->setNotifications(Landroid/util/SparseArray;)V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationPlaceholder:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mBlurConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->maybeClosePanel(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mPanelAlreadyOpen:Z

    sget p1, Lcom/android/systemui/R$layout;->tv_notification_panel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/android/systemui/R$id;->no_tv_notifications:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationPlaceholder:Landroid/view/View;

    new-instance p1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    sget p1, Lcom/android/systemui/R$id;->notifications_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

    sget v0, Lcom/android/systemui/R$dimen;->tv_notification_panel_width:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setColumnWidth(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->setTvNotificationListener(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->getCurrentNotifications()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->notificationsUpdated(Landroid/util/SparseArray;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->setTvNotificationListener(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mBlurConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->maybeClosePanel(Landroid/content/Intent;)Z

    return-void
.end method
