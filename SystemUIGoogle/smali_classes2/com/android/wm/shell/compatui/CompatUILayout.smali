.class public Lcom/android/wm/shell/compatui/CompatUILayout;
.super Landroid/widget/LinearLayout;
.source "CompatUILayout.java"


# instance fields
.field private mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;


# direct methods
.method public static synthetic $r8$lambda$1it1P_hGr4xZKd4M3Ft59k3UX3k(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->lambda$onFinishInflate$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ofNDtbRZaHlLRKN5OFYOCz9Yx58(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->lambda$onFinishInflate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wSh5_8V7fChwQigmFTw6zulKYn0(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/compatui/CompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/compatui/CompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/compatui/CompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->onRestartButtonClicked()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->onRestartButtonLongClicked()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onFinishInflate$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->setSizeCompatHintVisibility(Z)V

    return-void
.end method


# virtual methods
.method inject(Lcom/android/wm/shell/compatui/CompatUIWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_restart_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/android/wm/shell/R$id;->compat_mode_hint_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/android/wm/shell/R$string;->restart_button_description:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->relayout()V

    return-void
.end method

.method setSizeCompatHintVisibility(Z)V
    .locals 1

    sget v0, Lcom/android/wm/shell/R$id;->size_compat_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
