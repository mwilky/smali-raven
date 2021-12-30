.class Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListWithEntrySummaryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;)V
    .locals 1

    invoke-virtual {p3}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f1500d8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0d05c1

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0d057b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->access$000(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0d0474

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    iget-object p0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-object p2
.end method