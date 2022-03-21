.class public Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;
.super Landroid/widget/BaseAdapter;
.source "SupportedLinksAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWrapperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$uZUSqalqZUM-MTKDx37lywSkRHQ(Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;Landroid/widget/CheckedTextView;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->lambda$getView$0(Landroid/widget/CheckedTextView;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$getView$0(Landroid/widget/CheckedTextView;ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->toggle()V

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f060272

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x1020014

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    invoke-virtual {v0}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->isEnabled()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    invoke-virtual {v0}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->isChecked()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    new-instance v0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;Landroid/widget/CheckedTextView;I)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
