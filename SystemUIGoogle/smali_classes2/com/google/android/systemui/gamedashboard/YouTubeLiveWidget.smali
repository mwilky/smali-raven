.class public Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;
.super Ljava/lang/Object;
.source "YouTubeLiveWidget.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

.field private final mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;


# direct methods
.method public static synthetic $r8$lambda$ZbGi5NuiG7vDfZD7xE5oEKRVnEA(Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->lambda$update$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/WidgetView;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->game_menu_widget:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/WidgetView;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;-><init>(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/WidgetView;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)V

    return-object v0
.end method

.method private static hasYouTubeLiveStream(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.youtube.intent.action.CREATE_LIVE_STREAM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$update$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->onYouTubeLiveStreamWidgetClicked(Ljava/lang/String;)V

    return-void
.end method

.method private onYouTubeLiveStreamWidgetClicked(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_YOUTUBE_LIVE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.youtube.intent.action.CREATE_LIVE_STREAM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "android-app"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "GAME_PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to query application info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "YouTubeLiveWidget"

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GAME_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "CAPTURE_MODE"

    const-string v1, "SCREEN"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getView()Lcom/google/android/systemui/gamedashboard/WidgetView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    return-object p0
.end method

.method public update(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->hasYouTubeLiveStream(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_youtube_live_logo:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->game_menu_youtube_live_stream_widget_title:I

    sget v2, Lcom/android/systemui/R$string;->game_menu_youtube_live_stream_widget_description:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/drawable/Drawable;IILandroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/WidgetView;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_youtube_live_logo:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->game_menu_youtube_live_stream_widget_title:I

    sget v3, Lcom/android/systemui/R$string;->game_menu_youtube_live_stream_widget_description:I

    new-instance v4, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/drawable/Drawable;IILandroid/view/View$OnClickListener;)V

    return-void
.end method
