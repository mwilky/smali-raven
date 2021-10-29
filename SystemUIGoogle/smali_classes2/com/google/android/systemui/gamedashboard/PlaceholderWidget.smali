.class public Lcom/google/android/systemui/gamedashboard/PlaceholderWidget;
.super Ljava/lang/Object;
.source "PlaceholderWidget.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/WidgetView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/PlaceholderWidget;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/PlaceholderWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    const/4 p0, 0x4

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/google/android/systemui/gamedashboard/PlaceholderWidget;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->game_menu_widget:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/WidgetView;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/PlaceholderWidget;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/PlaceholderWidget;-><init>(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/WidgetView;)V

    return-object v0
.end method


# virtual methods
.method public getView()Lcom/google/android/systemui/gamedashboard/WidgetView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/PlaceholderWidget;->mWidgetView:Lcom/google/android/systemui/gamedashboard/WidgetView;

    return-object p0
.end method
