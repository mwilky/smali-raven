.class Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "ChooseSimActivity.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/Dividable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/ChooseSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisableableItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/ChooseSimActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/ChooseSimActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->this$0:Lcom/android/settings/sim/ChooseSimActivity;

    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    return-void
.end method


# virtual methods
.method public isDividerAllowedAbove()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDividerAllowedBelow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/Item;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0d0560

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d055d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
