.class public Lcom/google/android/systemui/gamedashboard/WidgetContainer;
.super Landroid/widget/LinearLayout;
.source "WidgetContainer.java"


# instance fields
.field private mWidgetCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->mWidgetCount:I

    return-void
.end method


# virtual methods
.method public addWidget(Lcom/google/android/systemui/gamedashboard/WidgetView;)I
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->mWidgetCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->game_menu_widget_spacing:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->mWidgetCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->mWidgetCount:I

    return p1
.end method

.method public getWidgetCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->mWidgetCount:I

    return p0
.end method
