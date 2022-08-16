.class public final Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$updateListeners$1;
.super Ljava/lang/Object;
.source "LargeScreenShadeHeaderController.kt"

# interfaces
.implements Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$updateListeners$1;->this$0:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleCarrierChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$updateListeners$1;->this$0:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlots(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    :goto_0
    return-void
.end method
