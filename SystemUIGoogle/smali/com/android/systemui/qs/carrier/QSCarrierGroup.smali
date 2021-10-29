.class public Lcom/android/systemui/qs/carrier/QSCarrierGroup;
.super Landroid/widget/LinearLayout;
.source "QSCarrierGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method getCarrier1View()Lcom/android/systemui/qs/carrier/QSCarrier;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->carrier1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/carrier/QSCarrier;

    return-object p0
.end method

.method getCarrier2View()Lcom/android/systemui/qs/carrier/QSCarrier;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->carrier2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/carrier/QSCarrier;

    return-object p0
.end method

.method getCarrier3View()Lcom/android/systemui/qs/carrier/QSCarrier;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->carrier3:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/carrier/QSCarrier;

    return-object p0
.end method

.method getCarrierDivider1()Landroid/view/View;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->qs_carrier_divider1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getCarrierDivider2()Landroid/view/View;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->qs_carrier_divider2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getNoSimTextView()Landroid/widget/TextView;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->no_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method
