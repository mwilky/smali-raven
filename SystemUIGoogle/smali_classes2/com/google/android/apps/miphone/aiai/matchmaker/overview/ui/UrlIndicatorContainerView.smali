.class public Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;
.super Landroid/widget/LinearLayout;
.source "UrlIndicatorContainerView.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private menuActionMode:Landroid/view/ActionMode;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private readyToDrag:Z

.field private final urlContainer:Landroid/widget/LinearLayout;

.field private final urlIndicator:Landroid/widget/ImageButton;

.field private final urlText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;->readyToDrag:Z

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;->context:Landroid/content/Context;

    sget p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/R$layout;->url_container:I

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;->urlContainer:Landroid/widget/LinearLayout;

    sget p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/R$id;->url_text:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;->urlText:Landroid/widget/TextView;

    sget p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/R$id;->url_indicator:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;->urlIndicator:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;->menuActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;->menuActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method
