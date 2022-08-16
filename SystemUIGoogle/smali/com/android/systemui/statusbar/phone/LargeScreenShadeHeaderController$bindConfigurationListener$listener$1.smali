.class public final Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$bindConfigurationListener$listener$1;
.super Ljava/lang/Object;
.source "LargeScreenShadeHeaderController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$bindConfigurationListener$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$bindConfigurationListener$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->clock:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSizeFromStyle(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$bindConfigurationListener$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->date:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSizeFromStyle(Landroid/widget/TextView;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$bindConfigurationListener$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsCarrierGroup:Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    const v0, 0x7f0b0491

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSizeFromStyle(Landroid/widget/TextView;)V

    const v0, 0x7f0b0163

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/carrier/QSCarrier;

    iget-object v0, v0, Lcom/android/systemui/qs/carrier/QSCarrier;->mCarrierText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSizeFromStyle(Landroid/widget/TextView;)V

    const v0, 0x7f0b0164

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/carrier/QSCarrier;

    iget-object v0, v0, Lcom/android/systemui/qs/carrier/QSCarrier;->mCarrierText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSizeFromStyle(Landroid/widget/TextView;)V

    const v0, 0x7f0b0165

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/carrier/QSCarrier;

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mCarrierText:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/systemui/FontSizeUtils;->updateFontSizeFromStyle(Landroid/widget/TextView;)V

    return-void
.end method
